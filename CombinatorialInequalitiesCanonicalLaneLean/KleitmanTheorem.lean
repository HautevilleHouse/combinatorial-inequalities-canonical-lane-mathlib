import CombinatorialInequalitiesCanonicalLaneLean.DownwardClosed

/-!
# Kleitman Theorem Package
-/

namespace HautevilleHouse
namespace CombinatorialInequalitiesCanonicalLaneLean

structure KleitmanTheoremPackage where
  groundSetSize : ℕ
  downSetSize : ℕ
  upSetSize : ℕ
  kleitmanInequality : Prop

structure KleitmanTheoremEvidence (K : KleitmanTheoremPackage) where
  downSetSizeClosed : K.downSetSize
  upSetSizeClosed : K.upSetSize
  kleitmanInequalityClosed : K.kleitmanInequality

def KleitmanTheoremClosed (K : KleitmanTheoremPackage) : Prop :=
  K.downSetSize ∧ K.upSetSize ∧ K.kleitmanInequality

theorem kleitman_theorem_closed_from_evidence (K : KleitmanTheoremPackage) (E : KleitmanTheoremEvidence K) :
    KleitmanTheoremClosed K := by
  exact And.intro E.downSetSizeClosed (And.intro E.upSetSizeClosed E.kleitmanInequalityClosed)

end CombinatorialInequalitiesCanonicalLaneLean
end HautevilleHouse
