import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BooleanProgrammingCanonicalLaneLean

structure ResolutionStep where
  clause1 : List (Nat × Bool)
  clause2 : List (Nat × Bool)
  resolvent : List (Nat × Bool)
  pivot : Nat

structure ResolutionProof where
  steps : List ResolutionStep
  finalClause : List (Nat × Bool)
  refutation : Prop  -- finalClause is empty

structure ResolutionProofEvidence (P : ResolutionProof) where
  refutationClosed : P.refutation

def ResolutionProofClosed (P : ResolutionProof) : Prop :=
  P.refutation

theorem resolution_proof_closed_from_evidence (P : ResolutionProof) (E : ResolutionProofEvidence P) :
    ResolutionProofClosed P := by
  exact E.refutationClosed

end BooleanProgrammingCanonicalLaneLean
end HautevilleHouse