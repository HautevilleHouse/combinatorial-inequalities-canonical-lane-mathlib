import CombinatorialInequalitiesCanonicalLaneLean.IntersectingFamilies

/-!
# Erdős–Ko–Rado Package
-/

namespace HautevilleHouse
namespace CombinatorialInequalitiesCanonicalLaneLean

structure ErdosKoRadoPackage where
  groundSetSize : ℕ
  intersectingFamilySize : ℕ
  ekrInequality : Prop
  extremalFamilies : Prop

structure ErdosKoRadoEvidence (E : ErdosKoRadoPackage) where
  ekrInequalityClosed : E.ekrInequality
  extremalFamiliesClosed : E.extremalFamilies

def ErdosKoRadoClosed (E : ErdosKoRadoPackage) : Prop :=
  E.ekrInequality ∧ E.extremalFamilies

theorem erdos_ko_rado_closed_from_evidence (E : ErdosKoRadoPackage) (Ev : ErdosKoRadoEvidence E) :
    ErdosKoRadoClosed E := by
  exact And.intro Ev.ekrInequalityClosed Ev.extremalFamiliesClosed

end CombinatorialInequalitiesCanonicalLaneLean
end HautevilleHouse
