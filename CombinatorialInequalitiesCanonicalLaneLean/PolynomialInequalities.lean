import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialInequalitiesCanonicalLaneLean

structure AMGMBound where
  n : ℕ
  a : Fin n → ℝ
  positive : ∀ i, a i > 0
  amgm : (∏ i, a i)^(1/n : ℝ) ≤ (∑ i, a i)/n

structure ChebyshevSumBound where
  n : ℕ
  a : Fin n → ℝ
  b : Fin n → ℝ
  orderConsistent : (∀ i j, i ≤ j → a i ≤ a j) ∧ (∀ i j, i ≤ j → b i ≤ b j)
  bound : (1/n : ℝ) * (∑ i, a i * b i) ≥ ((1/n : ℝ) * (∑ i, a i)) * ((1/n : ℝ) * (∑ i, b i))

end CombinatorialInequalitiesCanonicalLaneLean
end HautevilleHouse