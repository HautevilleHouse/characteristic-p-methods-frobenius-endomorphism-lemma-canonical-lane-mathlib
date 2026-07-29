import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacteristicPMethodsFrobeniusEndomorphismLemmaCanonicalLaneLean

structure FrobeniusAdmittedObject where
  carrier : Type
  ringStructure : Ring carrier
  primeCharacteristic : Nat
  charIsPrime : CharP carrier primeCharacteristic
  frobeniusEndomorphism : carrier → carrier
  frobeniusIsRingHom : IsRingHom frobeniusEndomorphism
  conclusion : Prop

structure FrobeniusAdmittedObjectWitness (O : FrobeniusAdmittedObject) where
  frobeniusPower : ℕ
  iteratedFrobenius : O.carrier → O.carrier
  targetField : Type
  fieldStructure : Field targetField
  fieldChar : CharP targetField O.primeCharacteristic
  embedding : O.carrier → targetField
  embeddingIsRingHom : IsRingHom embedding
  closureCondition : O.conclusion

def FrobeniusWitnessClosed (O : FrobeniusAdmittedObject) : Prop :=
  O.conclusion

end CharacteristicPMethodsFrobeniusEndomorphismLemmaCanonicalLaneLean
end HautevilleHouse
