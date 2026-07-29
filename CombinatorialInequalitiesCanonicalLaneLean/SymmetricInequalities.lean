import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialInequalitiesCanonicalLaneLean

structure SymmetricInequality where
  inequalityName : String
  statement : Prop
  proof : statement

def symmetricInequalities : List SymmetricInequality :=
  [
    { inequalityName := "Muirhead", statement := ∀ (a b c : ℝ), a ≥ 0 → b ≥ 0 → c ≥ 0 → (a^3 + b^3 + c^3) ≥ (a*b*c) * (a + b + c), proof := by
      intro a b c ha hb hc
      nlinarith
    }
  ]

end CombinatorialInequalitiesCanonicalLaneLean
end HautevilleHouse