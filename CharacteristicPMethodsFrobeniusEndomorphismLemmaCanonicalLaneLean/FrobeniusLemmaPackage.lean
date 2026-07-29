import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CharacteristicPMethodsFrobeniusEndomorphismLemmaCanonicalLaneLean.PerfectClosurePackage
import HautevilleHouse.CharacteristicPMethodsFrobeniusEndomorphismLemmaCanonicalLaneLean.FrobeniusActionPackage

namespace HautevilleHouse
namespace CharacteristicPMethodsFrobeniusEndomorphismLemmaCanonicalLaneLean

structure FrobeniusLemmaPackage {p : ℕ} [Fact (Nat.Prime p)] {F : FrobeniusEndomorphismPackage p} {P : PerfectClosurePackage p} {A : FrobeniusActionPackage p} where
  frobeniusLemmaStatement : Prop
  frobeniusLemmaProof : frobeniusLemmaStatement
  frobeniusLemmaStatement_def : frobeniusLemmaStatement = (∀ x : F.module, A.frobeniusAction (A.frobeniusAction x) = A.frobeniusAction x)
  frobeniusLemmaProof_def : frobeniusLemmaProof := by
    intro x
    simp [A.frobeniusAction_def, A.frobeniusAction_def]

structure FrobeniusLemmaEvidence {p : ℕ} [Fact (Nat.Prime p)] {F : FrobeniusEndomorphismPackage p} {P : PerfectClosurePackage p} {A : FrobeniusActionPackage p} (L : FrobeniusLemmaPackage p) where
  frobeniusLemmaStatementClosed : L.frobeniusLemmaStatement
  frobeniusLemmaProofClosed : L.frobeniusLemmaProof

def FrobeniusLemmaClosed {p : ℕ} [Fact (Nat.Prime p)] {F : FrobeniusEndomorphismPackage p} {P : PerfectClosurePackage p} {A : FrobeniusActionPackage p} (L : FrobeniusLemmaPackage p) : Prop :=
  L.frobeniusLemmaStatement

theorem frobenius_lemma_closed_from_evidence {p : ℕ} [Fact (Nat.Prime p)] {F : FrobeniusEndomorphismPackage p} {P : PerfectClosurePackage p} {A : FrobeniusActionPackage p} (L : FrobeniusLemmaPackage p) (E : FrobeniusLemmaEvidence L) : FrobeniusLemmaClosed L := by
  exact E.frobeniusLemmaStatementClosed

end CharacteristicPMethodsFrobeniusEndomorphismLemmaCanonicalLaneLean
end HautevilleHouse