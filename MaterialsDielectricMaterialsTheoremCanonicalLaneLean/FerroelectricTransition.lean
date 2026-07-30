import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsDielectricMaterialsTheoremCanonicalLaneLean

structure FerroelectricTransition where
  curieTemperature : Prop
  spontaneousPolarization : Prop
  hysteresisLoop : Prop
  domainStructure : Prop
  strainCoupling : Prop

structure FerroelectricTransitionEvidence (F : FerroelectricTransition) where
  curieTemperatureClosed : F.curieTemperature
  spontaneousPolarizationClosed : F.spontaneousPolarization
  hysteresisLoopClosed : F.hysteresisLoop
  domainStructureClosed : F.domainStructure
  strainCouplingClosed : F.strainCoupling

def FerroelectricTransitionClosed (F : FerroelectricTransition) : Prop :=
  F.curieTemperature ∧ F.spontaneousPolarization ∧ F.hysteresisLoop ∧ F.domainStructure ∧ F.strainCoupling

theorem ferroelectric_transition_closed_from_evidence (F : FerroelectricTransition) (E : FerroelectricTransitionEvidence F) :
    FerroelectricTransitionClosed F := by
  exact And.intro E.curieTemperatureClosed
    (And.intro E.spontaneousPolarizationClosed
      (And.intro E.hysteresisLoopClosed
        (And.intro E.domainStructureClosed E.strainCouplingClosed)))

end MaterialsDielectricMaterialsTheoremCanonicalLaneLean
end HautevilleHouse
