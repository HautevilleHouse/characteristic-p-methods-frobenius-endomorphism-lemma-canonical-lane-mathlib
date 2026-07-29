import HautevilleHouse.CharacteristicPMethodsFrobeniusEndomorphismLemmaCanonicalLaneLean.FrobeniusCohomology

namespace HautevilleHouse
namespace CharacteristicPMethodsFrobeniusEndomorphismLemmaCanonicalLaneLean

structure FrobeniusLiftingPackage {F : FrobeniusEndomorphismPackage}
    {K : FrobeniusKernelPackage F} {T : FrobeniusTraceMapPackage K}
    {C : FrobeniusCohomologyPackage T} where
  lift : F.field → F.field
  liftCompatibleWithFrobenius : Prop
  liftUnique : Prop
  liftCompatibleWithFrobeniusTerm : liftCompatibleWithFrobenius
  liftUniqueTerm : liftUnique

structure FrobeniusLiftingEvidence {F : FrobeniusEndomorphismPackage}
    {K : FrobeniusKernelPackage F} {T : FrobeniusTraceMapPackage K}
    {C : FrobeniusCohomologyPackage T} (L : FrobeniusLiftingPackage C) where
  liftCompatibleWithFrobeniusClosed : L.liftCompatibleWithFrobenius
  liftUniqueClosed : L.liftUnique

def FrobeniusLiftingClosed {F : FrobeniusEndomorphismPackage}
    {K : FrobeniusKernelPackage F} {T : FrobeniusTraceMapPackage K}
    {C : FrobeniusCohomologyPackage T} (L : FrobeniusLiftingPackage C) : Prop :=
  L.liftCompatibleWithFrobenius ∧ L.liftUnique

theorem frobenius_lifting_closed_from_evidence {F : FrobeniusEndomorphismPackage}
    {K : FrobeniusKernelPackage F} {T : FrobeniusTraceMapPackage K}
    {C : FrobeniusCohomologyPackage T} (L : FrobeniusLiftingPackage C)
    (E : FrobeniusLiftingEvidence L) : FrobeniusLiftingClosed L := by
  exact And.intro E.liftCompatibleWithFrobeniusClosed E.liftUniqueClosed

end CharacteristicPMethodsFrobeniusEndomorphismLemmaCanonicalLaneLean
end HautevilleHouse