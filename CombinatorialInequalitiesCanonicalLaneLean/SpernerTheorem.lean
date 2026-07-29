import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialInequalitiesCanonicalLaneLean

structure AntichainCondition where
  family : Set (Set α)
  antichainProperty : Prop
  sizeBound : Nat

structure SpernerPackage where
  antichain : AntichainCondition
  familyCardinality : Nat
  lubound : Prop
  extremalFamily : Prop
  luboundTerm : lubound
  extremalFamilyTerm : extremalFamily

structure SpernerEvidence (P : SpernerPackage) where
  luboundClosed : P.lubound
  extremalFamilyClosed : P.extremalFamily

def SpernerClosed (P : SpernerPackage) : Prop :=
  P.lubound ∧ P.extremalFamily

theorem sperner_closed_from_evidence (P : SpernerPackage) (E : SpernerEvidence P) :
    SpernerClosed P := by
  exact And.intro E.luboundClosed E.extremalFamilyClosed

end CombinatorialInequalitiesCanonicalLaneLean
end HautevilleHouse
