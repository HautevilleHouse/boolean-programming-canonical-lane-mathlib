import BooleanProgrammingCanonicalLaneLean.BooleanProgrammingAdmissibleClass

namespace HautevilleHouse
namespace BooleanProgrammingCanonicalLaneLean

structure CNFSATPackage (A : AdmissibleClass) where
  clauseCount : Nat
  unitClausePropagation : Prop
  pureLiteralElimination : Prop
  conflictDrivenClauseLearning : Prop
  backtrackingCompleteness : Prop

structure CNFSATEvidence (A : AdmissibleClass) (C : CNFSATPackage A) where
  unitClausePropagationClosed : C.unitClausePropagation
  pureLiteralEliminationClosed : C.pureLiteralElimination
  conflictDrivenClauseLearningClosed : C.conflictDrivenClauseLearning
  backtrackingCompletenessClosed : C.backtrackingCompleteness

def CNFSATClosed (A : AdmissibleClass) (C : CNFSATPackage A) : Prop :=
  C.unitClausePropagation ∧ C.pureLiteralElimination ∧
  C.conflictDrivenClauseLearning ∧ C.backtrackingCompleteness

theorem cnf_sat_closed_from_evidence (A : AdmissibleClass) (C : CNFSATPackage A)
    (E : CNFSATEvidence A C) : CNFSATClosed A C := by
  exact And.intro E.unitClausePropagationClosed
    (And.intro E.pureLiteralEliminationClosed
      (And.intro E.conflictDrivenClauseLearningClosed E.backtrackingCompletenessClosed))

end BooleanProgrammingCanonicalLaneLean
end HautevilleHouse