import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsDielectricMaterialsTheoremCanonicalLaneLean

structure CompositeDielectricPackage where
  effectivePermittivity : Prop
  inclusionShapeDistribution : Prop
  percolationThreshold : Prop
  maxwellGarnettValidity : Prop
  bruggemanValidity : Prop
  effectiveTerm : effectivePermittivity
  shapeTerm : inclusionShapeDistribution
  percolationTerm : percolationThreshold
  maxwellTerm : maxwellGarnettValidity
  bruggemanTerm : bruggemanValidity

structure CompositeDielectricEvidence (C : CompositeDielectricPackage) where
  effectiveClosed : C.effectivePermittivity
  shapeClosed : C.inclusionShapeDistribution
  percolationClosed : C.percolationThreshold
  maxwellClosed : C.maxwellGarnettValidity
  bruggemanClosed : C.bruggemanValidity

def CompositeDielectricClosed (C : CompositeDielectricPackage) : Prop :=
  C.effectivePermittivity ∧ C.inclusionShapeDistribution ∧ C.percolationThreshold ∧
  C.maxwellGarnettValidity ∧ C.bruggemanValidity

theorem composite_dielectric_closed_from_evidence (C : CompositeDielectricPackage)
    (E : CompositeDielectricEvidence C) : CompositeDielectricClosed C := by
  exact And.intro E.effectiveClosed (And.intro E.shapeClosed (And.intro E.percolationClosed
    (And.intro E.maxwellClosed E.bruggemanClosed)))

end MaterialsDielectricMaterialsTheoremCanonicalLaneLean
end HautevilleHouse