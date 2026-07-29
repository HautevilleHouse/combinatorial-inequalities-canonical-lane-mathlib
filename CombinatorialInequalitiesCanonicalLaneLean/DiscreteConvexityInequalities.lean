import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialInequalitiesCanonicalLaneLean

structure DiscreteConvexityPackage where
  poset : Type u
  posetPartialOrder : PartialOrder poset
  weightFunction : poset → ℝ
  submodular : Prop
  convexFunctionDefined : Prop

structure DiscreteConvexityEvidence (D : DiscreteConvexityPackage) where
  submodularClosed : D.submodular
  convexFunctionDefinedClosed : D.convexFunctionDefined

def DiscreteConvexityClosed (D : DiscreteConvexityPackage) : Prop :=
  D.submodular ∧ D.convexFunctionDefined

theorem discrete_convexity_closed_from_evidence (D : DiscreteConvexityPackage) (E : DiscreteConvexityEvidence D) : DiscreteConvexityClosed D := by
  exact And.intro E.submodularClosed E.convexFunctionDefinedClosed

end CombinatorialInequalitiesCanonicalLaneLean
end HautevilleHouse