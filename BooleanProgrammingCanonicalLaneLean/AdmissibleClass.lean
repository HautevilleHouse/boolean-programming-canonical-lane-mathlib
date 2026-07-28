import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BooleanProgrammingCanonicalLaneLean

structure BooleanAdmittedObject where
  formula : Type u
  assignment : Type v
  satisfiability : Prop
  witness : satisfiability

structure AdmissibleClass where
  object : BooleanAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (SATWitnessClosed A.object) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BooleanProgrammingCanonicalLaneLean
end HautevilleHouse