import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialInequalitiesCanonicalLaneLean

structure EntropyMethodPackage where
  sourceAlphabet : Type u
  randomVariable : Type v
  entropyFunction : (Type v → ℝ) → Prop
  shearerBound : Prop
  entropySumBound : Prop

structure EntropyMethodEvidence (E : EntropyMethodPackage) where
  shearerBoundClosed : E.shearerBound
  entropySumBoundClosed : E.entropySumBound

def EntropyMethodClosed (E : EntropyMethodPackage) : Prop :=
  E.shearerBound ∧ E.entropySumBound

theorem entropy_method_closed_from_evidence (E : EntropyMethodPackage) (Ev : EntropyMethodEvidence E) : EntropyMethodClosed E := by
  exact And.intro Ev.shearerBoundClosed Ev.entropySumBoundClosed

end CombinatorialInequalitiesCanonicalLaneLean
end HautevilleHouse