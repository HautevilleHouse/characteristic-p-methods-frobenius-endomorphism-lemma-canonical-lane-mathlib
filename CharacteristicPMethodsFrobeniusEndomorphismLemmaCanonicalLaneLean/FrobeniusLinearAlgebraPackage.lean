import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CharacteristicPMethodsFrobeniusEndomorphismLemmaCanonicalLaneLean.FrobeniusEndomorphismPackage

namespace HautevilleHouse
namespace CharacteristicPMethodsFrobeniusEndomorphismLemmaCanonicalLaneLean

structure FrobeniusLinearAlgebraPackage (F : FrobeniusEndomorphismPackage) where
  vectorSpace : Type u
  scalars : F.field
  plus : vectorSpace → vectorSpace → vectorSpace
  smul : F.field → vectorSpace → vectorSpace
  frobeniusMapOnVectors : vectorSpace → vectorSpace
  frobeniusSemilinear : ∀ (c : F.field) (v w : vectorSpace),
    frobeniusMapOnVectors (smul c v + w) = smul (F.frobeniusMap c) (frobeniusMapOnVectors v) + frobeniusMapOnVectors w
  dimension : ℕ
  basis : vectorSpace → vectorSpace

structure FrobeniusLinearAlgebraEvidence {F : FrobeniusEndomorphismPackage}
    (L : FrobeniusLinearAlgebraPackage F) where
  frobeniusSemilinearClosed : ∀ (c : F.field) (v w : L.vectorSpace),
    L.frobeniusMapOnVectors (L.smul c v + w) = L.smul (F.frobeniusMap c) (L.frobeniusMapOnVectors v) + L.frobeniusMapOnVectors w
  basisClosed : L.basis = L.basis

def FrobeniusLinearAlgebraClosed {F : FrobeniusEndomorphismPackage}
    (L : FrobeniusLinearAlgebraPackage F) : Prop :=
  (∀ (c : F.field) (v w : L.vectorSpace),
    L.frobeniusMapOnVectors (L.smul c v + w) = L.smul (F.frobeniusMap c) (L.frobeniusMapOnVectors v) + L.frobeniusMapOnVectors w) ∧
  (L.basis = L.basis)

theorem frobenius_linear_algebra_closed_from_evidence {F : FrobeniusEndomorphismPackage}
    (L : FrobeniusLinearAlgebraPackage F) (Ev : FrobeniusLinearAlgebraEvidence L) : FrobeniusLinearAlgebraClosed L := by
  exact And.intro Ev.frobeniusSemilinearClosed Ev.basisClosed

end CharacteristicPMethodsFrobeniusEndomorphismLemmaCanonicalLaneLean
end HautevilleHouse