import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringSemiconductorDevicesCanonicalLaneLean

structure CanonicalDeviceStructuresPackage (A : AdmissibleClass) where
  pnJunctionCanonical : Prop
  mosCapacitorCanonical : Prop
  bipolarTransistorCanonical : Prop
  fieldEffectTransistorCanonical : Prop

structure CanonicalDeviceStructuresEvidence (A : AdmissibleClass) (C : CanonicalDeviceStructuresPackage A) where
  pnJunctionCanonicalClosed : C.pnJunctionCanonical
  mosCapacitorCanonicalClosed : C.mosCapacitorCanonical
  bipolarTransistorCanonicalClosed : C.bipolarTransistorCanonical
  fieldEffectTransistorCanonicalClosed : C.fieldEffectTransistorCanonical

def CanonicalDeviceStructuresClosed (A : AdmissibleClass) (C : CanonicalDeviceStructuresPackage A) : Prop :=
  C.pnJunctionCanonical ∧ C.mosCapacitorCanonical ∧ C.bipolarTransistorCanonical ∧ C.fieldEffectTransistorCanonical

theorem canonical_device_structures_closed_from_evidence (A : AdmissibleClass) (C : CanonicalDeviceStructuresPackage A) (E : CanonicalDeviceStructuresEvidence A C) :
    CanonicalDeviceStructuresClosed A C := by
  exact And.intro E.pnJunctionCanonicalClosed
    (And.intro E.mosCapacitorCanonicalClosed
      (And.intro E.bipolarTransistorCanonicalClosed E.fieldEffectTransistorCanonicalClosed))

end ElectricalEngineeringSemiconductorDevicesCanonicalLaneLean
end HautevilleHouse