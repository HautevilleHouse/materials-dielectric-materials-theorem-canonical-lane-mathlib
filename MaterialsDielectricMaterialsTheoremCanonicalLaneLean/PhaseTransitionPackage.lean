import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsDielectricMaterialsTheoremCanonicalLaneLean

structure PhaseTransitionPackage where
  transitionTemperature : Prop
  orderParameter : Prop
  criticalExponents : Prop
  landauTheoryApplicable : Prop
  firstOrderTransition : Prop
  continuousTransition : Prop
  phaseDiagram : Prop

structure PhaseTransitionEvidence (P : PhaseTransitionPackage) where
  transitionTemperatureClosed : P.transitionTemperature
  orderParameterClosed : P.orderParameter
  criticalExponentsClosed : P.criticalExponents
  landauTheoryApplicableClosed : P.landauTheoryApplicable
  firstOrderTransitionClosed : P.firstOrderTransition
  continuousTransitionClosed : P.continuousTransition
  phaseDiagramClosed : P.phaseDiagram

def PhaseTransitionClosed (P : PhaseTransitionPackage) : Prop :=
  P.transitionTemperature ∧ P.orderParameter ∧ P.criticalExponents ∧
  P.landauTheoryApplicable ∧ P.firstOrderTransition ∧ P.continuousTransition ∧ P.phaseDiagram

theorem phase_transition_closed_from_evidence (P : PhaseTransitionPackage)
    (E : PhaseTransitionEvidence P) : PhaseTransitionClosed P := by
  exact And.intro E.transitionTemperatureClosed
    (And.intro E.orderParameterClosed
      (And.intro E.criticalExponentsClosed
        (And.intro E.landauTheoryApplicableClosed
          (And.intro E.firstOrderTransitionClosed
            (And.intro E.continuousTransitionClosed E.phaseDiagramClosed)))))

end MaterialsDielectricMaterialsTheoremCanonicalLaneLean
end HautevilleHouse