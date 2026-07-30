import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsDielectricMaterialsTheoremCanonicalLaneLean

structure DielectricBreakdownPackage where
  electricFieldApplied : Prop
  criticalFieldReached : Prop
  materialBreakdown : Prop
  breakdownMechanismIdentified : Prop

structure DielectricBreakdownEvidence (D : DielectricBreakdownPackage) where
  electricFieldAppliedClosed : D.electricFieldApplied
  criticalFieldReachedClosed : D.criticalFieldReached
  materialBreakdownClosed : D.materialBreakdown
  breakdownMechanismIdentifiedClosed : D.breakdownMechanismIdentified

def DielectricBreakdownClosed (D : DielectricBreakdownPackage) : Prop :=
  D.electricFieldApplied ∧ D.criticalFieldReached ∧ D.materialBreakdown ∧ D.breakdownMechanismIdentified

theorem dielectric_breakdown_closed_from_evidence (D : DielectricBreakdownPackage)
    (E : DielectricBreakdownEvidence D) : DielectricBreakdownClosed D := by
  exact And.intro E.electricFieldAppliedClosed
    (And.intro E.criticalFieldReachedClosed
      (And.intro E.materialBreakdownClosed E.breakdownMechanismIdentifiedClosed))

end MaterialsDielectricMaterialsTheoremCanonicalLaneLean
end HautevilleHouse
