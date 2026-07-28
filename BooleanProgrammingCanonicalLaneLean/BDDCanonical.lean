import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BooleanProgrammingCanonicalLaneLean

structure BDDNode where
  var : Nat
  low : Nat
  high : Nat

structure BDD where
  nodes : List BDDNode
  root : Nat
  terminal0 : Nat
  terminal1 : Nat
  ordered : Prop
  reduced : Prop

structure BDDCanonicalityEvidence (B : BDD) where
  orderedClosed : B.ordered
  reducedClosed : B.reduced

def BDDCanonical (B : BDD) : Prop :=
  B.ordered ∧ B.reduced

theorem bdd_canonical_from_evidence (B : BDD) (E : BDDCanonicalityEvidence B) :
    BDDCanonical B := by
  exact And.intro E.orderedClosed E.reducedClosed

end BooleanProgrammingCanonicalLaneLean
end HautevilleHouse