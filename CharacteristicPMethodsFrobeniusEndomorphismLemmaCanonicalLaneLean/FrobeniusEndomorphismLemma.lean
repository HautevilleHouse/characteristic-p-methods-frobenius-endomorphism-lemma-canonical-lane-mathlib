import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacteristicPMethodsFrobeniusEndomorphismLemmaCanonicalLaneLean

structure FrobeniusEndomorphismLemmaPackage where
  field : Type
  prime : Nat
  frobenius : field → field
  frobeniusIsRingHom : RingHomProperty frobenius
  frobeniusKernel : Set field
  frobeniusImage : Set field
  lemmaStatement : frobeniusKernel = {0} ∧ frobeniusImage = field

def FrobeniusEndomorphismLemmaClosed (P : FrobeniusEndomorphismLemmaPackage) : Prop :=
  P.frobeniusIsRingHom ∧ P.lemmaStatement

end CharacteristicPMethodsFrobeniusEndomorphismLemmaCanonicalLaneLean
end HautevilleHouse
