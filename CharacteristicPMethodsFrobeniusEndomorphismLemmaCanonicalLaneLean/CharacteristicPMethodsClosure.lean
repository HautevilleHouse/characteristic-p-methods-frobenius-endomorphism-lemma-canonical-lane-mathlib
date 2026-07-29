import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CharacteristicPMethodsFrobeniusEndomorphismLemmaCanonicalLaneLean.FrobeniusLemmaPackage

namespace HautevilleHouse
namespace CharacteristicPMethodsFrobeniusEndomorphismLemmaCanonicalLaneLean

def ConstrainedFrobeniusClosure (p : ℕ) [Fact (Nat.Prime p)] (F : FrobeniusEndomorphismPackage p) (P : PerfectClosurePackage p) (A : FrobeniusActionPackage p) (L : FrobeniusLemmaPackage p) (Adm : A) : Prop :=
  FrobeniusLemmaClosed L ∧ bridgeClosed Adm ∧ gateClosed Adm

theorem constrained_frobenius_endgame (p : ℕ) [Fact (Nat.Prime p)] (F : FrobeniusEndomorphismPackage p) (P : PerfectClosurePackage p) (A : FrobeniusActionPackage p) (L : FrobeniusLemmaPackage p) (Adm : A) : ConstrainedFrobeniusClosure p F P A L Adm := by
  refine And.intro (frobenius_lemma_closed_from_evidence L ?_) (And.intro (bridge_from_admissible_class Adm) (gate_from_admissible_class Adm))
  exact { frobeniusLemmaStatementClosed := L.frobeniusLemmaProof, frobeniusLemmaProofClosed := L.frobeniusLemmaProof }

end CharacteristicPMethodsFrobeniusEndomorphismLemmaCanonicalLaneLean
end HautevilleHouse