import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ElectricalEngineeringSemiconductorDevicesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringSemiconductorDevicesCanonicalLaneLean

structure BandStructurePackage where
  bandGap : ℝ
  effectiveMassElectron : ℝ
  effectiveMassHole : ℝ
  densityOfStatesConduction : ℝ
  densityOfStatesValence : ℝ

def BandStructureClosed (B : BandStructurePackage) : Prop :=
  B.bandGap > 0 ∧ B.effectiveMassElectron > 0 ∧ B.effectiveMassHole > 0

theorem band_structure_closed (B : BandStructurePackage) (h : BandStructureClosed B) : BandStructureClosed B := h

end ElectricalEngineeringSemiconductorDevicesCanonicalLaneLean
end HautevilleHouse
