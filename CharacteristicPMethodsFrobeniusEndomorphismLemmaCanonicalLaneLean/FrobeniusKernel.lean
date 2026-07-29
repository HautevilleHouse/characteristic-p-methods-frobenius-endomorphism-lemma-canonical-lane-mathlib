import HautevilleHouse.CharacteristicPMethodsFrobeniusEndomorphismLemmaCanonicalLaneLean.FrobeniusEndomorphism

namespace HautevilleHouse
namespace CharacteristicPMethodsFrobeniusEndomorphismLemmaCanonicalLaneLean

structure FrobeniusKernelPackage {F : FrobeniusEndomorphismPackage} where
  kernelSet : Set F.field
  kernelSubfield : Prop
  purelyInseparableExtension : Prop
  frobeniusFixedPoints : Prop
  kernelSubfieldTerm : kernelSubfield
  purelyInseparableExtensionTerm : purelyInseparableExtension
  frobeniusFixedPointsTerm : frobeniusFixedPoints

structure FrobeniusKernelEvidence {F : FrobeniusEndomorphismPackage}
    (K : FrobeniusKernelPackage F) where
  kernelSubfieldClosed : K.kernelSubfield
  purelyInseparableExtensionClosed : K.purelyInseparableExtension
  frobeniusFixedPointsClosed : K.frobeniusFixedPoints

def FrobeniusKernelClosed {F : FrobeniusEndomorphismPackage}
    (K : FrobeniusKernelPackage F) : Prop :=
  K.kernelSubfield ∧ K.purelyInseparableExtension ∧ K.frobeniusFixedPoints

theorem frobenius_kernel_closed_from_evidence {F : FrobeniusEndomorphismPackage}
    (K : FrobeniusKernelPackage F) (E : FrobeniusKernelEvidence K) :
    FrobeniusKernelClosed K := by
  exact And.intro E.kernelSubfieldClosed
    (And.intro E.purelyInseparableExtensionClosed E.frobeniusFixedPointsClosed)

end CharacteristicPMethodsFrobeniusEndomorphismLemmaCanonicalLaneLean
end HautevilleHouse