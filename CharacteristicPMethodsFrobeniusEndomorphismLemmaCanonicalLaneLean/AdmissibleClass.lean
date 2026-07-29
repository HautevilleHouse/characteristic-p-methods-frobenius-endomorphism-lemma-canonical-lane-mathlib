import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacteristicPMethodsFrobeniusEndomorphismLemmaCanonicalLaneLean

structure FrobeniusAdmittedObject where
  field : Type
  characteristic : Nat
  prime : Nat
  isPrimeChar : characteristic = prime
  frobeniusEndomorphism : field → field
  frobeniusIsRingHom : RingHomProperty frobeniusEndomorphism
  fixedField : Type
  fixedFieldIsSubfield : SubfieldProperty field fixedField

structure AdmissibleClass where
  object : FrobeniusAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  FrobeniusWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CharacteristicPMethodsFrobeniusEndomorphismLemmaCanonicalLaneLean
end HautevilleHouse
