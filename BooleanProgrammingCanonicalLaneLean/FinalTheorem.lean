import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BooleanProgrammingCanonicalLaneLean.BooleanCircuit
import HautevilleHouse.BooleanProgrammingCanonicalLaneLean.SATEncoding
import HautevilleHouse.BooleanProgrammingCanonicalLaneLean.ResolutionProof
import HautevilleHouse.BooleanProgrammingCanonicalLaneLean.DPLLSolver
import HautevilleHouse.BooleanProgrammingCanonicalLaneLean.BDDCanonical

namespace HautevilleHouse
namespace BooleanProgrammingCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied

def gateClosed (A : AdmissibleClass) : Prop :=
  A.remainderRecorded

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.endpointSatisfied

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.remainderRecorded

def ConstrainedSATClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_sat_endgame (A : AdmissibleClass) : ConstrainedSATClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BooleanProgrammingCanonicalLaneLean
end HautevilleHouse