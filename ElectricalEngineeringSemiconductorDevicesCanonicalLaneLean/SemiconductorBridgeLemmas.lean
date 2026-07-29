import canonicalLaneMathlib.AdmissibleClass
import ElectricalEngineeringSemiconductorDevicesCanonicalLaneLean.SemiconductorAdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringSemiconductorDevicesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.bandGapPositive ∧ A.object.mobilityPositive

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact And.intro A.object.bandGapPositive A.object.mobilityPositive

end ElectricalEngineeringSemiconductorDevicesCanonicalLaneLean
end HautevilleHouse