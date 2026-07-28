import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BooleanProgrammingCanonicalLaneLean.SATEncoding

namespace HautevilleHouse
namespace BooleanProgrammingCanonicalLaneLean

structure DPLLDecision where
  variable : Nat
  value : Bool

structure DPLLTrace where
  decisions : List DPLLDecision
  conflicts : Nat
  success : Prop

structure DPLLSolverResult where
  trace : DPLLTrace
  sat : Bool
  certificate : Option (List Bool)

structure DPLLSolverEvidence (R : DPLLSolverResult) where
  successClosed : R.trace.success
  satConsistent : R.sat = (R.certificate.isSome)

def DPLLSolverClosed (R : DPLLSolverResult) : Prop :=
  R.trace.success ∧ (R.sat = (R.certificate.isSome))

theorem dpll_solver_closed_from_evidence (R : DPLLSolverResult) (E : DPLLSolverEvidence R) :
    DPLLSolverClosed R := by
  exact And.intro E.successClosed E.satConsistent

end BooleanProgrammingCanonicalLaneLean
end HautevilleHouse