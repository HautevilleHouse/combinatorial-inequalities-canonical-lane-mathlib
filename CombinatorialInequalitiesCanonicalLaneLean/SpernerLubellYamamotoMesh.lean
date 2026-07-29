import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialInequalitiesCanonicalLaneLean

structure SpernerLubellYamamotoMeshPackage where
  setFamily : Type u
  groundSetSize : ℕ
  layerSizes : ℕ → ℕ
  lyiWeightBound : Prop
  spernerChainBound : Prop

structure SpernerLubellYamamotoMeshEvidence (S : SpernerLubellYamamotoMeshPackage) where
  lyiWeightBoundClosed : S.lyiWeightBound
  spernerChainBoundClosed : S.spernerChainBound

def SpernerLubellYamamotoMeshClosed (S : SpernerLubellYamamotoMeshPackage) : Prop :=
  S.lyiWeightBound ∧ S.spernerChainBound

theorem sperner_lubell_yamamoto_mesh_closed_from_evidence
    (S : SpernerLubellYamamotoMeshPackage) (E : SpernerLubellYamamotoMeshEvidence S) :
    SpernerLubellYamamotoMeshClosed S := by
  exact And.intro E.lyiWeightBoundClosed E.spernerChainBoundClosed

end CombinatorialInequalitiesCanonicalLaneLean
end HautevilleHouse