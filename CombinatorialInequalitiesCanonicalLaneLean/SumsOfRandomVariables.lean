import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialInequalitiesCanonicalLaneLean

structure RandomVariable where
  sampleSpace : Type
  probabilityMeasure : Set sampleSpace → ℝ
  expectation : (sampleSpace → ℝ) → ℝ
  variance : (sampleSpace → ℝ) → ℝ

structure SumOfRandomVariablesEvidence where
  independentlyIdenticallyDistributed : Prop
  finiteExpectation : Prop
  finiteVariance : Prop

def SumOfRandomVariablesClosed (S : SumOfRandomVariablesEvidence) : Prop :=
  S.independentlyIdenticallyDistributed ∧ S.finiteExpectation ∧ S.finiteVariance

theorem sum_of_random_variables_closed_from_evidence (S : SumOfRandomVariablesEvidence) : SumOfRandomVariablesClosed S := by
  exact And.intro S.independentlyIdenticallyDistributed (And.intro S.finiteExpectation S.finiteVariance)

end CombinatorialInequalitiesCanonicalLaneLean
end HautevilleHouse
