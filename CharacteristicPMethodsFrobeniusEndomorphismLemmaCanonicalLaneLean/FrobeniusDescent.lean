import CharacteristicPMethodsFrobeniusEndomorphismLemmaCanonicalLaneLean.AdmissibleFrobeniusClass

namespace HautevilleHouse
namespace CharacteristicPMethodsFrobeniusEndomorphismLemmaCanonicalLaneLean

structure FrobeniusDescentPackage (A : FrobeniusAdmissibleClass) where
  baseScheme : Type
  baseRing : Ring baseScheme
  baseChar : CharP baseScheme (A.object.primeCharacteristic)
  frobeniusTwist : Type
  twistRing : Ring frobeniusTwist
  twistChar : CharP frobeniusTwist (A.object.primeCharacteristic)
  frobeniusDescentMap : A.object.carrier → frobeniusTwist
  descentIsSurjection : Function.Surjective frobeniusDescentMap
  descentClosed : Prop

structure FrobeniusDescentEvidence {A : FrobeniusAdmissibleClass}
    (D : FrobeniusDescentPackage A) where
  descentClosedWitness : D.descentClosed

def FrobeniusDescentClosed {A : FrobeniusAdmissibleClass}
    (D : FrobeniusDescentPackage A) : Prop :=
  D.descentClosed

theorem frobenius_descent_closed_from_evidence
    {A : FrobeniusAdmissibleClass} (D : FrobeniusDescentPackage A)
    (E : FrobeniusDescentEvidence D) : FrobeniusDescentClosed D :=
  E.descentClosedWitness

end CharacteristicPMethodsFrobeniusEndomorphismLemmaCanonicalLaneLean
end HautevilleHouse
