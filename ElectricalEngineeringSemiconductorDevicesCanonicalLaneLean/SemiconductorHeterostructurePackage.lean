import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringSemiconductorDevicesCanonicalLaneLean

structure SemiconductorHeterostructurePackage (A : AdmissibleClass) where
  bandOffsetAligned : Prop
  quantumWellFormed : Prop
  twodElectronGasPresent : Prop
  mobilityEnhancement : Prop

structure SemiconductorHeterostructureEvidence (A : AdmissibleClass) (H : SemiconductorHeterostructurePackage A) where
  bandOffsetAlignedClosed : H.bandOffsetAligned
  quantumWellFormedClosed : H.quantumWellFormed
  twodElectronGasPresentClosed : H.twodElectronGasPresent
  mobilityEnhancementClosed : H.mobilityEnhancement

def SemiconductorHeterostructureClosed (A : AdmissibleClass) (H : SemiconductorHeterostructurePackage A) : Prop :=
  H.bandOffsetAligned ∧ H.quantumWellFormed ∧ H.twodElectronGasPresent ∧ H.mobilityEnhancement

theorem semiconductor_heterostructure_closed_from_evidence (A : AdmissibleClass) (H : SemiconductorHeterostructurePackage A) (E : SemiconductorHeterostructureEvidence A H) :
    SemiconductorHeterostructureClosed A H := by
  exact And.intro E.bandOffsetAlignedClosed
    (And.intro E.quantumWellFormedClosed
      (And.intro E.twodElectronGasPresentClosed E.mobilityEnhancementClosed))

end ElectricalEngineeringSemiconductorDevicesCanonicalLaneLean
end HautevilleHouse