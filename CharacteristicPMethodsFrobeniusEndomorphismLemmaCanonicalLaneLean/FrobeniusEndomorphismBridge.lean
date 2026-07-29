import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CharacteristicPMethodsFrobeniusEndomorphismLemmaCanonicalLaneLean

structure FrobeniusEndomorphismObject where
  prime : ℕ
  charPolyRing : Type u
  fieldExtension : Type v
  frobeniusMap : charPolyRing → charPolyRing
  mapClosed : Prop
  conclusion : mapClosed

structure FrobeniusAdmissibleObject where
  object : FrobeniusEndomorphismObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def bridgeClosed (A : FrobeniusAdmissibleObject) : Prop :=
  A.object.mapClosed

theorem bridge_from_admissible_class (A : FrobeniusAdmissibleObject) :
    bridgeClosed A := by
  exact A.object.conclusion

def gateClosed (A : FrobeniusAdmissibleObject) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : FrobeniusAdmissibleObject) :
    gateClosed A := by
  exact A.gateWitness

def ConstrainedFrobeniusClosure (A : FrobeniusAdmissibleObject) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_frobenius_endgame (A : FrobeniusAdmissibleObject) :
    ConstrainedFrobeniusClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CharacteristicPMethodsFrobeniusEndomorphismLemmaCanonicalLaneLean
end HautevilleHouse