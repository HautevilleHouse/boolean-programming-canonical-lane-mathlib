import BooleanProgrammingCanonicalLaneLean.BooleanProgrammingAdmissibleClass

namespace HautevilleHouse
namespace BooleanProgrammingCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  BooleanProgrammingWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end BooleanProgrammingCanonicalLaneLean
end HautevilleHouse