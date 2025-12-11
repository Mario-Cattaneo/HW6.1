(** Alias Analysis *)

open Ll
open Datastructures

module SymPtr =
  struct
    type t = MayAlias | Unique | UndefAlias
    let compare : t -> t -> int = Stdlib.compare
    let to_string = function
      | MayAlias -> "MayAlias"
      | Unique -> "Unique"
      | UndefAlias -> "UndefAlias"
  end

type fact = SymPtr.t UidM.t

let insn_flow ((u,i):uid * insn) (d:fact) : fact =
  let is_ptr_ty = function Ptr _ -> true | _ -> false in

  (* An operand pointer 'p' escapes if its value is stored into memory or passed to a function. *)
  let d_after_operands =
    match i with
    | Store (ty, Id p, _) when is_ptr_ty ty -> UidM.add p SymPtr.MayAlias d
    | Call (_, _, args) ->
        List.fold_left (fun acc (ty, op) ->
          match op with
          | Id p when is_ptr_ty ty -> UidM.add p SymPtr.MayAlias acc
          | _ -> acc
        ) d args
    | _ -> d
  in

  (* The UID defined by an instruction is MayAlias if it comes from memory, a function, or pointer arithmetic. *)
  match i with
  | Alloca _ -> UidM.add u SymPtr.Unique d_after_operands
  | Load (t, _) | Call (t, _, _) | Bitcast (_, _, t) | Gep (t, _, _) when is_ptr_ty t ->
      UidM.add u SymPtr.MayAlias d_after_operands
  | _ -> UidM.add u SymPtr.UndefAlias d_after_operands

let terminator_flow (t:terminator) (d:fact) : fact = 
  match t with
  | Ret (_, Some (Id p)) -> UidM.add p SymPtr.MayAlias d
  | _ -> d

module Fact =
  struct
    type t = fact
    let forwards = true
    let insn_flow = insn_flow
    let terminator_flow = terminator_flow
    
    let normalize : fact -> fact = UidM.filter (fun _ v -> v != SymPtr.UndefAlias)
    let compare (d:fact) (e:fact) : int = UidM.compare SymPtr.compare (normalize d) (normalize e)
    let to_string : fact -> string = UidM.to_string (fun _ v -> SymPtr.to_string v)

    let combine (ds:fact list) : fact =
      let join_ptr p1_opt p2_opt =
        match p1_opt, p2_opt with
        | None, p | p, None -> p
        | Some SymPtr.Unique, Some SymPtr.Unique -> Some SymPtr.Unique
        | Some _, Some _ -> Some SymPtr.MayAlias
      in
      List.fold_left (UidM.merge (fun _ -> join_ptr)) UidM.empty ds
  end

module Graph = Cfg.AsGraph (Fact)
module Solver = Solver.Make (Fact) (Graph)

let analyze (g:Cfg.t) : Graph.t =
  let init _ = UidM.empty in
  let alias_in = 
    List.fold_right 
      (fun (u,t) -> match t with
                    | Ptr _ -> UidM.add u SymPtr.MayAlias
                    | _ -> fun m -> m) 
      g.Cfg.args UidM.empty 
  in
  let fg = Graph.of_cfg init alias_in g in
  Solver.solve fg