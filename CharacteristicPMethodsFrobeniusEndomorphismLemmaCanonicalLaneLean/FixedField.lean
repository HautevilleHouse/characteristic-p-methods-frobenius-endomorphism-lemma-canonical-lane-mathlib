import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacteristicPMethodsFrobeniusEndomorphismLemmaCanonicalLaneLean

structure FixedFieldPackage where
  field : Type
  frobenius : field → field
  fixedSet : Set field
  fixedField : Type
  subfieldProof : IsSubfield fixedField
  algebraicClosure : Type
  frobeniusOnClosure : algebraicClosure → algebraicClosure

def FixedFieldClosed (F : FixedFieldPackage) : Prop :=
  F.subfieldProof ∧ (F.frobenius = fun x => x ^ (F.field.char)) ∧ F.frobeniusOnClosure = fun x => x ^ (F.algebraicClosure.char)

end CharacteristicPMethodsFrobeniusEndomorphismLemmaCanonicalLaneLean
end HautevilleHouse
