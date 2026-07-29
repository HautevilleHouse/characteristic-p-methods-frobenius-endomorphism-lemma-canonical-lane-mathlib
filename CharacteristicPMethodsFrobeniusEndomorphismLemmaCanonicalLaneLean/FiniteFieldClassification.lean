import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacteristicPMethodsFrobeniusEndomorphismLemmaCanonicalLaneLean

structure FiniteFieldClassificationPackage where
  field : Type
  cardinality : Nat
  primePower : prime ^ n = cardinality
  frobeniusAction : field → field
  frobeniusAutomorphism : IsFieldAutomorphism frobeniusAction
  galoisGroup : Type
  galoisGroupCyclic : IsCyclic galoisGroup

def FiniteFieldClassificationClosed (F : FiniteFieldClassificationPackage) : Prop :=
  F.primePower ∧ F.frobeniusAutomorphism ∧ F.galoisGroupCyclic

end CharacteristicPMethodsFrobeniusEndomorphismLemmaCanonicalLaneLean
end HautevilleHouse
