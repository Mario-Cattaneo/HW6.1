(** Dead Code Elimination  *)
open Ll
open Datastructures

let dce_block (lb:uid -> Liveness.Fact.t) 
              (ab:uid -> Alias.fact)
              (b:Ll.block) : Ll.block =
  let is_live live_set u = UidS.mem u live_set in

  let keep_insn (u, i) =
    let live_out = lb u in
    match i with
    | Call _ -> true
    | Store (_, _, op_ptr) ->
        (match op_ptr with
        | Id p ->
            let alias_map = ab u in
            let alias_status = UidM.find_opt p alias_map in
            (match alias_status with
            | Some Alias.SymPtr.Unique -> is_live live_out p
            | _ -> true) (* MayAlias or UndefAlias, be conservative *)
        | _ -> true) (* Non-id pointer, be conservative *)
    | _ -> is_live live_out u
  in

  { b with insns = List.filter keep_insn b.insns }

let run (lg:Liveness.Graph.t) (ag:Alias.Graph.t) (cfg:Cfg.t) : Cfg.t =
  LblS.fold (fun l cfg ->
    let b = Cfg.block cfg l in
    let lb = Liveness.Graph.uid_out lg l in
    let ab = Alias.Graph.uid_in ag l in 
    let b' = dce_block lb ab b in
    Cfg.add_block l b' cfg
  ) (Cfg.nodes cfg) cfg