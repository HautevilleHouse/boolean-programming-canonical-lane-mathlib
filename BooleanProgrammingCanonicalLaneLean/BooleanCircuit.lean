import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BooleanProgrammingCanonicalLaneLean

structure BooleanCircuit where
  inputs : Nat
  gates : Nat
  connections : List (Nat × Nat × Nat)  -- (gate, input1, input2)
  outputs : List Nat
  wellFormed : Prop

structure BooleanCircuitEvidence (C : BooleanCircuit) where
  wellFormedClosed : C.wellFormed

def BooleanCircuitClosed (C : BooleanCircuit) : Prop :=
  C.wellFormed

theorem boolean_circuit_closed_from_evidence (C : BooleanCircuit) (E : BooleanCircuitEvidence C) :
    BooleanCircuitClosed C := by
  exact E.wellFormedClosed

end BooleanProgrammingCanonicalLaneLean
end HautevilleHouse