import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsDielectricMaterialsTheoremCanonicalLaneLean

structure PhaseDiagram where
  temperatureRange : Type u
  pressureRange : Type v
  phases : Type w
  phaseBoundaries : Prop
  criticalPoints : Prop

structure PhaseDiagramEvidence (P : PhaseDiagram) where
  temperatureRangeDefined : P.temperatureRange
  pressureRangeDefined : P.pressureRange
  phasesIdentified : P.phases
  phaseBoundariesClosed : P.phaseBoundaries
  criticalPointsClosed : P.criticalPoints

def PhaseDiagramClosed (P : PhaseDiagram) : Prop :=
  P.temperatureRange ∧ P.pressureRange ∧ P.phases ∧ P.phaseBoundaries ∧ P.criticalPoints

theorem phase_diagram_closed_from_evidence (P : PhaseDiagram) (E : PhaseDiagramEvidence P) :
    PhaseDiagramClosed P := by
  exact And.intro E.temperatureRangeDefined
    (And.intro E.pressureRangeDefined
      (And.intro E.phasesIdentified
        (And.intro E.phaseBoundariesClosed E.criticalPointsClosed)))

end MaterialsDielectricMaterialsTheoremCanonicalLaneLean
end HautevilleHouse
