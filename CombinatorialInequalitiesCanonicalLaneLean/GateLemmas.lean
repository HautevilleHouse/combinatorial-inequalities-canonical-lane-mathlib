import CombinatorialInequalitiesCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace CombinatorialInequalitiesCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end CombinatorialInequalitiesCanonicalLaneLean
end HautevilleHouse
