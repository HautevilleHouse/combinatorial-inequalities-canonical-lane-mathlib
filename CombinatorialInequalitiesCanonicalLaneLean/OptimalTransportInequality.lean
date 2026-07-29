import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialInequalitiesCanonicalLaneLean

structure CostFunction (A : Type) where
  source : A
  target : A
  cost : ℝ

structure TransportMap (A : Type) where
  mapping : A → A
  costTotal : ℝ

structure OptimalTransportEvidence (A : Type) where
  measureSpace : Set A
  probabilityMeasure : Set A → ℝ
  costFunction : CostFunction A
  transportPlan : TransportMap A
  optimalityCondition : Prop
  optimalityConditionTerm : optimalityCondition

def OptimalTransportClosed {A : Type} (O : OptimalTransportEvidence A) : Prop :=
  O.optimalityCondition

theorem optimal_transport_closed_from_evidence (A : Type) (O : OptimalTransportEvidence A) : OptimalTransportClosed O := by
  exact O.optimalityConditionTerm

end CombinatorialInequalitiesCanonicalLaneLean
end HautevilleHouse
