import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BooleanProgrammingCanonicalLaneLean.BooleanCircuit

namespace HautevilleHouse
namespace BooleanProgrammingCanonicalLaneLean

structure CNFClause where
  literals : List (Nat × Bool)  -- (variable, isPositive)

structure CNFFormula where
  clauses : List CNFClause
  numVars : Nat

structure SATInstance where
  formula : CNFFormula
  assignment : List Bool  -- length numVars
  satisfies : Prop

structure SATInstanceEvidence (S : SATInstance) where
  satisfiesClosed : S.satisfies

def SATInstanceClosed (S : SATInstance) : Prop :=
  S.satisfies

theorem sat_instance_closed_from_evidence (S : SATInstance) (E : SATInstanceEvidence S) :
    SATInstanceClosed S := by
  exact E.satisfiesClosed

end BooleanProgrammingCanonicalLaneLean
end HautevilleHouse