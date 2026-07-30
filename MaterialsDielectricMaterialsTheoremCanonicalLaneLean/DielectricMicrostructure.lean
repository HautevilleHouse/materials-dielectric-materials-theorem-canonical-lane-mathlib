import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsDielectricMaterialsTheoremCanonicalLaneLean

structure DielectricMicrostructurePackage where
  permittivityTensor : Type u
  polarizationResponse : Type v
  dielectricBreakdownStrength : Prop
  permittivityDispersion : Prop
  microstructureHomogeneityScale : Prop
  breakdownStrengthTerm : dielectricBreakdownStrength
  dispersionTerm : permittivityDispersion
  homogeneityTerm : microstructureHomogeneityScale

structure DielectricMicrostructureEvidence (D : DielectricMicrostructurePackage) where
  breakdownStrengthClosed : D.dielectricBreakdownStrength
  dispersionClosed : D.permittivityDispersion
  homogeneityClosed : D.microstructureHomogeneityScale

def DielectricMicrostructureClosed (D : DielectricMicrostructurePackage) : Prop :=
  D.dielectricBreakdownStrength ∧ D.permittivityDispersion ∧ D.microstructureHomogeneityScale

theorem dielectric_microstructure_closed_from_evidence (D : DielectricMicrostructurePackage)
    (E : DielectricMicrostructureEvidence D) : DielectricMicrostructureClosed D := by
  exact And.intro E.breakdownStrengthClosed (And.intro E.dispersionClosed E.homogeneityClosed)

end MaterialsDielectricMaterialsTheoremCanonicalLaneLean
end HautevilleHouse