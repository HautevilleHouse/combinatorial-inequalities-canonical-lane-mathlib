import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialInequalitiesCanonicalLaneLean

structure HoeffdingPackage where
  summands : ℕ
  bound : ℝ → ℝ
  probabilityTail : ℝ → ℝ

structure HoeffdingEvidence (H : HoeffdingPackage) where
  summandsPositive : H.summands > 0
  boundNonnegative : ∀ x : ℝ, H.bound x ≥ 0
  probabilityTailValid : ∀ t : ℝ, H.probabilityTail t ≥ 0

def HoeffdingClosed (H : HoeffdingPackage) : Prop :=
  H.summands > 0 ∧ (∀ x : ℝ, H.bound x ≥ 0) ∧ (∀ t : ℝ, H.probabilityTail t ≥ 0)

theorem hoeffding_closed_from_evidence (H : HoeffdingPackage) (E : HoeffdingEvidence H) : HoeffdingClosed H := by
  exact And.intro E.summandsPositive (And.intro E.boundNonnegative E.probabilityTailValid)

end CombinatorialInequalitiesCanonicalLaneLean
end HautevilleHouse
