import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringSemiconductorDevicesCanonicalLaneLean

structure MOSFETChannelPackage where
  thresholdVoltage : ℝ
  oxideThickness : ℝ
  channelLength : ℝ
  channelWidth : ℝ
  carrierMobility : ℝ
  thresholdVoltagePositive : thresholdVoltage > 0
  oxideThicknessPositive : oxideThickness > 0

structure MOSFETChannelEvidence (M : MOSFETChannelPackage) where
  thresholdVoltageClosed : M.thresholdVoltage > 0
  oxideThicknessClosed : M.oxideThickness > 0
  channelLengthClosed : M.channelLength > 0
  channelWidthClosed : M.channelWidth > 0
  carrierMobilityClosed : M.carrierMobility > 0

def MOSFETChannelClosed (M : MOSFETChannelPackage) : Prop :=
  M.thresholdVoltage > 0 ∧ M.oxideThickness > 0 ∧ M.channelLength > 0 ∧ M.channelWidth > 0 ∧ M.carrierMobility > 0

theorem mosfet_channel_closed_from_evidence (M : MOSFETChannelPackage) (E : MOSFETChannelEvidence M) :
    MOSFETChannelClosed M := by
  exact And.intro E.thresholdVoltageClosed
    (And.intro E.oxideThicknessClosed
      (And.intro E.channelLengthClosed
        (And.intro E.channelWidthClosed E.carrierMobilityClosed)))

end ElectricalEngineeringSemiconductorDevicesCanonicalLaneLean
end HautevilleHouse