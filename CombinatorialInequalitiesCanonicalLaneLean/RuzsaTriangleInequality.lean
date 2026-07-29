import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialInequalitiesCanonicalLaneLean

structure RuzsaTrianglePackage where
  additiveGroup : Type u
  groupAddCommGroup : AddCommGroup additiveGroup
  subsetA : Set additiveGroup
  subsetB : Set additiveGroup
  subsetC : Set additiveGroup
  ruzsaTriangleInequality : Prop

structure RuzsaTriangleEvidence (R : RuzsaTrianglePackage) where
  ruzsaTriangleInequalityClosed : R.ruzsaTriangleInequality

def RuzsaTriangleClosed (R : RuzsaTrianglePackage) : Prop :=
  R.ruzsaTriangleInequality

theorem ruzsa_triangle_closed_from_evidence (R : RuzsaTrianglePackage) (E : RuzsaTriangleEvidence R) : RuzsaTriangleClosed R := by
  exact E.ruzsaTriangleInequalityClosed

end CombinatorialInequalitiesCanonicalLaneLean
end HautevilleHouse