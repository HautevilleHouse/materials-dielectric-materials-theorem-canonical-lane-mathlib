import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsDielectricMaterialsTheoremCanonicalLaneLean

structure DielectricConstantSpectroscopyPackage where
  frequencyRange : Prop
  permittivityMeasured : Prop
  lossTangentExtracted : Prop
  relaxationModelValidated : Prop

structure DielectricConstantSpectroscopyEvidence (S : DielectricConstantSpectroscopyPackage) where
  frequencyRangeClosed : S.frequencyRange
  permittivityMeasuredClosed : S.permittivityMeasured
  lossTangentExtractedClosed : S.lossTangentExtracted
  relaxationModelValidatedClosed : S.relaxationModelValidated

def DielectricConstantSpectroscopyClosed (S : DielectricConstantSpectroscopyPackage) : Prop :=
  S.frequencyRange ∧ S.permittivityMeasured ∧ S.lossTangentExtracted ∧ S.relaxationModelValidated

theorem dielectric_constant_spectroscopy_closed_from_evidence
    (S : DielectricConstantSpectroscopyPackage)
    (E : DielectricConstantSpectroscopyEvidence S) : DielectricConstantSpectroscopyClosed S := by
  exact And.intro E.frequencyRangeClosed
    (And.intro E.permittivityMeasuredClosed
      (And.intro E.lossTangentExtractedClosed E.relaxationModelValidatedClosed))

end MaterialsDielectricMaterialsTheoremCanonicalLaneLean
end HautevilleHouse
