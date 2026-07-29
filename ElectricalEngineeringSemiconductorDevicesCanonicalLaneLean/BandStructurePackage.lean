import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringSemiconductorDevicesCanonicalLaneLean

structure BandStructurePackage where
  semiconductorMaterial : Type
  bandgap : Type
  effectiveMass : Type
  densityOfStates : Type
  electronAffinity : Type
  threeDimensionalCrystal : Prop
  bandgapDefined : Prop
  effectiveMassTensorLawful : Prop
  densityOfStatesComputed : Prop
  electronAffinityConsistent : Prop

structure BandStructureEvidence (B : BandStructurePackage) where
  threeDimensionalCrystalClosed : B.threeDimensionalCrystal
  bandgapDefinedClosed : B.bandgapDefined
  effectiveMassTensorLawfulClosed : B.effectiveMassTensorLawful
  densityOfStatesComputedClosed : B.densityOfStatesComputed
  electronAffinityConsistentClosed : B.electronAffinityConsistent

def BandStructureClosed (B : BandStructurePackage) : Prop :=
  B.threeDimensionalCrystal ∧ B.bandgapDefined ∧ B.effectiveMassTensorLawful ∧ B.densityOfStatesComputed ∧ B.electronAffinityConsistent

theorem band_structure_closed_from_evidence (B : BandStructurePackage) (E : BandStructureEvidence B) : BandStructureClosed B := by
  exact And.intro E.threeDimensionalCrystalClosed
    (And.intro E.bandgapDefinedClosed
      (And.intro E.effectiveMassTensorLawfulClosed
        (And.intro E.densityOfStatesComputedClosed E.electronAffinityConsistentClosed)))

end ElectricalEngineeringSemiconductorDevicesCanonicalLaneLean
end HautevilleHouse