import CharacteristicPMethodsFrobeniusEndomorphismLemmaCanonicalLaneLean.FrobeniusGateLemmas

namespace HautevilleHouse
namespace CharacteristicPMethodsFrobeniusEndomorphismLemmaCanonicalLaneLean

def ConstrainedFrobeniusEndomorphismLemmaClosure (A : FrobeniusAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_frobenius_endomorphism_lemma_endgame (A : FrobeniusAdmissibleClass) :
    ConstrainedFrobeniusEndomorphismLemmaClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CharacteristicPMethodsFrobeniusEndomorphismLemmaCanonicalLaneLean
end HautevilleHouse
