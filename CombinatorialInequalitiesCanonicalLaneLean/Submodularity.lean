import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialInequalitiesCanonicalLaneLean

structure SubmodularFunction where
  groundSet : Type u
  functionOnSubsets : (Set groundSet) → ℝ
  submodularProperty : Prop
  normalised : Prop

structure SubmodularPackage where
  function : SubmodularFunction
  diminishingReturns : Prop
  polymatroidRank : Prop
  diminishingReturnsTerm : diminishingReturns
  polymatroidRankTerm : polymatroidRank

structure SubmodularEvidence (P : SubmodularPackage) where
  diminishingReturnsClosed : P.diminishingReturns
  polymatroidRankClosed : P.polymatroidRank

def SubmodularClosed (P : SubmodularPackage) : Prop :=
  P.diminishingReturns ∧ P.polymatroidRank

theorem submodular_closed_from_evidence (P : SubmodularPackage) (E : SubmodularEvidence P) :
    SubmodularClosed P := by
  exact And.intro E.diminishingReturnsClosed E.polymatroidRankClosed

end CombinatorialInequalitiesCanonicalLaneLean
end HautevilleHouse
