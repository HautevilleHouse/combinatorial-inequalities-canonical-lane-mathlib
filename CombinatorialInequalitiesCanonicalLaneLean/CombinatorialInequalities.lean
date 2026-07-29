import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialInequalitiesCanonicalLaneLean

structure CombinatorialInequality where
  inequalityName : String
  statement : Prop
  proof : statement

def combinatorialInequalitiesPackage : List CombinatorialInequality :=
  [
    { inequalityName := "AM-GM", statement := ∀ (x y : ℝ), x ≥ 0 → y ≥ 0 → x + y ≥ 2 * Real.sqrt (x * y), proof := by
      intro x y hx hy
      have h := Real.add_sqrt_sq (Real.sqrt (x * y)) (Real.sqrt (x * y))
      sorry
    },
    { inequalityName := "Cauchy-Schwarz", statement := ∀ (a b : ℝ), (a^2 + b^2) * (1^2 + 1^2) ≥ (a*1 + b*1)^2, proof := by
      intro a b
      nlinarith
    },
    { inequalityName := "Triangle Inequality", statement := ∀ (x y : ℝ), |x + y| ≤ |x| + |y|, proof := by
      intro x y
      exact abs_add x y
    }
  ]

end CombinatorialInequalitiesCanonicalLaneLean
end HautevilleHouse