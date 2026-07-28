import BooleanProgrammingCanonicalLaneLean.BooleanProgrammingGateLemmas

namespace HautevilleHouse
namespace BooleanProgrammingCanonicalLaneLean

def ConstrainedBooleanProgrammingClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_boolean_programming_endgame (A : AdmissibleClass) :
    ConstrainedBooleanProgrammingClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BooleanProgrammingCanonicalLaneLean
end HautevilleHouse