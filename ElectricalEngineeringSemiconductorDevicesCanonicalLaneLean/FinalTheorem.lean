import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ElectricalEngineeringSemiconductorDevicesCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.ElectricalEngineeringSemiconductorDevicesCanonicalLaneLean.GateLemmas
import HautevilleHouse.ElectricalEngineeringSemiconductorDevicesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringSemiconductorDevicesCanonicalLaneLean

def ConstrainedSemiconductorClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_semiconductor_endgame (A : AdmissibleClass) :
    ConstrainedSemiconductorClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ElectricalEngineeringSemiconductorDevicesCanonicalLaneLean
end HautevilleHouse
