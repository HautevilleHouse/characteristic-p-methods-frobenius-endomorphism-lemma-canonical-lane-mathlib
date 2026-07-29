import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CharacteristicPMethodsFrobeniusEndomorphismLemmaCanonicalLaneLean.FrobeniusEndomorphismPackage

namespace HautevilleHouse
namespace CharacteristicPMethodsFrobeniusEndomorphismLemmaCanonicalLaneLean

structure FrobeniusSheafPackage (F : FrobeniusEndomorphismPackage) where
  scheme : Type u
  structureSheaf : scheme → Type v
  frobeniusPullback : scheme → scheme
  frobeniusCompatible : ∀ (U : scheme) (s : structureSheaf U), frobeniusPullback U = U

structure FrobeniusSheafEvidence {F : FrobeniusEndomorphismPackage}
    (S : FrobeniusSheafPackage F) where
  frobeniusCompatibleClosed : ∀ (U : S.scheme) (s : S.structureSheaf U), S.frobeniusPullback U = U

def FrobeniusSheafClosed {F : FrobeniusEndomorphismPackage}
    (S : FrobeniusSheafPackage F) : Prop :=
  ∀ (U : S.scheme) (s : S.structureSheaf U), S.frobeniusPullback U = U

theorem frobenius_sheaf_closed_from_evidence {F : FrobeniusEndomorphismPackage}
    (S : FrobeniusSheafPackage F) (Ev : FrobeniusSheafEvidence S) : FrobeniusSheafClosed S := by
  exact Ev.frobeniusCompatibleClosed

end CharacteristicPMethodsFrobeniusEndomorphismLemmaCanonicalLaneLean
end HautevilleHouse