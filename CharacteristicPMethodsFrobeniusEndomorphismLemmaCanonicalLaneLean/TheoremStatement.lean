import HautevilleHouse.CharacteristicPMethodsFrobeniusEndomorphismLemmaCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace CharacteristicPMethodsFrobeniusEndomorphismLemmaCanonicalLaneLean

structure TheoremStatement where
  theoremName : String
  statement : Prop
  proof : ConstrainedFrobeniusEndomorphismClosure (AdmissibleClass.mk (FrobeniusEndomorphismAdmittedObject.mk (by exact True) (by exact True)) (by exact True) (by exact True) (by exact Or.inl (by exact True)))

end CharacteristicPMethodsFrobeniusEndomorphismLemmaCanonicalLaneLean
end HautevilleHouse