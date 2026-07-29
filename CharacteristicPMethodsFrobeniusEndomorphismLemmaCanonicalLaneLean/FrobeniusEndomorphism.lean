import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacteristicPMethodsFrobeniusEndomorphismLemmaCanonicalLaneLean

structure FrobeniusEndomorphismPackage where
  field : Type u
  characteristic : ℕ
  frobeniusMap : field → field
  frobeniusLinearity : Prop
  frobeniusMultiplicative : Prop
  frobeniusAdditive : Prop
  frobeniusLinearityTerm : frobeniusLinearity
  frobeniusMultiplicativeTerm : frobeniusMultiplicative
  frobeniusAdditiveTerm : frobeniusAdditive

structure FrobeniusEndomorphismEvidence (F : FrobeniusEndomorphismPackage) where
  frobeniusLinearityClosed : F.frobeniusLinearity
  frobeniusMultiplicativeClosed : F.frobeniusMultiplicative
  frobeniusAdditiveClosed : F.frobeniusAdditive

def FrobeniusEndomorphismClosed (F : FrobeniusEndomorphismPackage) : Prop :=
  F.frobeniusLinearity ∧ F.frobeniusMultiplicative ∧ F.frobeniusAdditive

theorem frobenius_endomorphism_closed_from_evidence (F : FrobeniusEndomorphismPackage)
    (E : FrobeniusEndomorphismEvidence F) : FrobeniusEndomorphismClosed F := by
  exact And.intro E.frobeniusLinearityClosed
    (And.intro E.frobeniusMultiplicativeClosed E.frobeniusAdditiveClosed)

end CharacteristicPMethodsFrobeniusEndomorphismLemmaCanonicalLaneLean
end HautevilleHouse