import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialInequalitiesCanonicalLaneLean

structure PolyhedralInequalityPackage where
  polytope : Type u
  facetNormals : Type v
  linearObjective : Type w
  linearProgrammingBound : Prop
  integerFeasibilityBound : Prop

structure PolyhedralInequalityEvidence (P : PolyhedralInequalityPackage) where
  linearProgrammingBoundClosed : P.linearProgrammingBound
  integerFeasibilityBoundClosed : P.integerFeasibilityBound

def PolyhedralInequalityClosed (P : PolyhedralInequalityPackage) : Prop :=
  P.linearProgrammingBound ∧ P.integerFeasibilityBound

theorem polyhedral_inequality_closed_from_evidence
    (P : PolyhedralInequalityPackage) (E : PolyhedralInequalityEvidence P) :
    PolyhedralInequalityClosed P := by
  exact And.intro E.linearProgrammingBoundClosed E.integerFeasibilityBoundClosed

end CombinatorialInequalitiesCanonicalLaneLean
end HautevilleHouse