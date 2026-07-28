import BooleanProgrammingCanonicalLaneLean.BooleanFunctions

namespace HautevilleHouse
namespace BooleanProgrammingCanonicalLaneLean

structure SATSolverPackage (B : BooleanFunctionPackage) where
  solverAlgorithm : String
  assignedValuation : List (String × Bool)
  solutionVerified : B.isSatisfiable

def SATSolverClosed {B : BooleanFunctionPackage} (S : SATSolverPackage B) : Prop :=
  S.solutionVerified

theorem sat_solver_closed_from_evidence {B : BooleanFunctionPackage} (S : SATSolverPackage B) : SATSolverClosed S :=
  S.solutionVerified

end BooleanProgrammingCanonicalLaneLean
end HautevilleHouse