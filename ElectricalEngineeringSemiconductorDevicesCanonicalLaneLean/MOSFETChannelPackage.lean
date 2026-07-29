import ElectricalEngineeringSemiconductorDevicesCanonicalLaneLean.BandgapJunctionPhysics

/-!
# MOSFET Channel Package
-/

namespace HautevilleHouse
namespace ElectricalEngineeringSemiconductorDevicesCanonicalLaneLean

structure MOSFETChannelPackage (B : BandgapJunctionPhysicsPackage) where
  thresholdVoltage : Type u
  channelLengthModulation : Type v
  drainCurrent : Type w
  thresholdVoltageFormula : Prop
  channelLengthModulationCoefficient : Prop
  drainCurrentEquation : Prop
  channelInversionCondition : Prop

structure MOSFETChannelEvidence {B : BandgapJunctionPhysicsPackage}
    (M : MOSFETChannelPackage B) where
  thresholdVoltageFormulaClosed : M.thresholdVoltageFormula
  channelLengthModulationCoefficientClosed : M.channelLengthModulationCoefficient
  drainCurrentEquationClosed : M.drainCurrentEquation
  channelInversionConditionClosed : M.channelInversionCondition

def MOSFETChannelClosed {B : BandgapJunctionPhysicsPackage}
    (M : MOSFETChannelPackage B) : Prop :=
  M.thresholdVoltageFormula ∧ M.channelLengthModulationCoefficient ∧
  M.drainCurrentEquation ∧ M.channelInversionCondition

theorem mosfet_channel_closed_from_evidence
    {B : BandgapJunctionPhysicsPackage} (M : MOSFETChannelPackage B)
    (E : MOSFETChannelEvidence M) : MOSFETChannelClosed M := by
  exact And.intro E.thresholdVoltageFormulaClosed
    (And.intro E.channelLengthModulationCoefficientClosed
      (And.intro E.drainCurrentEquationClosed E.channelInversionConditionClosed))

end ElectricalEngineeringSemiconductorDevicesCanonicalLaneLean
end HautevilleHouse