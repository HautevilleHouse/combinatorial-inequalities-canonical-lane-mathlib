import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialInequalitiesCanonicalLaneLean

structure BrunnMinkowskiPackage where
  convexBodyA : Set (ℝ ^ n)
  convexBodyB : Set (ℝ ^ n)
  minkowskiSumVolumeBound : Prop
  brunnMinkowskiInequality : Prop

structure BrunnMinkowskiEvidence (B : BrunnMinkowskiPackage) where
  minkowskiSumVolumeBoundClosed : B.minkowskiSumVolumeBound
  brunnMinkowskiInequalityClosed : B.brunnMinkowskiInequality

def BrunnMinkowskiClosed (B : BrunnMinkowskiPackage) : Prop :=
  B.minkowskiSumVolumeBound ∧ B.brunnMinkowskiInequality

theorem brunn_minkowski_closed_from_evidence (B : BrunnMinkowskiPackage) (E : BrunnMinkowskiEvidence B) : BrunnMinkowskiClosed B := by
  exact And.intro E.minkowskiSumVolumeBoundClosed E.brunnMinkowskiInequalityClosed

end CombinatorialInequalitiesCanonicalLaneLean
end HautevilleHouse