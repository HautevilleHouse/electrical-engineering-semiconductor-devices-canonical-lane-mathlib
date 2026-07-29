import ElectricalEngineeringSemiconductorDevicesCanonicalLaneLean.AdmissibleClass

/-!
# Bandgap Junction Physics Package
-/

namespace HautevilleHouse
namespace ElectricalEngineeringSemiconductorDevicesCanonicalLaneLean

structure BandgapJunctionPhysicsPackage where
  semiconductorMaterial : Type u
  bandgapEnergy : Type v
  intrinsicCarrierConcentration : Type w
  depletionWidth : Type x
  builtInPotential : Prop
  depletionWidthFormula : Prop
  junctionCapacitance : Prop

structure BandgapJunctionPhysicsEvidence (B : BandgapJunctionPhysicsPackage) where
  builtInPotentialClosed : B.builtInPotential
  depletionWidthFormulaClosed : B.depletionWidthFormula
  junctionCapacitanceClosed : B.junctionCapacitance

def BandgapJunctionPhysicsClosed (B : BandgapJunctionPhysicsPackage) : Prop :=
  B.builtInPotential ∧ B.depletionWidthFormula ∧ B.junctionCapacitance

theorem bandgap_junction_physics_closed_from_evidence
    (B : BandgapJunctionPhysicsPackage) (E : BandgapJunctionPhysicsEvidence B) :
    BandgapJunctionPhysicsClosed B := by
  exact And.intro E.builtInPotentialClosed
    (And.intro E.depletionWidthFormulaClosed E.junctionCapacitanceClosed)

end ElectricalEngineeringSemiconductorDevicesCanonicalLaneLean
end HautevilleHouse