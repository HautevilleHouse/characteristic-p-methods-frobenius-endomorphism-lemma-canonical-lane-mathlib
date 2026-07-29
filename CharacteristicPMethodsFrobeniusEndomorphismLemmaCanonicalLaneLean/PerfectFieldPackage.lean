import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CharacteristicPMethodsFrobeniusEndomorphismLemmaCanonicalLaneLean.FrobeniusEndomorphismPackage

namespace HautevilleHouse
namespace CharacteristicPMethodsFrobeniusEndomorphismLemmaCanonicalLaneLean

structure PerfectFieldPackage (F : FrobeniusEndomorphismPackage) where
  field : Type u
  frobeniusSurjective : ∀ x, ∃ y, F.frobeniusMap y = x
  frobeniusInjective : ∀ x y, F.frobeniusMap x = F.frobeniusMap y → x = y
  perfectClosure : Prop

structure PerfectFieldEvidence {F : FrobeniusEndomorphismPackage} (P : PerfectFieldPackage F) where
  frobeniusSurjectiveClosed : ∀ x, ∃ y, F.frobeniusMap y = x
  frobeniusInjectiveClosed : ∀ x y, F.frobeniusMap x = F.frobeniusMap y → x = y
  perfectClosureClosed : P.perfectClosure

def PerfectFieldClosed {F : FrobeniusEndomorphismPackage} (P : PerfectFieldPackage F) : Prop :=
  (∀ x, ∃ y, F.frobeniusMap y = x) ∧
  (∀ x y, F.frobeniusMap x = F.frobeniusMap y → x = y) ∧
  P.perfectClosure

theorem perfect_field_closed_from_evidence {F : FrobeniusEndomorphismPackage}
    (P : PerfectFieldPackage F) (E : PerfectFieldEvidence P) : PerfectFieldClosed P := by
  exact And.intro E.frobeniusSurjectiveClosed (And.intro E.frobeniusInjectiveClosed E.perfectClosureClosed)

end CharacteristicPMethodsFrobeniusEndomorphismLemmaCanonicalLaneLean
end HautevilleHouse