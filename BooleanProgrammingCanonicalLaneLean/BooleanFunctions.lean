import BooleanProgrammingCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BooleanProgrammingCanonicalLaneLean

structure BooleanFunctionPackage where
  variables : List String
  expression : String
  truthTable : List (List Bool × Bool)
  isSatisfiable : Prop
  satisfiabilityProved : isSatisfiable

def BooleanFunctionClosed (B : BooleanFunctionPackage) : Prop :=
  B.isSatisfiable

theorem boolean_function_closed_from_evidence (B : BooleanFunctionPackage) : BooleanFunctionClosed B :=
  B.satisfiabilityProved

end BooleanProgrammingCanonicalLaneLean
end HautevilleHouse