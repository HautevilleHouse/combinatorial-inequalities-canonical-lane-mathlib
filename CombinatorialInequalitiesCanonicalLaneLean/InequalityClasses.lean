import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialInequalitiesCanonicalLaneLean

structure InequalityClass where
  inequalityKey : String
  coefficientType : Type
  upperBound : coefficientType
  lowerBound : coefficientType
  variableDomain : Set coefficientType

structure InequalityPackage where
  classes : List InequalityClass
  tightnessProperty : Prop
  scalingProperty : Prop

end CombinatorialInequalitiesCanonicalLaneLean
end HautevilleHouse
