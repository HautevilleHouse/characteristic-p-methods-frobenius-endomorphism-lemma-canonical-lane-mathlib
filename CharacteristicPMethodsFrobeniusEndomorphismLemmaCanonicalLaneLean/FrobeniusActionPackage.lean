import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CharacteristicPMethodsFrobeniusEndomorphismLemmaCanonicalLaneLean.FrobeniusEndomorphismPackage

namespace HautevilleHouse
namespace CharacteristicPMethodsFrobeniusEndomorphismLemmaCanonicalLaneLean

structure FrobeniusActionPackage {p : ℕ} [Fact (Nat.Prime p)] {F : FrobeniusEndomorphismPackage p} where
  module : Type u
  [moduleRing : CommRing module]
  [moduleCharP : CharP module p]
  frobeniusAction : module → module
  frobeniusAction_def : frobeniusAction = λ x => x ^ p
  frobeniusActionLinear : LinearMap (RingHom.id F.domain) module module
  frobeniusActionLinear_def : frobeniusActionLinear = { toFun := frobeniusAction, map_add' := by simp [frobeniusAction_def, add_pow_char], map_smul' := by simp [frobeniusAction_def, mul_pow, smul_eq_mul] }
  frobeniusSemiLinear : module → module
  frobeniusSemiLinear_def : frobeniusSemiLinear = λ x => (F.frobeniusEndomorphism) (x)

structure FrobeniusActionEvidence {p : ℕ} [Fact (Nat.Prime p)] {F : FrobeniusEndomorphismPackage p} (A : FrobeniusActionPackage p) where
  frobeniusActionLinearClosed : A.frobeniusActionLinear = 0 := by
    simp [A.frobeniusActionLinear_def, A.frobeniusAction_def]
  frobeniusSemiLinearClosed : A.frobeniusSemiLinear = 0 := by
    simp [A.frobeniusSemiLinear_def]

def FrobeniusActionClosed {p : ℕ} [Fact (Nat.Prime p)] {F : FrobeniusEndomorphismPackage p} (A : FrobeniusActionPackage p) : Prop :=
  A.frobeniusActionLinear = 0 := by
  simp

theorem frobenius_action_closed_from_evidence {p : ℕ} [Fact (Nat.Prime p)] {F : FrobeniusEndomorphismPackage p} (A : FrobeniusActionPackage p) (E : FrobeniusActionEvidence A) : FrobeniusActionClosed A := by
  exact E.frobeniusActionLinearClosed

end CharacteristicPMethodsFrobeniusEndomorphismLemmaCanonicalLaneLean
end HautevilleHouse