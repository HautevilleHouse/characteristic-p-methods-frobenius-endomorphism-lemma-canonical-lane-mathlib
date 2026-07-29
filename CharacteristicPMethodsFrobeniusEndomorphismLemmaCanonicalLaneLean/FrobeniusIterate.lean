import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacteristicPMethodsFrobeniusEndomorphismLemmaCanonicalLaneLean

structure FrobeniusIterationPackage {A : FrobeniusAdmissibleObject} where
  iterateImage : ℕ → A.object.charPolyRing → A.object.charPolyRing
  fixedFieldSat : Prop
  imageClosed : Prop
  fixedFieldSatClosed : fixedFieldSat
  imageClosedClosed : imageClosed

structure FrobeniusIterationEvidence {A : FrobeniusAdmissibleObject}
    (P : FrobeniusIterationPackage A) where
  fixedFieldSatClosed : P.fixedFieldSat
  imageClosedClosed : P.imageClosed

def FrobeniusIterationClosed {A : FrobeniusAdmissibleObject}
    (P : FrobeniusIterationPackage A) : Prop :=
  P.fixedFieldSat ∧ P.imageClosed

theorem frobenius_iteration_closed_from_evidence
    {A : FrobeniusAdmissibleObject} (P : FrobeniusIterationPackage A)
    (E : FrobeniusIterationEvidence P) : FrobeniusIterationClosed P := by
  exact And.intro E.fixedFieldSatClosed E.imageClosedClosed

end CharacteristicPMethodsFrobeniusEndomorphismLemmaCanonicalLaneLean
end HautevilleHouse