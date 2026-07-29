import CombinatorialInequalitiesCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace CombinatorialInequalitiesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  InequalityWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CombinatorialInequalitiesCanonicalLaneLean
end HautevilleHouse
