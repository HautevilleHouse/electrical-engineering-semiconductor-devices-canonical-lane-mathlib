import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringSemiconductorDevicesCanonicalLaneLean

structure PNJunctionPackage where
  builtInPotential : ℝ
  depletionWidth : ℝ
  maxElectricField : ℝ
  junctionCapacitance : ℝ
  equilibriumCondition : builtInPotential > 0
  depletionWidthPositive : depletionWidth > 0

structure PNJunctionEvidence (P : PNJunctionPackage) where
  builtInPotentialClosed : P.builtInPotential > 0
  depletionWidthClosed : P.depletionWidth > 0
  maxElectricFieldClosed : P.maxElectricField > 0
  junctionCapacitanceClosed : P.junctionCapacitance > 0

def PNJunctionClosed (P : PNJunctionPackage) : Prop :=
  P.builtInPotential > 0 ∧ P.depletionWidth > 0 ∧ P.maxElectricField > 0 ∧ P.junctionCapacitance > 0

theorem pn_junction_closed_from_evidence (P : PNJunctionPackage) (E : PNJunctionEvidence P) :
    PNJunctionClosed P := by
  exact And.intro E.builtInPotentialClosed
    (And.intro E.depletionWidthClosed
      (And.intro E.maxElectricFieldClosed E.junctionCapacitanceClosed))

end ElectricalEngineeringSemiconductorDevicesCanonicalLaneLean
end HautevilleHouse