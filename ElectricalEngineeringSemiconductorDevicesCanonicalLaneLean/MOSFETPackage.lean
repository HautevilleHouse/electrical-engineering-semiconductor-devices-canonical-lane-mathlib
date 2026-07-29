import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringSemiconductorDevicesCanonicalLaneLean

structure MOSFETPackage {B : BandStructurePackage} {N : DopingProfile} {J : PNJunctionPackage B N} where
  thresholdVoltage : Prop
  subthresholdSlope : Prop
  drainCurrentEquation : Prop
  channelLengthModulation : Prop
  oxideCapacitance : Prop
  thresholdVoltageClosed : thresholdVoltage
  subthresholdSlopeClosed : subthresholdSlope
  drainCurrentEquationClosed : drainCurrentEquation
  channelLengthModulationClosed : channelLengthModulation
  oxideCapacitanceClosed : oxideCapacitance

structure MOSFETEvidence {B : BandStructurePackage} {N : DopingProfile} {J : PNJunctionPackage B N} (M : MOSFETPackage B N J) where
  thresholdVoltageClosed : M.thresholdVoltage
  subthresholdSlopeClosed : M.subthresholdSlope
  drainCurrentEquationClosed : M.drainCurrentEquation
  channelLengthModulationClosed : M.channelLengthModulation
  oxideCapacitanceClosed : M.oxideCapacitance

def MOSFETClosed {B : BandStructurePackage} {N : DopingProfile} {J : PNJunctionPackage B N} (M : MOSFETPackage B N J) : Prop :=
  M.thresholdVoltage ∧ M.subthresholdSlope ∧ M.drainCurrentEquation ∧ M.channelLengthModulation ∧ M.oxideCapacitance

theorem mosfet_closed_from_evidence {B : BandStructurePackage} {N : DopingProfile} {J : PNJunctionPackage B N} (M : MOSFETPackage B N J) (E : MOSFETEvidence M) : MOSFETClosed M := by
  exact And.intro E.thresholdVoltageClosed
    (And.intro E.subthresholdSlopeClosed
      (And.intro E.drainCurrentEquationClosed
        (And.intro E.channelLengthModulationClosed E.oxideCapacitanceClosed)))

end ElectricalEngineeringSemiconductorDevicesCanonicalLaneLean
end HautevilleHouse