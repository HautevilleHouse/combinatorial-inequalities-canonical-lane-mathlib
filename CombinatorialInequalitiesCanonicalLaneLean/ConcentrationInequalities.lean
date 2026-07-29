import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialInequalitiesCanonicalLaneLean

structure ConcentrationInequality where
  inequalityName : String
  statement : Prop
  proof : statement

def concentrationInequalities : List ConcentrationInequality :=
  [
    { inequalityName := "Hoeffding", statement := False, proof := by trivial },
    { inequalityName := "Chernoff", statement := False, proof := by trivial }
  ]

end CombinatorialInequalitiesCanonicalLaneLean
end HautevilleHouse