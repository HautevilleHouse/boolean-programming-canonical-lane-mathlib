import BooleanProgrammingCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BooleanProgrammingCanonicalLaneLean

structure SATPackage where
  variableSet : Type
  clauseSet : Type
  assignmentType : Type
  satisfiabilityCheck : Prop
  completeness : Prop
  soundness : Prop

structure SATEvidence (S : SATPackage) where
  satisfiabilityCheckClosed : S.satisfiabilityCheck
  completenessClosed : S.completeness
  soundnessClosed : S.soundness

def SATClosed (S : SATPackage) : Prop :=
  S.satisfiabilityCheck ∧ S.completeness ∧ S.soundness

theorem sat_closed_from_evidence (S : SATPackage) (E : SATEvidence S) : SATClosed S := by
  exact And.intro E.satisfiabilityCheckClosed (And.intro E.completenessClosed E.soundnessClosed)

end BooleanProgrammingCanonicalLaneLean
end HautevilleHouse