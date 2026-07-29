import CharacteristicPMethodsFrobeniusEndomorphismLemmaCanonicalLaneLean.FrobeniusBridgeLemmas

namespace HautevilleHouse
namespace CharacteristicPMethodsFrobeniusEndomorphismLemmaCanonicalLaneLean

def gateClosed (A : FrobeniusAdmissibleClass) : Prop :=
  A.frobeniusPowerSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : FrobeniusAdmissibleClass) : gateClosed A :=
  A.gateWitness

end CharacteristicPMethodsFrobeniusEndomorphismLemmaCanonicalLaneLean
end HautevilleHouse
