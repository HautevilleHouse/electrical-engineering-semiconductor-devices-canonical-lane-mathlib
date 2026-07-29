import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringSemiconductorDevicesCanonicalLaneLean

structure MaterialPropertyPackage where
  bandGap : ℝ
  electronAffinity : ℝ
  dielectricConstant : ℝ
  electronMobility : ℝ
  holeMobility : ℝ
  effectiveDensityStatesConduction : ℝ
  effectiveDensityStatesValence : ℝ
  bandGapPositive : bandGap > 0
  dielectricConstantPositive : dielectricConstant > 0

structure MaterialPropertyEvidence (M : MaterialPropertyPackage) where
  bandGapClosed : M.bandGap > 0
  electronAffinityClosed : M.electronAffinity > 0
  dielectricConstantClosed : M.dielectricConstant > 0
  electronMobilityClosed : M.electronMobility > 0
  holeMobilityClosed : M.holeMobility > 0
  effectiveDensityStatesConductionClosed : M.effectiveDensityStatesConduction > 0
  effectiveDensityStatesValenceClosed : M.effectiveDensityStatesValence > 0

def MaterialPropertyClosed (M : MaterialPropertyPackage) : Prop :=
  M.bandGap > 0 ∧ M.electronAffinity > 0 ∧ M.dielectricConstant > 0 ∧
  M.electronMobility > 0 ∧ M.holeMobility > 0 ∧
  M.effectiveDensityStatesConduction > 0 ∧ M.effectiveDensityStatesValence > 0

theorem material_property_closed_from_evidence (M : MaterialPropertyPackage) (E : MaterialPropertyEvidence M) :
    MaterialPropertyClosed M := by
  exact And.intro E.bandGapClosed
    (And.intro E.electronAffinityClosed
      (And.intro E.dielectricConstantClosed
        (And.intro E.electronMobilityClosed
          (And.intro E.holeMobilityClosed
            (And.intro E.effectiveDensityStatesConductionClosed
              E.effectiveDensityStatesValenceClosed)))))

end ElectricalEngineeringSemiconductorDevicesCanonicalLaneLean
end HautevilleHouse