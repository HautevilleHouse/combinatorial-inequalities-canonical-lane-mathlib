import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialInequalitiesCanonicalLaneLean

structure CrossIntersectingFamily where
  familyA : Set (Set α)
  familyB : Set (Set α)
  crossIntersectingProperty : Prop

structure BollobasPackage where
  families : CrossIntersectingFamily
  sizeProductBound : Prop
  extremalPairs : Prop
  sizeProductBoundTerm : sizeProductBound
  extremalPairsTerm : extremalPairs

structure BollobasEvidence (P : BollobasPackage) where
  sizeProductBoundClosed : P.sizeProductBound
  extremalPairsClosed : P.extremalPairs

def BollobasClosed (P : BollobasPackage) : Prop :=
  P.sizeProductBound ∧ P.extremalPairs

theorem bollobas_closed_from_evidence (P : BollobasPackage) (E : BollobasEvidence P) :
    BollobasClosed P := by
  exact And.intro E.sizeProductBoundClosed E.extremalPairsClosed

end CombinatorialInequalitiesCanonicalLaneLean
end HautevilleHouse
