(* ll ir compilation -------------------------------------------------------- *)
open Ll
open Llutil
open X86
open Datastructures

(* allocated llvmlite function bodies --------------------------------------- *)

module Alloc = struct
  type loc =
    | LVoid
    | LReg of X86.reg
    | LStk of int
    | LLbl of X86.lbl

  type operand = Null | Const of int64 | Gid of X86.lbl | Loc of loc
  type insn =
    | ILbl of loc
    | PMov of (loc * ty * operand) list
    | Binop of loc * bop * ty * operand * operand
    | Alloca of loc * ty
    | Load of loc * ty * operand
    | Store of ty * operand * operand
    | Icmp of loc * Ll.cnd * ty * operand * operand
    | Call of loc * ty * operand * (ty * operand) list
    | Bitcast of loc * ty * operand * ty
    | Gep of loc * ty * operand * operand list
    | Ret of ty * operand option
    | Br of loc
    | Cbr of operand * loc * loc

  let str_loc = function
    | LVoid -> "LVoid" | LReg r -> X86.string_of_reg r
    | LStk n -> Printf.sprintf "LStk %d" n | LLbl l -> l
  let str_operand = function
    | Null -> "null" | Const _ -> "Const _" | Gid l -> l | Loc l -> str_loc l

  module LocSet = Set.Make (struct type t = loc let compare = compare end)
  module UidSet = Datastructures.UidS
  type fbody = (insn * LocSet.t) list

  let map_operand f g : Ll.operand -> operand = function
    | Null -> Null | Const i -> Const i | Gid x -> Gid (g x) | Id u -> Loc (f u)
  let map_insn f g : uid * Ll.insn -> insn =
    let mo = map_operand f g in function
    | x, Binop (b,t,o,o') -> Binop (f x, b,t,mo o,mo o') | x, Alloca t -> Alloca (f x, t)
    | x, Load (t,o) -> Load (f x, t, mo o) | _, Store (t,o,o') -> Store (t, mo o, mo o')
    | x, Icmp (c,t,o,o') -> Icmp (f x, c, t, mo o, mo o')
    | x, Call (t,o,args) -> Call (f x, t, mo o, List.map (fun (t,o) -> t, mo o) args)
    | x, Bitcast (t,o,t') -> Bitcast (f x, t, mo o, t') | x, Gep (t,o,is) -> Gep (f x, t, mo o, List.map mo is)
  let map_terminator f g : uid * Ll.terminator -> insn =
    let mo = map_operand f g in function
    | _, Ret (t,None) -> Ret (t, None) | _, Ret (t,Some o) -> Ret (t, Some (mo o))
    | _, Br l -> Br (f l) | _, Cbr (o,l,l') -> Cbr (mo o,f l,f l')
  let map_lset f (s:UidSet.t) : LocSet.t = UidSet.fold (fun x t -> LocSet.add (f x) t) s LocSet.empty
  let of_block (f:Ll.uid -> loc) (g:Ll.gid -> X86.lbl) (live_in:uid -> UidSet.t) (b:Ll.block) : fbody =
    List.map (fun (u,i) -> map_insn f g (u,i), map_lset f @@ live_in u) b.insns
    @ let x,t = b.term in [map_terminator f g (x,t), map_lset f @@ live_in x]
  let of_lbl_block f g live_in (l,b:Ll.lbl * Ll.block) : fbody =
    (ILbl (f l), map_lset f @@ live_in l)::of_block f g live_in b
  let of_cfg (f:Ll.uid -> loc) (g:Ll.gid -> X86.lbl) (live_in:uid -> UidSet.t) (e,bs:Ll.cfg) : fbody =
    List.(flatten @@ of_block f g live_in e :: map (of_lbl_block f g live_in) bs)
end

module LocSet = Alloc.LocSet
module UidSet = Datastructures.UidS
module UidM = Datastructures.UidM

let str_locset (lo:LocSet.t) : string = String.concat " " (List.map Alloc.str_loc (LocSet.elements lo))
type x86elt = | I of X86.ins | L of (X86.lbl * bool)
type x86stream = x86elt list
let lift : X86.ins list -> x86stream = List.rev_map (fun i -> I i)
let ( >@ ) x y = y @ x
let ( >:: ) x y = y :: x
let prog_of_x86stream : x86stream -> X86.prog =
  let rec loop p iis = function
    | [] -> (match iis with [] -> p | _ -> failwith "stream has no initial label")
    | (I i)::s' -> loop p (i::iis) s'
    | (L (l,global))::s' -> loop ({ lbl=l; global; asm=Text iis }::p) [] s'
  in loop [] []

type layout = { uid_loc : uid -> Alloc.loc; spill_bytes : int }
type liveness = Liveness.liveness

let caller_save : LocSet.t =
  [ Rdi; Rsi; Rdx; Rcx; R09; R08; Rax; R10; R11 ]
  |> List.map (fun r -> Alloc.LReg r) |> LocSet.of_list
let callee_save : LocSet.t =
  [ Rbx; R12; R13; R14; R15 ]
  |> List.map (fun r -> Alloc.LReg r) |> LocSet.of_list
let arg_reg : int -> X86.reg option = function
  | 0 -> Some Rdi | 1 -> Some Rsi | 2 -> Some Rdx | 3 -> Some Rcx
  | 4 -> Some R08 | 5 -> Some R09 | _ -> None
let arg_loc (n:int) : Alloc.loc = match arg_reg n with Some r -> Alloc.LReg r | None -> Alloc.LStk (n-4)

let alloc_fdecl (layout:layout) (liveness:liveness) (f:Ll.fdecl) : Alloc.fbody =
  let dst = List.map layout.uid_loc f.f_param in
  let tdst = List.combine (fst f.f_ty) dst in
  let movs = List.mapi (fun i (t,x) -> x, t, Alloc.Loc (arg_loc i)) tdst in
  (Alloc.PMov movs, LocSet.of_list dst) :: Alloc.of_cfg layout.uid_loc Platform.mangle liveness.live_in f.f_cfg

let compile_operand : Alloc.operand -> X86.operand =
  let open Alloc in function
  | Null -> Asm.(~$0) | Const i -> Asm.(Imm (Lit i)) | Gid l -> Asm.(~$$l)
  | Loc LVoid -> failwith "compiling uid without location"
  | Loc (LStk i) -> Asm.(Ind3 (Lit (Int64.of_int @@ i * 8), Rbp))
  | Loc (LReg r) -> Asm.(~%r) | Loc (LLbl l) -> Asm.(Ind1 (Lbl l))

let emit_mov (src:X86.operand) (dst:X86.operand) : x86stream =
  let open X86 in match src, dst with
  | Imm (Lbl l), Reg _ -> lift Asm.[ Leaq, [Ind3 (Lbl l, Rip); dst ] ]
  | Imm (Lbl l), _ -> lift Asm.[ Leaq, [Ind3 (Lbl l, Rip); ~%Rax ]; Movq, [~%Rax; dst ] ]
  | Reg r, Reg r' when r = r' -> [] | Reg _, _ -> lift Asm.[ Movq, [src; dst] ]
  | _, Reg _ -> lift Asm.[ Movq, [src; dst] ] | _, _ -> lift Asm.[ Pushq, [src]; Popq, [dst] ]

let compile_pmov live (ol:(Alloc.loc * Ll.ty * Alloc.operand) list) : x86stream =
  let open Alloc in
  let module OpSet = Set.Make (struct type t = operand let compare = compare end) in
  let ol' = List.filter (fun (x, _, o) -> Loc x <> o && LocSet.mem x live) ol in
  let rec loop outstream ol =
    let srcs = List.fold_left (fun s (_, _, o) -> OpSet.add o s) OpSet.empty ol in
    match List.partition (fun (x, _, o) -> OpSet.mem (Loc x) srcs) ol with
    | [], [] -> outstream
    | (x,_,o)::ol', [] ->
       let os = loop (outstream >:: I Asm.( Pushq, [compile_operand o])) ol' in
       os >:: I Asm.( Popq, [compile_operand (Loc x)] )
    | ol', ready ->
      loop (List.fold_left (fun os (x,_,o) -> os >@ emit_mov (compile_operand o) (compile_operand (Loc x))) outstream ready) ol'
  in loop [] ol'

let compile_call live (fo:Alloc.operand) (os:(ty * Alloc.operand) list) : x86stream =
  let oreg, ostk, _ =
    List.fold_left (fun (oreg, ostk, i) (t, o) ->
        match arg_reg i with
        | Some r -> (Alloc.LReg r, t, o)::oreg, ostk, i+1
        | None -> oreg, o::ostk, i+1
      ) ([], [], 0) os in
  let nstack = List.length ostk in
  let live' = LocSet.of_list @@ List.map (fun (r,_,_) -> r) oreg in
  lift (List.map (fun o -> Pushq, [compile_operand o]) ostk)
  >@ compile_pmov (LocSet.union live live') oreg
  >:: I Asm.( Callq, [compile_operand fo] )
  >@ lift (if nstack <= 0 then [] else Asm.[ Addq, [~$(nstack * 8); ~%Rsp] ])

let rec size_ty tdecls t : int =
  begin match t with
    | Void | I8 | Fun _ -> 0 | I1 | I64 | Ptr _ -> 8
    | Struct ts -> List.fold_left (fun acc t -> acc + (size_ty tdecls t)) 0 ts
    | Array (n, t) -> n * (size_ty tdecls t) | Namedt id -> size_ty tdecls (List.assoc id tdecls)
  end
let index_into tdecls (ts:ty list) (n:int) : int * ty =
  let rec loop ts n acc =
    begin match (ts, n) with
      | (u::_, 0) -> (acc, u) | (u::us, n) -> loop us (n-1) (acc + (size_ty tdecls u))
      | _ -> failwith "index_into encountered bogus index"
    end
  in loop ts n 0
let imm_of_int (n:int) = Imm (Lit (Int64.of_int n))
let compile_getelementptr tdecls (t:Ll.ty) (o:Alloc.operand) (path: Alloc.operand list) : x86stream  =
  let rec loop ty path (code : x86stream) =
    match (ty, path) with
    | (_, []) -> code
    | (Struct ts, Alloc.Const n::rest) ->
       let (offset, u) = index_into tdecls ts (Int64.to_int n) in
       loop u rest @@ (code >:: I Asm.(Addq, [~$offset; ~%Rax]))
    | (Array(_, u), Alloc.Const n::rest) ->
       let offset = (size_ty tdecls u) * (Int64.to_int n) in
       loop u rest @@ (code >:: I Asm.(Addq, [~$offset; ~%Rax]))
    | (Array(_, u), offset_op::rest) ->
      loop u rest @@ (code >@ ([I Asm.(Movq, [~%Rax; ~%Rcx])] >@ (emit_mov (compile_operand offset_op) (Reg Rax)) >@
         [I Asm.(Imulq, [imm_of_int @@ size_ty tdecls u; ~%Rax])] >@ [I Asm.(Addq, [~%Rcx; ~%Rax])]))
    | (Namedt t, p) -> loop (List.assoc t tdecls) p code
    | _ -> failwith "compile_gep encountered unsupported getelementptr data" in
  match t with
  | Ptr t -> loop (Array(0, t)) path (emit_mov (compile_operand o) (Reg Rax))
  | _ -> failwith "compile_gep got incorrect parameters"

let compile_fbody tdecls (af:Alloc.fbody) : x86stream =
  let rec loop (af:Alloc.fbody) (outstream:x86stream) : x86stream =
    let cb = function | Ll.Add -> Addq | Ll.Sub -> Subq | Ll.Mul -> Imulq | Ll.Shl -> Shlq
      | Ll.Lshr -> Shrq | Ll.Ashr -> Sarq | Ll.And -> Andq | Ll.Or -> Orq | Ll.Xor -> Xorq in
    let cc = function | Ll.Eq -> Set Eq | Ll.Ne -> Set Neq | Ll.Slt -> Set Lt
      | Ll.Sle -> Set Le | Ll.Sgt -> Set Gt | Ll.Sge -> Set Ge in
    let co = compile_operand in
    let open Alloc in
    match af with
    | [] -> outstream
    | (ILbl (LLbl l), _)::rest -> loop rest @@ (outstream >:: L (l, false) )
    | (PMov ol, live)::rest -> loop rest @@ (outstream >@ compile_pmov live ol)
    | (Icmp (LVoid, _,_,_,_), _)::rest | (Binop (LVoid, _,_,_,_), _)::rest
    | (Alloca (LVoid, _), _)::rest | (Bitcast (LVoid, _,_,_), _)::rest
    | (Load (LVoid, _,_), _)::rest | (Gep (LVoid, _,_,_), _)::rest -> loop rest outstream
    | (Icmp (x, c,_,Loc (LReg o),o'), _)::rest ->
       loop rest @@ (outstream >@ lift Asm.[ Cmpq, [co o'; ~%o]; cc c, [co (Loc x)]; Andq, [~$1; co (Loc x)] ] )
    | (Icmp (x, c,_,o,o'), _)::rest ->
       loop rest @@ (outstream >@ emit_mov (co o) (Reg Rax) >@ lift Asm.[ Cmpq, [co o'; ~%Rax]; cc c, [co (Loc x)]; Andq, [~$1; co (Loc x)] ] )
    | (Binop (x, bop,_,o,o'), _)::rest when (bop = Shl || bop = Lshr || bop = Ashr) ->
       loop rest @@ (outstream >@ emit_mov (co o) (Reg Rax) >@ emit_mov (co o') (Reg Rcx) >@ lift Asm.[ cb bop, [~%Rcx; ~%Rax]; Movq, [~%Rax; co (Loc x)] ] )
    | (Binop (LReg r, bop,_,o,o'), _)::rest when Loc (LReg r) = o' && (bop = Add || bop = Mul || bop = And || bop = Or || bop = Xor) ->
      loop rest @@ (outstream >:: I Asm.( cb bop, [co o; ~%r] ) )
    | (Binop (LReg r, b,_,o,o'), _)::rest when Loc (LReg r) <> o' ->
       loop rest @@ (outstream >@ emit_mov (co o) (Reg r) >:: I Asm.( cb b, [co o'; ~%r] ) )
    | (Binop (x, b,_,o,o'), _)::rest ->
       loop rest @@ (outstream >@ emit_mov (co o) (Reg Rax) >@ lift Asm.[ cb b, [co o'; ~%Rax]; Movq, [~%Rax; co (Loc x)] ] )
    | (Alloca (x, at), _)::rest ->
       loop rest @@ (outstream >@ lift Asm.[ Subq, [~$(size_ty tdecls at); ~%Rsp]; Movq, [~%Rsp; co (Loc x)] ] )
    | (Bitcast (x, _,o,_), _)::rest ->
       loop rest @@ (outstream >@ emit_mov (co o) (Reg Rax) >:: I Asm.( Movq, [~%Rax; co (Loc x)] ) )
    | (Load (LReg x, _, Loc (LReg src)), _)::rest -> loop rest @@ (outstream >:: I Asm.( Movq, [Ind2 src; ~%x] ) )
    | (Load (x, _, src), _)::rest ->
       loop rest @@ (outstream >@ emit_mov (co src) (Reg Rax) >@ lift Asm.[ Movq, [Ind2 Rax; ~%Rax]; Movq, [~%Rax; co (Loc x)] ] )
    | (Store (_,Loc (LReg src),Loc (LReg dst)), _)::rest -> loop rest @@ (outstream >:: I Asm.( Movq, [~%src; Ind2 dst] ) )
    | (Store (_,src,dst), _)::rest ->
       loop rest @@ (outstream >@ emit_mov (co src) (Reg Rax) >@ emit_mov (co dst) (Reg Rcx) >:: I Asm.( Movq, [~%Rax; Ind2 Rcx] ) )
    | (Gep (x, at,o,os), _)::rest ->
       loop rest @@ (outstream >@ compile_getelementptr tdecls at o os >:: I Asm.( Movq, [~%Rax; co (Loc x)] ) )
    | (Call (x, t,fo,os), live)::rest ->
      let fptr_op, init_fp, restore_fp =
        begin match fo with
          | Loc (LReg (Rdi | Rsi | Rdx | Rcx | R08 | R09)) ->
            Loc (LReg R15), [I Asm.(Pushq, [~%R15])] >@ (emit_mov (co fo) (Reg R15)), [I Asm.(Popq, [~%R15])]
          | _ -> fo, [], [] end in
      let save = LocSet.(elements @@ inter (remove x live) caller_save) in
      loop rest @@ (outstream >@ init_fp >@ lift (List.rev_map (fun x -> Pushq, [co (Loc x)]) save)
         >@ compile_call live fptr_op os >@ lift (List.map (fun x -> Popq, [co (Loc x)]) save) >@ restore_fp
         >@ (if t = Ll.Void || x = LVoid then [] else lift Asm.[ Movq, [~%Rax; co (Loc x)] ]) )
    | (Ret (_,None), _)::rest ->
       loop rest @@ (outstream >@ lift Asm.[ Movq, [~%Rbp; ~%Rsp]; Popq, [~%Rbp]; Retq, [] ] )
    | (Ret (_,Some o), _)::rest ->
       loop rest @@ (outstream >@ emit_mov (co o) (Reg Rax) >@ lift Asm.[ Movq, [~%Rbp; ~%Rsp]; Popq, [~%Rbp]; Retq, [] ] )
    | (Br (LLbl l), _)::rest -> loop rest @@ (outstream >:: I Asm.( Jmp, [~$$l] ) )
    | (Cbr (Const i,(LLbl l1),(LLbl l2)), _)::rest ->
       loop rest @@ (outstream >:: (if i <> 0L then I Asm.( Jmp, [~$$l1] ) else I Asm.( Jmp, [~$$l2] ) ) )
    | (Cbr (o,(LLbl l1),(LLbl l2)), _)::rest ->
       loop rest @@ (outstream >@ lift Asm.[ Cmpq, [~$0; co o]; J Neq, [~$$l1]; Jmp, [~$$l2] ] )
    | _ -> failwith "codegen failed to find instruction"
  in loop af []

let fold_fdecl (f_param : 'a -> uid * Ll.ty -> 'a) (f_lbl : 'a -> lbl -> 'a)
    (f_insn : 'a -> uid * Ll.insn -> 'a) (f_term : 'a -> uid * Ll.terminator -> 'a)
    (init:'a) (f:Ll.fdecl) : 'a =
  let fold_params ps a = List.fold_left f_param a ps in
  let fold_block {insns; term} a = f_term (List.fold_left f_insn a insns) term in
  let fold_lbl_block (l,blk) a = fold_block blk (f_lbl a l) in
  let fold_lbl_blocks bs a = List.fold_left (fun a b -> fold_lbl_block b a) a bs in
  let entry,bs = f.f_cfg in
  init |> fold_params (List.combine f.f_param (fst f.f_ty)) |> fold_block entry |> fold_lbl_blocks bs

let insn_assigns : Ll.insn -> bool = function | Ll.Call (Ll.Void, _, _) | Ll.Store _ -> false | _ -> true

let no_reg_layout (f:Ll.fdecl) (_:liveness) : layout =
  let lo, n_stk =
    fold_fdecl
      (fun (lo, n) (x, _) -> (x, Alloc.LStk (- (n + 1)))::lo, n + 1)
      (fun (lo, n) l -> (l, Alloc.LLbl (Platform.mangle l))::lo, n)
      (fun (lo, n) (x, i) -> if insn_assigns i then (x, Alloc.LStk (- (n + 1)))::lo, n + 1 else (x, Alloc.LVoid)::lo, n)
      (fun (lo, n) (x, _) -> (x, Alloc.LVoid)::lo, n) (* Handle terminator UIDs *)
      ([], 0) f in
  { uid_loc = (fun x -> List.assoc x lo); spill_bytes = 8 * n_stk }

let greedy_layout (f:Ll.fdecl) (live:liveness) : layout =
  let n_arg = ref 0 in let n_spill = ref 0 in
  let spill () = (incr n_spill; Alloc.LStk (- !n_spill)) in
  let alloc_arg () = let res = match arg_loc !n_arg with | Alloc.LReg Rcx -> spill () | x -> x in incr n_arg; res in
  let pal = LocSet.(caller_save |> remove (Alloc.LReg Rax) |> remove (Alloc.LReg Rcx)) in
  let allocate lo uid =
    let loc = try
      let used_locs = UidSet.fold (fun y -> LocSet.add (List.assoc y lo)) (live.live_in uid) LocSet.empty in
      let available_locs = LocSet.diff pal used_locs in
      LocSet.choose available_locs
    with Not_found -> spill () in loc
  in
  let lo = fold_fdecl
      (fun lo (x, _) -> (x, alloc_arg())::lo)
      (fun lo l -> (l, Alloc.LLbl (Platform.mangle l))::lo)
      (fun lo (x, i) -> if insn_assigns i then (x, allocate lo x)::lo else (x, Alloc.LVoid)::lo)
      (fun lo (x, _) -> (x, Alloc.LVoid)::lo) (* Handle terminator UIDs *)
      [] f in
  { uid_loc = (fun x -> List.assoc x lo); spill_bytes = 8 * !n_spill }

let better_layout (f:Ll.fdecl) (live:liveness) : layout =
  let open Alloc in
  let pal = LocSet.(caller_save |> remove (LReg Rax) |> remove (LReg Rcx) |> elements) in
  let k = List.length pal in

  let precolored = ref UidM.empty in
  let initial = ref UidS.empty in
  let all_uids = ref UidS.empty in

  let n_arg = ref 0 in
  let n_spill = ref 0 in
  let spill () = incr n_spill; LStk (- !n_spill) in

  List.iter (fun u ->
    let loc = match arg_loc !n_arg with
              | LReg Rcx -> spill () (* Always spill the RCX argument to avoid clobbering *)
              | l -> l
    in
    precolored := UidM.add u loc !precolored;
    all_uids := UidS.add u !all_uids;
    incr n_arg
  ) f.f_param;

  fold_fdecl
    (fun () _ -> ()) (fun () (l) -> all_uids := UidS.add l !all_uids)
    (fun () (u,_) -> all_uids := UidS.add u !all_uids)
    (fun () (u,_) -> all_uids := UidS.add u !all_uids) () f;
  
  initial := UidS.filter (fun u -> not (UidM.mem u !precolored)) !all_uids;

  let adj = ref UidM.empty in
  let add_edge u v =
    if u <> v then begin
      let u_adj = UidM.find_opt u !adj |> Option.value ~default:UidS.empty in
      let v_adj = UidM.find_opt v !adj |> Option.value ~default:UidS.empty in
      adj := UidM.add u (UidS.add v u_adj) !adj;
      adj := UidM.add v (UidS.add u v_adj) !adj
    end
  in
  UidS.iter (fun u ->
    let live_out = try live.live_out u with Not_found -> UidS.empty in
    UidS.iter (fun v -> add_edge u v) live_out
  ) !all_uids;

  let degrees = ref (UidM.map UidS.cardinal !adj) in
  let get_degree u = UidM.find_opt u !degrees |> Option.value ~default:0 in
  
  let simplify_worklist = ref (UidS.filter (fun u -> get_degree u < k && UidS.mem u !initial) !initial) in
  let spill_worklist = ref (UidS.filter (fun u -> get_degree u >= k && UidS.mem u !initial) !initial) in
  let select_stack = ref [] in

  while not (UidS.is_empty !simplify_worklist && UidS.is_empty !spill_worklist) do
    while not (UidS.is_empty !simplify_worklist) do
      let u = UidS.choose !simplify_worklist in
      simplify_worklist := UidS.remove u !simplify_worklist;
      select_stack := u :: !select_stack;
      let neighbors = UidM.find_opt u !adj |> Option.value ~default:UidS.empty in
      UidS.iter (fun n ->
        let d = get_degree n in
        degrees := UidM.add n (d - 1) !degrees;
        if d = k && UidS.mem n !initial then begin
          spill_worklist := UidS.remove n !spill_worklist;
          simplify_worklist := UidS.add n !simplify_worklist
        end
      ) neighbors
    done;
    if not (UidS.is_empty !spill_worklist) then
      let u_to_spill = UidS.choose !spill_worklist in
      spill_worklist := UidS.remove u_to_spill !spill_worklist;
      select_stack := u_to_spill :: !select_stack;
      let neighbors = UidM.find_opt u_to_spill !adj |> Option.value ~default:UidS.empty in
      UidS.iter (fun n ->
        let d = get_degree n in
        degrees := UidM.add n (d - 1) !degrees;
        if d = k && UidS.mem n !initial then begin
          spill_worklist := UidS.remove n !spill_worklist;
          simplify_worklist := UidS.add n !simplify_worklist
        end
      ) neighbors
  done;

  let colors = ref !precolored in

  List.iter (fun u ->
    let neighbor_colors =
      let neighbors = UidM.find_opt u !adj |> Option.value ~default:UidS.empty in
      UidS.fold (fun n acc ->
        match UidM.find_opt n !colors with
        | Some c -> LocSet.add c acc
        | None -> acc
      ) neighbors LocSet.empty
    in
    let available_colors = List.filter (fun c -> not (LocSet.mem c neighbor_colors)) pal in
    match available_colors with
    | c :: _ -> colors := UidM.add u c !colors
    | [] -> colors := UidM.add u (spill ()) !colors
  ) !select_stack;

  let uid_loc_map = ref !colors in
  fold_fdecl
    (fun () _ -> ())
    (fun () l -> uid_loc_map := UidM.add l (LLbl (Platform.mangle l)) !uid_loc_map)
    (fun () (u,i) -> if not (insn_assigns i) && not (UidM.mem u !uid_loc_map) then uid_loc_map := UidM.add u LVoid !uid_loc_map)
    (fun () (u,_) -> if not (UidM.mem u !uid_loc_map) then uid_loc_map := UidM.add u LVoid !uid_loc_map) () f;

  { uid_loc = (fun u -> try UidM.find u !uid_loc_map with Not_found -> failwith ("no location for " ^ u));
    spill_bytes = 8 * !n_spill }

let trivial_liveness (f:Ll.fdecl) : liveness =
  let s = fold_fdecl (fun s (x, _) -> UidSet.add x s) (fun s l -> UidSet.add l s)
      (fun s (x, _) -> UidSet.add x s)
      (fun s (x,_) -> UidSet.add x s) UidSet.empty f in
  {live_in = (fun _ -> s); live_out = (fun _ -> s)}

let liveness_fn : (Ll.fdecl -> liveness) ref = ref trivial_liveness
let layout_fn : (Ll.fdecl -> liveness -> layout) ref = ref no_reg_layout

let check_layout (lay:layout) (live:liveness) (f:Ll.fdecl) =
  let check_disjoint uid s =
    let loc = lay.uid_loc uid in
    if loc <> LVoid then
      UidSet.iter (fun v -> if v <> uid && loc = (lay.uid_loc v) then
        failwith @@ Printf.sprintf "Invalid layout %s and %s both map to %s" uid v (Alloc.str_loc loc)) s
  in
  let all_uids = fold_fdecl (fun s (x,_) -> UidS.add x s) (fun s l -> UidS.add l s)
    (fun s (x,_) -> UidS.add x s) (fun s (x,_) -> UidS.add x s) UidS.empty f in
  UidSet.iter (fun x ->
      let live_in = try (live.live_in x) with Not_found -> UidS.empty in
      UidSet.iter (fun y -> check_disjoint y live_in) live_in)
    all_uids

let set_liveness name = liveness_fn := match name with
  | "trivial" -> trivial_liveness | "dataflow" -> Liveness.get_liveness | _ -> failwith "impossible arg"
let set_regalloc name = layout_fn := match name with
  | "none" -> no_reg_layout | "greedy" -> greedy_layout | "better" -> better_layout | _ -> failwith "impossible arg"

let compile_fdecl tdecls (g:gid) (f:Ll.fdecl) : x86stream =
  let liveness = !liveness_fn f in
  let layout = !layout_fn f liveness in
  let _ = check_layout layout liveness f in
  let afdecl = alloc_fdecl layout liveness f in
  [L (Platform.mangle g, true)]
  >@ lift Asm.[ Pushq, [~%Rbp]; Movq, [~%Rsp; ~%Rbp] ]
  >@ (if layout.spill_bytes <= 0 then [] else lift Asm.[ Subq, [~$(layout.spill_bytes); ~%Rsp] ])
  >@ (compile_fbody tdecls afdecl)

let rec compile_ginit = function
  | GNull -> [Quad (Lit 0L)] | GGid gid -> [Quad (Lbl (Platform.mangle gid))]
  | GInt c -> [Quad (Lit c)] | GString s -> [Asciz s]
  | GArray gs | GStruct gs -> List.(flatten @@ map compile_gdecl gs)
  | GBitcast (_,g,_) -> compile_ginit g
and compile_gdecl (g:Ll.ty * Ll.ginit) = compile_ginit (snd g)

let compile_prog {tdecls; gdecls; fdecls} : X86.prog =
  let g (lbl, gdecl) = Asm.data (Platform.mangle lbl) (compile_gdecl gdecl) in
  let f (name, fdecl) = prog_of_x86stream @@ compile_fdecl tdecls name fdecl in
  (List.map g gdecls) @ List.(flatten @@ map f fdecls)