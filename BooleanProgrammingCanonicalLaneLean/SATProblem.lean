import BooleanProgrammingCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BooleanProgrammingCanonicalLaneLean

structure Variable where
  name : String

def VariableSet : Type := List Variable

structure Clause where
  literals : List (Variable × Bool)

def ClauseSet : Type := List Clause

structure CNFFormula where
  variables : VariableSet
  clauses : ClauseSet

structure Assignment where
  mapping : Variable → Bool

structure SATWitness where
  formula : CNFFormula
  assignment : Assignment
  satisfies : Prop

structure SATPackage where
  formula : CNFFormula
  sat : Prop
  evidence : sat

def SATClosed (pkg : SATPackage) : Prop := pkg.sat

end BooleanProgrammingCanonicalLaneLean
end HautevilleHouse