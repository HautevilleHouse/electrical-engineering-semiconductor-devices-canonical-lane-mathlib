import ElectricalEngineeringSemiconductorDevicesCanonicalLaneLean.MOSFETChannelPackage

/-!
# VLSI Circuit Topology Package
-/

namespace HautevilleHouse
namespace ElectricalEngineeringSemiconductorDevicesCanonicalLaneLean

structure VLSICircuitTopologyPackage {B : BandgapJunctionPhysicsPackage}
    (M : MOSFETChannelPackage B) where
  logicGates : Type u
  interconnectDelay : Type v
  powerDissipation : Type w
  combinationalLogicImplemented : Prop
  timingConstraintsSatisfied : Prop
  noiseMarginSatisfied : Prop
  fanOutDriveCapability : Prop

structure VLSICircuitTopologyEvidence {B : BandgapJunctionPhysicsPackage}
    {M : MOSFETChannelPackage B} (V : VLSICircuitTopologyPackage M) where
  combinationalLogicImplementedClosed : V.combinationalLogicImplemented
  timingConstraintsSatisfiedClosed : V.timingConstraintsSatisfied
  noiseMarginSatisfiedClosed : V.noiseMarginSatisfied
  fanOutDriveCapabilityClosed : V.fanOutDriveCapability

def VLSICircuitTopologyClosed {B : BandgapJunctionPhysicsPackage}
    {M : MOSFETChannelPackage B} (V : VLSICircuitTopologyPackage M) : Prop :=
  V.combinationalLogicImplemented ∧ V.timingConstraintsSatisfied ∧
  V.noiseMarginSatisfied ∧ V.fanOutDriveCapability

theorem vlsi_circuit_topology_closed_from_evidence
    {B : BandgapJunctionPhysicsPackage} {M : MOSFETChannelPackage B}
    (V : VLSICircuitTopologyPackage M) (E : VLSICircuitTopologyEvidence V) :
    VLSICircuitTopologyClosed V := by
  exact And.intro E.combinationalLogicImplementedClosed
    (And.intro E.timingConstraintsSatisfiedClosed
      (And.intro E.noiseMarginSatisfiedClosed E.fanOutDriveCapabilityClosed))

end ElectricalEngineeringSemiconductorDevicesCanonicalLaneLean
end HautevilleHouse