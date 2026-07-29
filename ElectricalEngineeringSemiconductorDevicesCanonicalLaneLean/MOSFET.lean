import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ElectricalEngineeringSemiconductorDevicesCanonicalLaneLean.AdmissibleClass
import HautevilleHouse.ElectricalEngineeringSemiconductorDevicesCanonicalLaneLean.SemiconductorBandStructure

namespace HautevilleHouse
namespace ElectricalEngineeringSemiconductorDevicesCanonicalLaneLean

structure MOSFETPackage where
  thresholdVoltage : ℝ
  oxideThickness : ℝ
  channelLength : ℝ
  channelWidth : ℝ
  carrierMobility : ℝ

def MOSFETClosed (M : MOSFETPackage) : Prop :=
  M.thresholdVoltage > 0 ∧ M.oxideThickness > 0 ∧ M.carrierMobility > 0

theorem mosfet_closed (M : MOSFETPackage) (h : MOSFETClosed M) : MOSFETClosed M := h

end ElectricalEngineeringSemiconductorDevicesCanonicalLaneLean
end HautevilleHouse
