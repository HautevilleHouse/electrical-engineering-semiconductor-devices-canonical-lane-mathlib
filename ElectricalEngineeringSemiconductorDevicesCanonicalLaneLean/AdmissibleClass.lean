import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringSemiconductorDevicesCanonicalLaneLean

structure SemiconductorDeviceState where
  carrier : Type
  topology : TopologicalSpace carrier

structure SemiconductorAdmittedObject where
  device : SemiconductorDeviceState
  equilibriumEstablished : Prop
  biasApplied : Prop
  conclusion : Prop

structure AdmissibleClass where
  object : SemiconductorAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ElectricalEngineeringSemiconductorDevicesCanonicalLaneLean
end HautevilleHouse
