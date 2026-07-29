import canonicalLaneMathlib.AdmissibleClass
import CharacteristicPMethodsFrobeniusEndomorphismLemmaCanonicalLaneLean.FrobeniusEndomorphismObjects

namespace HautevilleHouse
namespace CharacteristicPMethodsFrobeniusEndomorphismLemmaCanonicalLaneLean

structure FrobeniusAdmissibleClass where
  object : FrobeniusAdmittedObject
  frobeniusPowerSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : frobeniusPowerSatisfied ∨ remainderRecorded

def ConstrainedFrobeniusClosure (A : FrobeniusAdmissibleClass) : Prop :=
  FrobeniusWitnessClosed A.object ∧ (A.frobeniusPowerSatisfied ∨ A.remainderRecorded)

end CharacteristicPMethodsFrobeniusEndomorphismLemmaCanonicalLaneLean
end HautevilleHouse
