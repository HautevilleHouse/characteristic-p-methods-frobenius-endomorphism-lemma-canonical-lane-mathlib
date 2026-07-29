import CharacteristicPMethodsFrobeniusEndomorphismLemmaCanonicalLaneLean.AdmissibleFrobeniusClass

namespace HautevilleHouse
namespace CharacteristicPMethodsFrobeniusEndomorphismLemmaCanonicalLaneLean

def bridgeClosed (A : FrobeniusAdmissibleClass) : Prop :=
  FrobeniusWitnessClosed A.object

theorem bridge_from_admissible_class (A : FrobeniusAdmissibleClass) : bridgeClosed A :=
  A.object.conclusion

end CharacteristicPMethodsFrobeniusEndomorphismLemmaCanonicalLaneLean
end HautevilleHouse
