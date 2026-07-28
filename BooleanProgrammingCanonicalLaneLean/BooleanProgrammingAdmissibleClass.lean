import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BooleanProgrammingCanonicalLaneLean

structure BooleanProgrammingAdmittedObject where
  variableCount : Nat
  clauseSet : List (List (Nat × Bool))
  satisfiabilityStatus : Prop
  conclusion : satisfiabilityStatus

structure AdmissibleClass where
  object : BooleanProgrammingAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  BooleanProgrammingWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def BooleanProgrammingWitnessClosed (O : BooleanProgrammingAdmittedObject) : Prop :=
  O.satisfiabilityStatus

end BooleanProgrammingCanonicalLaneLean
end HautevilleHouse