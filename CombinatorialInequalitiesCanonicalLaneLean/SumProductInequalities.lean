import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialInequalitiesCanonicalLaneLean

structure RearrangementInequality where
  n : ℕ
  a : Fin n → ℝ
  b : Fin n → ℝ
  sortedAscA : ∀ i j, i ≤ j → a i ≤ a j
  sortedAscB : ∀ i j, i ≤ j → b i ≤ b j
  sumProdSameOrder : ∑ i, a i * b i ≥ ∑ i, a i * b (n-1-i)

structure ConvolutionInequality where
  f : ℕ → ℝ
  g : ℕ → ℝ
  h : ℕ → ℝ
  pf : ℝ ≥ 1
  pg : ℝ ≥ 1
  ph : ℝ ≥ 1
  reciprocalSum : (1/pf) + (1/pg) + (1/ph) = 2
  youngBound : (∑ k, (∑ i, f i * g (k-i)) * h k) ≤ (∑ n, f n^pf)^(1/pf) * (∑ n, g n^pg)^(1/pg) * (∑ n, h n^ph)^(1/ph)

end CombinatorialInequalitiesCanonicalLaneLean
end HautevilleHouse