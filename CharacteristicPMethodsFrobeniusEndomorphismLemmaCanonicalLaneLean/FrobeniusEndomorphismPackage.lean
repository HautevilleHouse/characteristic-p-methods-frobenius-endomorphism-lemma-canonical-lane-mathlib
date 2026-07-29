import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacteristicPMethodsFrobeniusEndomorphismLemmaCanonicalLaneLean

structure FrobeniusEndomorphismPackage (p : ℕ) [Fact (Nat.Prime p)] where
  domain : Type u
  [domainCommRing : CommRing domain]
  [domainCharP : CharP domain p]
  frobeniusMap : domain → domain
  frobeniusMap_def : frobeniusMap = λ x => x ^ p
  frobeniusEndomorphism : RingHom domain domain
  frobeniusEndomorphism_def : frobeniusEndomorphism = { toFun := frobeniusMap, map_one' := by simp [frobeniusMap_def], map_mul' := by simp [frobeniusMap_def, mul_pow], map_add' := by simp [frobeniusMap_def, add_pow_char] }
  frobeniusPower : ℕ → domain → domain
  frobeniusPower_def (n : ℕ) : frobeniusPower n = λ x => x ^ (p ^ n)
  frobeniusIterated : ℕ → RingHom domain domain
  frobeniusIterated_def (n : ℕ) : frobeniusIterated n = RingHom.pow (frobeniusEndomorphism) n

structure FrobeniusEndomorphismEvidence {p : ℕ} [Fact (Nat.Prime p)] (F : FrobeniusEndomorphismPackage p) where
  frobeniusRingHomClosed : RingHom F.domain F.domain
  frobeniusPowerClosed (n : ℕ) : F.domain → F.domain
  frobeniusIteratedClosed (n : ℕ) : RingHom F.domain F.domain
  frobeniusRingHomClosed_def : frobeniusRingHomClosed = F.frobeniusEndomorphism
  frobeniusPowerClosed_def (n : ℕ) : frobeniusPowerClosed n = F.frobeniusPower n
  frobeniusIteratedClosed_def (n : ℕ) : frobeniusIteratedClosed n = F.frobeniusIterated n

def FrobeniusEndomorphismClosed {p : ℕ} [Fact (Nat.Prime p)] (F : FrobeniusEndomorphismPackage p) : Prop :=
  F.frobeniusEndomorphism = RingHom.id F.domain := by
  exact rfl

theorem frobenius_endomorphism_closed_from_evidence {p : ℕ} [Fact (Nat.Prime p)] (F : FrobeniusEndomorphismPackage p) (E : FrobeniusEndomorphismEvidence F) : FrobeniusEndomorphismClosed F := by
  rfl

end CharacteristicPMethodsFrobeniusEndomorphismLemmaCanonicalLaneLean
end HautevilleHouse