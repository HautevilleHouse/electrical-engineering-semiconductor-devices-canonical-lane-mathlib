import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringSemiconductorDevicesCanonicalLaneLean

structure PNJunctionPackage where
  depletionApproximation : Prop
  builtInPotential : Prop
  spaceChargeRegion : Prop
  electricFieldProfile : Prop
  currentVoltageCharacteristic : Prop

structure PNJunctionEvidence (J : PNJunctionPackage) where
  depletionApproximationClosed : J.depletionApproximation
  builtInPotentialClosed : J.builtInPotential
  spaceChargeRegionClosed : J.spaceChargeRegion
  electricFieldProfileClosed : J.electricFieldProfile
  currentVoltageCharacteristicClosed : J.currentVoltageCharacteristic

def PNJunctionClosed (J : PNJunctionPackage) : Prop :=
  J.depletionApproximation ∧ J.builtInPotential ∧ J.spaceChargeRegion ∧ J.electricFieldProfile ∧ J.currentVoltageCharacteristic

theorem pn_junction_closed_from_evidence (J : PNJunctionPackage) (E : PNJunctionEvidence J) : PNJunctionClosed J := by
  exact And.intro E.depletionApproximationClosed (And.intro E.builtInPotentialClosed (And.intro E.spaceChargeRegionClosed (And.intro E.electricFieldProfileClosed E.currentVoltageCharacteristicClosed)))

end ElectricalEngineeringSemiconductorDevicesCanonicalLaneLean
end HautevilleHouse