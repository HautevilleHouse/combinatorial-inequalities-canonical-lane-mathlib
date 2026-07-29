import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialInequalitiesCanonicalLaneLean

structure BinomialCoefficientBound where
  n : Nat
  k : Nat
  upperBound : Nat
  validN : n ≥ 0
  validK : k ≤ n
  boundHolds : (Nat.choose n k) ≤ upperBound

structure EntropyInequality where
  p : Nat → ℝ
  normalized : Finset.range (Finset.card (Finset.range 3)) → ℝ
  sumOne : ∑ i, p i = 1
  entropyNonnegative : -∑ i, p i * Real.log (p i) ≥ 0

end CombinatorialInequalitiesCanonicalLaneLean
end HautevilleHouse