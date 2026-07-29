import HautevilleHouse.CharacteristicPMethodsFrobeniusEndomorphismLemmaCanonicalLaneLean.FrobeniusTraceMap

namespace HautevilleHouse
namespace CharacteristicPMethodsFrobeniusEndomorphismLemmaCanonicalLaneLean

structure FrobeniusCohomologyPackage {F : FrobeniusEndomorphismPackage}
    {K : FrobeniusKernelPackage F} {T : FrobeniusTraceMapPackage K} where
  cohomologyClass : Type u
  frobeniusAction : cohomologyClass → cohomologyClass
  weightDecomposition : Prop
  stabilizerCondition : Prop
  weightDecompositionTerm : weightDecomposition
  stabilizerConditionTerm : stabilizerCondition

structure FrobeniusCohomologyEvidence {F : FrobeniusEndomorphismPackage}
    {K : FrobeniusKernelPackage F} {T : FrobeniusTraceMapPackage K}
    (C : FrobeniusCohomologyPackage T) where
  weightDecompositionClosed : C.weightDecomposition
  stabilizerConditionClosed : C.stabilizerCondition

def FrobeniusCohomologyClosed {F : FrobeniusEndomorphismPackage}
    {K : FrobeniusKernelPackage F} {T : FrobeniusTraceMapPackage K}
    (C : FrobeniusCohomologyPackage T) : Prop :=
  C.weightDecomposition ∧ C.stabilizerCondition

theorem frobenius_cohomology_closed_from_evidence {F : FrobeniusEndomorphismPackage}
    {K : FrobeniusKernelPackage F} {T : FrobeniusTraceMapPackage K}
    (C : FrobeniusCohomologyPackage T) (E : FrobeniusCohomologyEvidence C) :
    FrobeniusCohomologyClosed C := by
  exact And.intro E.weightDecompositionClosed E.stabilizerConditionClosed

end CharacteristicPMethodsFrobeniusEndomorphismLemmaCanonicalLaneLean
end HautevilleHouse