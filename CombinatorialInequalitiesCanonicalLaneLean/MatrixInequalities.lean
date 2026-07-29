import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialInequalitiesCanonicalLaneLean

structure CauchySchwarzBound where
  n : ℕ
  a : Fin n → ℝ
  b : Fin n → ℝ
  sqSumA : ℝ
  sqSumB : ℝ
  innerBound : (∑ i, a i * b i)^2 ≤ (∑ i, (a i)^2) * (∑ i, (b i)^2)

structure JensenInequality where
  μ : Finset α
  w : α → ℝ
  totalWeight : ∑ x in μ, w x = 1
  f : α → ℝ
  convexF : ConvexOn ℝ (Set.Icc 0 1) (Set.Icc 0 1) f
  bound : f (∑ x in μ, w x * x) ≤ ∑ x in μ, w x * f x

end CombinatorialInequalitiesCanonicalLaneLean
end HautevilleHouse