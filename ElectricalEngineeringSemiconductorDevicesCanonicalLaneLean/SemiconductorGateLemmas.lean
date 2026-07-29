import canonicalLaneMathlib.AdmissibleClass
import ElectricalEngineeringSemiconductorDevicesCanonicalLaneLean.SemiconductorBridgeLemmas

namespace HautevilleHouse
namespace ElectricalEngineeringSemiconductorDevicesCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end ElectricalEngineeringSemiconductorDevicesCanonicalLaneLean
end HautevilleHouse