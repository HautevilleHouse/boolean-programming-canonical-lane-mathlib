import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BooleanProgrammingCanonicalLaneLean.ResolutionProof

namespace HautevilleHouse
namespace BooleanProgrammingCanonicalLaneLean

structure ClauseLearningPackage {B : BooleanAlgebraPackage} {S : SATInstancePackage B} {R : ResolutionProofPackage S} where
  conflictAnalysis : Prop
  learnedClauseAddition : Prop
  backjumping : Prop
  terminationGuarantee : Prop

def ClauseLearningClosed {B : BooleanAlgebraPackage} {S : SATInstancePackage B} {R : ResolutionProofPackage S} (C : ClauseLearningPackage R) : Prop :=
  C.conflictAnalysis ∧ C.learnedClauseAddition ∧ C.backjumping ∧ C.terminationGuarantee

structure ClauseLearningEvidence {B : BooleanAlgebraPackage} {S : SATInstancePackage B} {R : ResolutionProofPackage S} (C : ClauseLearningPackage R) where
  conflictAnalysisClosed : C.conflictAnalysis
  learnedClauseAdditionClosed : C.learnedClauseAddition
  backjumpingClosed : C.backjumping
  terminationGuaranteeClosed : C.terminationGuarantee

theorem clause_learning_closed_from_evidence {B : BooleanAlgebraPackage} {S : SATInstancePackage B} {R : ResolutionProofPackage S} (C : ClauseLearningPackage R) (E : ClauseLearningEvidence C) :
    ClauseLearningClosed C := by
  exact And.intro E.conflictAnalysisClosed
    (And.intro E.learnedClauseAdditionClosed
      (And.intro E.backjumpingClosed E.terminationGuaranteeClosed))

end BooleanProgrammingCanonicalLaneLean
end HautevilleHouse
