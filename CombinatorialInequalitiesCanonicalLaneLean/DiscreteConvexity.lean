import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialInequalitiesCanonicalLaneLean

structure DiscreteConvexBody where
  ambientSet : Type u
  characteristicFunction : ambientSet → ℝ
  discreteConvex : Prop
  integerExtremePoints : Prop

structure DiscreteConvexPackage where
  body : DiscreteConvexBody
  convexHullClosed : Prop
  combinatorialDimension : Nat
  halfspaceDescription : Prop
  convexHullClosedTerm : convexHullClosed
  halfspaceDescriptionTerm : halfspaceDescription

structure DiscreteConvexEvidence (P : DiscreteConvexPackage) where
  convexHullClosedClosed : P.convexHullClosed
  halfspaceDescriptionClosed : P.halfspaceDescription

def DiscreteConvexClosed (P : DiscreteConvexPackage) : Prop :=
  P.convexHullClosed ∧ P.halfspaceDescription

theorem discrete_convex_closed_from_evidence (P : DiscreteConvexPackage) (E : DiscreteConvexEvidence P) :
    DiscreteConvexClosed P := by
  exact And.intro E.convexHullClosedClosed E.halfspaceDescriptionClosed

end CombinatorialInequalitiesCanonicalLaneLean
end HautevilleHouse
