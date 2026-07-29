import canonicalLaneMathlib.AdmissibleClass
import CombinatorialInequalitiesCanonicalLaneLean.DiscreteConvexity
import CombinatorialInequalitiesCanonicalLaneLean.Submodularity
import CombinatorialInequalitiesCanonicalLaneLean.SpernerTheorem
import CombinatorialInequalitiesCanonicalLaneLean.BollobasTheorem

namespace HautevilleHouse
namespace CombinatorialInequalitiesCanonicalLaneLean

def ConstrainedCombinatorialInequalitiesClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_combinatorial_inequalities_endgame (A : AdmissibleClass) :
    ConstrainedCombinatorialInequalitiesClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CombinatorialInequalitiesCanonicalLaneLean
end HautevilleHouse
