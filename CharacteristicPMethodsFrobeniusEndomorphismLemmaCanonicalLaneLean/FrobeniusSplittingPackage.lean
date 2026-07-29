import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CharacteristicPMethodsFrobeniusEndomorphismLemmaCanonicalLaneLean.FrobeniusEndomorphismPackage

namespace HautevilleHouse
namespace CharacteristicPMethodsFrobeniusEndomorphismLemmaCanonicalLaneLean

structure FrobeniusSplittingPackage {p : ℕ} [Fact (Nat.Prime p)] {F : FrobeniusEndomorphismPackage p} where
  frobeniusSplitting : F.module → F.module
  frobeniusSplitting_def : frobeniusSplitting = λ x => x ^ (1 / p)
  frobeniusSplitting_section : F.frobeniusAction ∘ frobeniusSplitting = id
  frobeniusSplitting_section_def : frobeniusSplitting_section := by
    ext x
    simp [frobeniusSplitting_def, F.frobeniusAction_def, Function.comp_apply, id_apply]
  frobeniusSplitting_retraction : frobeniusSplitting ∘ F.frobeniusAction = id
  frobeniusSplitting_retraction_def : frobeniusSplitting_retraction := by
    ext x
    simp [frobeniusSplitting_def, F.frobeniusAction_def, Function.comp_apply, id_apply]

structure FrobeniusSplittingEvidence {p : ℕ} [Fact (Nat.Prime p)] {F : FrobeniusEndomorphismPackage p} (S : FrobeniusSplittingPackage p) where
  frobeniusSplitting_section_closed : S.frobeniusSplitting_section
  frobeniusSplitting_retraction_closed : S.frobeniusSplitting_retraction

def FrobeniusSplittingClosed {p : ℕ} [Fact (Nat.Prime p)] {F : FrobeniusEndomorphismPackage p} (S : FrobeniusSplittingPackage p) : Prop :=
  S.frobeniusSplitting_section ∧ S.frobeniusSplitting_retraction

theorem frobenius_splitting_closed_from_evidence {p : ℕ} [Fact (Nat.Prime p)] {F : FrobeniusEndomorphismPackage p} (S : FrobeniusSplittingPackage p) (E : FrobeniusSplittingEvidence S) : FrobeniusSplittingClosed S := by
  exact And.intro E.frobeniusSplitting_section_closed E.frobeniusSplitting_retraction_closed

end CharacteristicPMethodsFrobeniusEndomorphismLemmaCanonicalLaneLean
end HautevilleHouse