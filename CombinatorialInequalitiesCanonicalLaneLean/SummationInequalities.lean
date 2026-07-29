import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialInequalitiesCanonicalLaneLean

structure SummationInequality where
  inequalityName : String
  statement : Prop
  proof : statement

def summationInequalities : List SummationInequality :=
  [
    { inequalityName := "Chebyshev Sum", statement := ∀ (a b : ℕ → ℝ), (∀ i, a i ≤ a (i+1)) → (∀ i, b i ≤ b (i+1)) → (1/n) * ∑ i, a i * b i ≥ ((1/n) * ∑ i, a i) * ((1/n) * ∑ i, b i), proof := by
      intro a b ha hb
      sorry
    }
  ]

end CombinatorialInequalitiesCanonicalLaneLean
end HautevilleHouse