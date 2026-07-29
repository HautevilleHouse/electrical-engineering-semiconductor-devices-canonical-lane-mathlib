import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringSemiconductorDevicesCanonicalLaneLean

structure SemiconductorAdmittedObject where
  bandGap : ℝ
  electronMobility : ℝ
  holeMobility : ℝ
  intrinsicCarrierConcentration : ℝ
  relativePermittivity : ℝ
  bandGapPositive : bandGap > 0
  mobilityPositive : electronMobility > 0 ∧ holeMobility > 0

structure AdmissibleClass where
  object : SemiconductorAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

end ElectricalEngineeringSemiconductorDevicesCanonicalLaneLean
end HautevilleHouse