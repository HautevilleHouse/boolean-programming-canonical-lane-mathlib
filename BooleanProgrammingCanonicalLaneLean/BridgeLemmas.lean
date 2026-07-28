import BooleanProgrammingCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BooleanProgrammingCanonicalLaneLean

def SATWitnessClosed (obj : BooleanAdmittedObject) : Prop :=
  obj.satisfiability

def bridgeClosed (A : AdmissibleClass) : Prop :=
  SATWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.witness

end BooleanProgrammingCanonicalLaneLean
end HautevilleHouse