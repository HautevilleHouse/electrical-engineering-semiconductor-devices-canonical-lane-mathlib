import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringSemiconductorDevicesCanonicalLaneLean

structure EndpointDeviceCharacteristicsPackage (A : AdmissibleClass) where
  thresholdVoltage : Prop
  breakdownVoltage : Prop
  saturationCurrent : Prop
  cutoffFrequency : Prop
  targetDeviceParameter : Prop

structure EndpointDeviceCharacteristicsEvidence (A : AdmissibleClass) (E : EndpointDeviceCharacteristicsPackage A) where
  thresholdVoltageClosed : E.thresholdVoltage
  breakdownVoltageClosed : E.breakdownVoltage
  saturationCurrentClosed : E.saturationCurrent
  cutoffFrequencyClosed : E.cutoffFrequency
  targetDeviceParameterClosed : E.targetDeviceParameter

def EndpointDeviceCharacteristicsClosed (A : AdmissibleClass) (E : EndpointDeviceCharacteristicsPackage A) : Prop :=
  E.thresholdVoltage ∧ E.breakdownVoltage ∧ E.saturationCurrent ∧ E.cutoffFrequency ∧ E.targetDeviceParameter

theorem endpoint_device_characteristics_closed_from_evidence (A : AdmissibleClass) (E : EndpointDeviceCharacteristicsPackage A) (Ev : EndpointDeviceCharacteristicsEvidence A E) :
    EndpointDeviceCharacteristicsClosed A E := by
  exact And.intro Ev.thresholdVoltageClosed
    (And.intro Ev.breakdownVoltageClosed
      (And.intro Ev.saturationCurrentClosed
        (And.intro Ev.cutoffFrequencyClosed Ev.targetDeviceParameterClosed)))

end ElectricalEngineeringSemiconductorDevicesCanonicalLaneLean
end HautevilleHouse