import CharacteristicPMethodsFrobeniusEndomorphismLemmaCanonicalLaneLean.FrobeniusEndomorphismObjects

namespace HautevilleHouse
namespace CharacteristicPMethodsFrobeniusEndomorphismLemmaCanonicalLaneLean

structure PerfectClosurePackage (O : FrobeniusAdmittedObject) where
  frobeniusLimit : ℕ
  perfectClosureCarrier : Type
  perfectClosureRing : Ring perfectClosureCarrier
  perfectClosureChar : CharP perfectClosureCarrier O.primeCharacteristic
  frobeniusBijectiveOnClosure : Function.Bijective (fun x : perfectClosureCarrier => x ^ O.primeCharacteristic)
  canonicalMap : O.carrier → perfectClosureCarrier
  canonicalMapIsRingHom : IsRingHom canonicalMap
  completionClosed : Prop

structure PerfectClosureEvidence {O : FrobeniusAdmittedObject} (P : PerfectClosurePackage O) where
  completionClosedWitness : P.completionClosed

def PerfectClosureClosed {O : FrobeniusAdmittedObject} (P : PerfectClosurePackage O) : Prop :=
  P.completionClosed

theorem perfect_closure_closed_from_evidence
    {O : FrobeniusAdmittedObject} (P : PerfectClosurePackage O)
    (E : PerfectClosureEvidence P) : PerfectClosureClosed P :=
  E.completionClosedWitness

end CharacteristicPMethodsFrobeniusEndomorphismLemmaCanonicalLaneLean
end HautevilleHouse
