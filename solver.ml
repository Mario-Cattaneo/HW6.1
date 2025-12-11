open Datastructures

module type DFA_GRAPH =
  sig
    module NodeS : SetS
    type node = NodeS.elt
    type fact
    type t
    val preds : t -> node -> NodeS.t
    val succs : t -> node -> NodeS.t
    val nodes : t -> NodeS.t
    val flow : t -> node -> fact -> fact
    val out : t -> node -> fact
    val add_fact : node -> fact -> t -> t
    val to_string : t -> string
    val printer : Format.formatter -> t -> unit
  end

module type FACT =
  sig
    type t
    val combine : t list -> t
    val compare : t -> t -> int
    val to_string : t -> string
  end

module Make (Fact : FACT) (Graph : DFA_GRAPH with type fact := Fact.t) =
  struct
    let solve (g:Graph.t) : Graph.t =
      let worklist = ref (Graph.nodes g) in
      let g_ref = ref g in
      while not (Graph.NodeS.is_empty !worklist) do
        let n = Graph.NodeS.choose !worklist in
        worklist := Graph.NodeS.remove n !worklist;

        let old_out = Graph.out !g_ref n in
        let pred_nodes = Graph.preds !g_ref n in
        let pred_facts = List.map (Graph.out !g_ref) (Graph.NodeS.elements pred_nodes) in
        let in_fact = Fact.combine pred_facts in
        let new_out = Graph.flow !g_ref n in_fact in

        if Fact.compare old_out new_out <> 0 then begin
          g_ref := Graph.add_fact n new_out !g_ref;
          let successors = Graph.succs !g_ref n in
          worklist := Graph.NodeS.union !worklist successors
        end
      done;
      !g_ref
  end