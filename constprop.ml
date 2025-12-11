open Ll
open Datastructures

(* The lattice of symbolic constants ---------------------------------------- *)
module SymConst =
  struct
    type t = NonConst           (* Uid may take on multiple values at runtime *)
           | Const of int64     (* Uid will always evaluate to const i64 or i1 *)
           | UndefConst         (* Uid is not defined at the point *)

    let compare s t =
      match (s, t) with
      | (Const i, Const j) -> Int64.compare i j
      | (NonConst, NonConst) | (UndefConst, UndefConst) -> 0
      | (NonConst, _) | (_, UndefConst) -> 1
      | (UndefConst, _) | (_, NonConst) -> -1

    let to_string : t -> string = function
      | NonConst -> "NonConst"
      | Const i -> Printf.sprintf "Const (%LdL)" i
      | UndefConst -> "UndefConst"

    
  end

(* The analysis computes, at each program point, which UIDs in scope will evaluate 
   to integer constants *)
type fact = SymConst.t UidM.t



(* flow function across Ll instructions ------------------------------------- *)
(* - Uid of a binop or icmp with const arguments is constant-out
   - Uid of a binop or icmp with an UndefConst argument is UndefConst-out
   - Uid of a binop or icmp with an NonConst argument is NonConst-out
   - Uid of stores and void calls are UndefConst-out
   - Uid of all other instructions are NonConst-out
 *)
let insn_flow (u,i:uid * insn) (d:fact) : fact =
  let open SymConst in
  let get_const (m:fact) (o:operand) : SymConst.t =
    match o with
    | Const n -> Const n
    | Id x -> UidM.find_or UndefConst m x
    | _ -> NonConst
  in
  let eval_bop (b:bop) (i:int64) (j:int64) : int64 =
    match b with
    | Add  -> Int64.add i j
    | Sub  -> Int64.sub i j
    | Mul  -> Int64.mul i j
    | Shl  -> Int64.shift_left i (Int64.to_int j)
    | Lshr -> Int64.shift_right_logical i (Int64.to_int j)
    | Ashr -> Int64.shift_right i (Int64.to_int j)
    | And  -> Int64.logand i j
    | Or   -> Int64.logor i j
    | Xor  -> Int64.logxor i j
  in
  let eval_cnd (c:cnd) (i:int64) (j:int64) : int64 =
    let cmp = Int64.compare i j in
    let b =
      match c with
      | Eq  -> cmp = 0
      | Ne  -> cmp <> 0
      | Slt -> cmp < 0
      | Sle -> cmp <= 0
      | Sgt -> cmp > 0
      | Sge -> cmp >= 0
    in
    if b then 1L else 0L
  in
  let result_for_binop like_cmp (o1:operand) (o2:operand) : SymConst.t =
    let v1 = get_const d o1 in
    let v2 = get_const d o2 in
    match v1, v2 with
    | NonConst, _ | _, NonConst -> NonConst
    | UndefConst, _ | _, UndefConst -> UndefConst
    | Const i, Const j -> Const (like_cmp i j)
  in
  let res =
    match i with
    | Binop (b, _, o1, o2) ->
        result_for_binop (eval_bop b) o1 o2
    | Icmp (c, _, o1, o2) ->
        result_for_binop (eval_cnd c) o1 o2
    | Store _ ->
        UndefConst
    | Call (Void, _, _) ->
        UndefConst
    | Call _ ->
        NonConst
    | Alloca _
    | Load _
    | Bitcast _
    | Gep _ ->
        NonConst
  in
  UidM.add u res d

(* The flow function across terminators is trivial: they never change const info *)
let terminator_flow (t:terminator) (d:fact) : fact = d

(* module for instantiating the generic framework --------------------------- *)
module Fact =
  struct
    type t = fact
    let forwards = true

    let insn_flow = insn_flow
    let terminator_flow = terminator_flow
    
    let normalize : fact -> fact = 
      UidM.filter (fun _ v -> v != SymConst.UndefConst)

    let compare (d:fact) (e:fact) : int  = 
      UidM.compare SymConst.compare (normalize d) (normalize e)

    let to_string : fact -> string =
      UidM.to_string (fun _ v -> SymConst.to_string v)

    (* The constprop analysis should take the meet over predecessors to compute the
       flow into a node. You may find the UidM.merge function useful *)
    let combine (ds:fact list) : fact = 
      let open SymConst in
      (* Meet operation for the constant-propagation lattice:
         - NonConst is the top element and is absorbing
         - UndefConst is the bottom element and acts as identity when meeting
           with Const values
         - Conflicting Const values yield NonConst *)
      let meet (a:t) (b:t) : t =
        match a, b with
        | NonConst, _ | _, NonConst -> NonConst
        | UndefConst, x | x, UndefConst -> x
        | Const i, Const j ->
            if Int64.compare i j = 0 then Const i else NonConst
      in
      let meet_maps (m1:fact) (m2:fact) : fact =
        UidM.merge
          (fun _ v1 v2 ->
             let v1 = match v1 with Some x -> x | None -> UndefConst in
             let v2 = match v2 with Some x -> x | None -> UndefConst in
             let r = meet v1 v2 in
             if r = UndefConst then None else Some r)
          m1 m2
      in
      match ds with
      | [] -> UidM.empty
      | d::rest -> List.fold_left meet_maps d rest
  end

(* instantiate the general framework ---------------------------------------- *)
module Graph = Cfg.AsGraph (Fact)
module Solver = Solver.Make (Fact) (Graph)

(* expose a top-level analysis operation ------------------------------------ *)
let analyze (g:Cfg.t) : Graph.t =
  (* the analysis starts with every node set to bottom (the map of every uid 
     in the function to UndefConst *)
  let init l = UidM.empty in

  (* the flow into the entry node should indicate that any parameter to the
     function is not a constant *)
  let cp_in = List.fold_right 
    (fun (u,_) -> UidM.add u SymConst.NonConst)
    g.Cfg.args UidM.empty 
  in
  let fg = Graph.of_cfg init cp_in g in
  Solver.solve fg


(* run constant propagation on a cfg given analysis results ----------------- *)
(* HINT: your cp_block implementation will probably rely on several helper 
   functions.                                                                 *)
let run (cg:Graph.t) (cfg:Cfg.t) : Cfg.t =
  let open SymConst in
  

  let cp_block (l:Ll.lbl) (cfg:Cfg.t) : Cfg.t =
    let b = Cfg.block cfg l in
    let open SymConst in

    let subst_operand (m:fact) (o:operand) : operand =
      match o with
      | Id x ->
          begin match UidM.find_opt x m with
          | Some (Const n) -> Const n
          | _ -> o
          end
      | _ -> o
    in

    let subst_insn (u, i : uid * insn) : uid * insn =
      let m_in = Graph.uid_in cg l u in
      let so = subst_operand m_in in
      let i' =
        match i with
        | Binop (b,t,o1,o2) -> Binop (b,t, so o1, so o2)
        | Alloca _ as a -> a
        | Load (t,o) -> Load (t, so o)
        | Store (t,o1,o2) -> Store (t, so o1, so o2)
        | Icmp (c,t,o1,o2) -> Icmp (c,t, so o1, so o2)
        | Call (t,o,args) ->
            let o' = so o in
            let args' = List.map (fun (t,a) -> (t, so a)) args in
            Call (t,o',args')
        | Bitcast (t,o,t') -> Bitcast (t, so o, t')
        | Gep (t,o,os) -> Gep (t, so o, List.map so os)
      in
      (u, i')
    in

    let subst_term (u_t, t : uid * terminator) : uid * terminator =
      let m_in = Graph.uid_in cg l u_t in
      let so = subst_operand m_in in
      let t' =
        match t with
        | Ret (ty, None) -> Ret (ty, None)
        | Ret (ty, Some o) -> Ret (ty, Some (so o))
        | Br _ as br -> br
        | Cbr (o,l1,l2) -> Cbr (so o, l1, l2)
      in
      (u_t, t')
    in

    let insns' = List.map subst_insn b.insns in
    let term' = subst_term b.term in
    let b' = { insns = insns'; term = term' } in
    Cfg.add_block l b' cfg
  in

  LblS.fold cp_block (Cfg.nodes cfg) cfg
