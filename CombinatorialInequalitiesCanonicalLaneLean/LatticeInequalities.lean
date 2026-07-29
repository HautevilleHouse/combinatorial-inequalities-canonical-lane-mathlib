import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialInequalitiesCanonicalLaneLean

structure YoungInequalityBound where
  a : ℝ≥0
  b : ℝ≥0
  p : ℝ > 1
  q : ℝ > 1
  conjugate : (1/p) + (1/q) = 1
  bound : a*b ≤ (a^p)/p + (b^q)/q

structure LatticeSumBound where
  f : ℕ → ℝ
  g : ℕ → ℝ
  fnorm : ℝ
  gnorm : ℝ
  convolBound : (∑ k, f k * g (n - k)) ≤ fnorm * gnorm

end CombinatorialInequalitiesCanonicalLaneLean
end HautevilleHouse