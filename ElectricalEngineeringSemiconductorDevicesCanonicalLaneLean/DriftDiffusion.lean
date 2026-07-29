import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringSemiconductorDevicesCanonicalLaneLean

structure DriftDiffusionPackage where
  continuityElectron : Prop
  continuityHole : Prop
  poissonEquation : Prop
  currentDensityEquations : Prop
  generationRecombination : Prop

structure DriftDiffusionEvidence (D : DriftDiffusionPackage) where
  continuityElectronClosed : D.continuityElectron
  continuityHoleClosed : D.continuityHole
  poissonEquationClosed : D.poissonEquation
  currentDensityEquationsClosed : D.currentDensityEquations
  generationRecombinationClosed : D.generationRecombination

def DriftDiffusionClosed (D : DriftDiffusionPackage) : Prop :=
  D.continuityElectron ∧ D.continuityHole ∧ D.poissonEquation ∧ D.currentDensityEquations ∧ D.generationRecombination

theorem drift_diffusion_closed_from_evidence (D : DriftDiffusionPackage) (E : DriftDiffusionEvidence D) : DriftDiffusionClosed D := by
  exact And.intro E.continuityElectronClosed (And.intro E.continuityHoleClosed (And.intro E.poissonEquationClosed (And.intro E.currentDensityEquationsClosed E.generationRecombinationClosed)))

end ElectricalEngineeringSemiconductorDevicesCanonicalLaneLean
end HautevilleHouse