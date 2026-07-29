import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacteristicPMethodsFrobeniusEndomorphismLemmaCanonicalLaneLean

structure FrobeniusActionPackage where
  field : Type
  prime : Nat
  frobeniusMap : field → field
  frobeniusLinear : FrobeniusLinearProperty frobeniusMap
  fixedField : Type
  fixedFieldDimension : Nat

def FrobeniusActionClosed (P : FrobeniusActionPackage) : Prop :=
  FrobeniusLinearProperty.isLinear P.frobeniusLinear ∧ P.fixedFieldDimension > 0

end CharacteristicPMethodsFrobeniusEndomorphismLemmaCanonicalLaneLean
end HautevilleHouse
