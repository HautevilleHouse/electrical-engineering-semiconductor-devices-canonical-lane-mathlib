import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringSemiconductorDevicesCanonicalLaneLean

structure CarrierTransportPackage {B : BandStructurePackage} (T : Temperature) where
  mobility : Type
  diffusivity : Type
  relaxationTime : Type
  scatteringMechanisms : List Type
  driftVelocity : Prop
  mobilitySatisfiesEinsteinRelation : Prop
  diffusivityConsistent : Prop
  relaxationTimePositive : Prop
  scatteringDominant : Prop

structure CarrierTransportEvidence {B : BandStructurePackage} {T : Temperature} (CT : CarrierTransportPackage B T) where
  mobilitySatisfiesEinsteinRelationClosed : CT.mobilitySatisfiesEinsteinRelation
  diffusivityConsistentClosed : CT.diffusivityConsistent
  relaxationTimePositiveClosed : CT.relaxationTimePositive
  scatteringDominantClosed : CT.scatteringDominant
  driftVelocityClosed : CT.driftVelocity

def CarrierTransportClosed {B : BandStructurePackage} {T : Temperature} (CT : CarrierTransportPackage B T) : Prop :=
  CT.mobilitySatisfiesEinsteinRelation ∧ CT.diffusivityConsistent ∧ CT.relaxationTimePositive ∧ CT.scatteringDominant ∧ CT.driftVelocity

theorem carrier_transport_closed_from_evidence {B : BandStructurePackage} {T : Temperature} (CT : CarrierTransportPackage B T) (E : CarrierTransportEvidence CT) : CarrierTransportClosed CT := by
  exact And.intro E.mobilitySatisfiesEinsteinRelationClosed
    (And.intro E.diffusivityConsistentClosed
      (And.intro E.relaxationTimePositiveClosed
        (And.intro E.scatteringDominantClosed E.driftVelocityClosed)))

end ElectricalEngineeringSemiconductorDevicesCanonicalLaneLean
end HautevilleHouse