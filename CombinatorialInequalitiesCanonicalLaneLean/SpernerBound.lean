import CombinatorialInequalitiesCanonicalLaneLean.Antichain

/-!
# Sperner Bound Package
-/

namespace HautevilleHouse
namespace CombinatorialInequalitiesCanonicalLaneLean

structure SpernerBoundPackage where
  groundSetSize : ℕ
  largestAntichainSize : ℕ
  spernerInequality : Prop
  equalityCondition : Prop

structure SpernerBoundEvidence (S : SpernerBoundPackage) where
  spernerInequalityClosed : S.spernerInequality
  equalityConditionClosed : S.equalityCondition

def SpernerBoundClosed (S : SpernerBoundPackage) : Prop :=
  S.spernerInequality ∧ S.equalityCondition

theorem sperner_bound_closed_from_evidence (S : SpernerBoundPackage) (E : SpernerBoundEvidence S) :
    SpernerBoundClosed S := by
  exact And.intro E.spernerInequalityClosed E.equalityConditionClosed

end CombinatorialInequalitiesCanonicalLaneLean
end HautevilleHouse
