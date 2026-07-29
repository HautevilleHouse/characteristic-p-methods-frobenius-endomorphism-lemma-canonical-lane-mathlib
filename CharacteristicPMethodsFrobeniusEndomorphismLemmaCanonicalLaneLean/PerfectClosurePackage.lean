import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CharacteristicPMethodsFrobeniusEndomorphismLemmaCanonicalLaneLean.FrobeniusEndomorphismPackage

namespace HautevilleHouse
namespace CharacteristicPMethodsFrobeniusEndomorphismLemmaCanonicalLaneLean

structure PerfectClosurePackage {p : ℕ} [Fact (Nat.Prime p)] {F : FrobeniusEndomorphismPackage p} where
  perfectClosure : Type u
  [perfectClosureCommRing : CommRing perfectClosure]
  [perfectClosureCharP : CharP perfectClosure p]
  perfectClosure_map : F.domain → perfectClosure
  perfectClosure_map_injective : Function.Injective perfectClosure_map
  perfectClosure_surjective : Function.Surjective perfectClosure_map
  perfectClosure_perfect : PerfectRing perfectClosure p
  perfectClosure_frobenius_bijective : Function.Bijective (FrobeniusEndomorphismPackage.frobeniusMap (p := p) (F := { domain := perfectClosure, domainCommRing := perfectClosureCommRing, domainCharP := perfectClosureCharP, frobeniusMap := λ x => x ^ p, frobeniusEndomorphism := { toFun := λ x => x ^ p, map_one' := by simp, map_mul' := by simp [mul_pow], map_add' := by simp [add_pow_char] }, frobeniusPower := λ n x => x ^ (p ^ n), frobeniusIterated := λ n => RingHom.pow ({ toFun := λ x => x ^ p, map_one' := by simp, map_mul' := by simp [mul_pow], map_add' := by simp [add_pow_char] }) n }))

structure PerfectClosureEvidence {p : ℕ} [Fact (Nat.Prime p)] {F : FrobeniusEndomorphismPackage p} (P : PerfectClosurePackage p) where
  perfectClosure_map_closed : P.perfectClosure_map_injective ∧ P.perfectClosure_surjective
  perfectClosure_frobenius_bijective_closed : P.perfectClosure_frobenius_bijective

def PerfectClosureClosed {p : ℕ} [Fact (Nat.Prime p)] {F : FrobeniusEndomorphismPackage p} (P : PerfectClosurePackage p) : Prop :=
  P.perfectClosure_perfect := by
  exact P.perfectClosure_perfect

theorem perfect_closure_closed_from_evidence {p : ℕ} [Fact (Nat.Prime p)] {F : FrobeniusEndomorphismPackage p} (P : PerfectClosurePackage p) (E : PerfectClosureEvidence P) : PerfectClosureClosed P := by
  exact P.perfectClosure_perfect

end CharacteristicPMethodsFrobeniusEndomorphismLemmaCanonicalLaneLean
end HautevilleHouse