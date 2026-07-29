import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ElectricalEngineeringSemiconductorDevicesCanonicalLaneLean.AdmissibleClass
import HautevilleHouse.ElectricalEngineeringSemiconductorDevicesCanonicalLaneLean.SemiconductorBandStructure

namespace HautevilleHouse
namespace ElectricalEngineeringSemiconductorDevicesCanonicalLaneLean

structure BJTPackage where
  betaDC : ℝ
  earlyVoltage : ℝ
  saturationCurrent : ℝ

def BJTClosed (B : BJTPackage) : Prop :=
  B.betaDC > 0 ∧ B.earlyVoltage > 0

theorem bjt_closed (B : BJTPackage) (h : BJTClosed B) : BJTClosed B := h

end ElectricalEngineeringSemiconductorDevicesCanonicalLaneLean
end HautevilleHouse
