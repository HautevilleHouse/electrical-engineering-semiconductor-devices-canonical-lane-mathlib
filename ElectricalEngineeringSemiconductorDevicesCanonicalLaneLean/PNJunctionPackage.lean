import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringSemiconductorDevicesCanonicalLaneLean

structure PNJunctionPackage {B : BandStructurePackage} (N : DopingProfile) where
  builtInPotential : Prop
  depletionWidth : Prop
  currentVoltageCharacteristic : Prop
  breakdownVoltage : Prop
  capacitanceVoltage : Prop
  builtInPotentialClosed : builtInPotential
  depletionWidthClosed : depletionWidth
  currentVoltageCharacteristicClosed : currentVoltageCharacteristic
  breakdownVoltageClosed : breakdownVoltage
  capacitanceVoltageClosed : capacitanceVoltage

structure PNJunctionEvidence {B : BandStructurePackage} {N : DopingProfile} (P : PNJunctionPackage B N) where
  builtInPotentialClosed : P.builtInPotential
  depletionWidthClosed : P.depletionWidth
  currentVoltageCharacteristicClosed : P.currentVoltageCharacteristic
  breakdownVoltageClosed : P.breakdownVoltage
  capacitanceVoltageClosed : P.capacitanceVoltage

def PNJunctionClosed {B : BandStructurePackage} {N : DopingProfile} (P : PNJunctionPackage B N) : Prop :=
  P.builtInPotential ∧ P.depletionWidth ∧ P.currentVoltageCharacteristic ∧ P.breakdownVoltage ∧ P.capacitanceVoltage

theorem pn_junction_closed_from_evidence {B : BandStructurePackage} {N : DopingProfile} (P : PNJunctionPackage B N) (E : PNJunctionEvidence P) : PNJunctionClosed P := by
  exact And.intro E.builtInPotentialClosed
    (And.intro E.depletionWidthClosed
      (And.intro E.currentVoltageCharacteristicClosed
        (And.intro E.breakdownVoltageClosed E.capacitanceVoltageClosed)))

end ElectricalEngineeringSemiconductorDevicesCanonicalLaneLean
end HautevilleHouse