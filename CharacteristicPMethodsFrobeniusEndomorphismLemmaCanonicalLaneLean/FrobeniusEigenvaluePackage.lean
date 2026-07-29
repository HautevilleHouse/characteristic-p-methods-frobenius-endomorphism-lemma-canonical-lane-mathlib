import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CharacteristicPMethodsFrobeniusEndomorphismLemmaCanonicalLaneLean.FrobeniusEndomorphismPackage

namespace HautevilleHouse
namespace CharacteristicPMethodsFrobeniusEndomorphismLemmaCanonicalLaneLean

structure FrobeniusEigenvaluePackage (F : FrobeniusEndomorphismPackage) where
  module : Type u
  scalars : F.field
  action : F.field → module → module
  frobeniusLinear : ∀ (c : F.field) (v : module), action (F.frobeniusMap c) (action c v) = action (F.frobeniusMap c) v
  eigenvalueCriterion : Prop

structure FrobeniusEigenvalueEvidence {F : FrobeniusEndomorphismPackage}
    (E : FrobeniusEigenvaluePackage F) where
  frobeniusLinearClosed : ∀ (c : F.field) (v : E.module), E.action (F.frobeniusMap c) (E.action c v) = E.action (F.frobeniusMap c) v
  eigenvalueCriterionClosed : E.eigenvalueCriterion

def FrobeniusEigenvalueClosed {F : FrobeniusEndomorphismPackage}
    (E : FrobeniusEigenvaluePackage F) : Prop :=
  (∀ (c : F.field) (v : E.module), E.action (F.frobeniusMap c) (E.action c v) = E.action (F.frobeniusMap c) v) ∧
  E.eigenvalueCriterion

theorem frobenius_eigenvalue_closed_from_evidence {F : FrobeniusEndomorphismPackage}
    (E : FrobeniusEigenvaluePackage F) (Ev : FrobeniusEigenvalueEvidence E) : FrobeniusEigenvalueClosed E := by
  exact And.intro Ev.frobeniusLinearClosed Ev.eigenvalueCriterionClosed

end CharacteristicPMethodsFrobeniusEndomorphismLemmaCanonicalLaneLean
end HautevilleHouse