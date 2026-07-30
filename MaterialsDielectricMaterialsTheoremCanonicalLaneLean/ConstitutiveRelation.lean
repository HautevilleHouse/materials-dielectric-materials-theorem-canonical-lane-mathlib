import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsDielectricMaterialsTheoremCanonicalLaneLean

structure ConstitutiveRelationPackage where
  permittivity : Type u
  electricSusceptibility : Type v
  linearPolarizationResponse : Prop
  dielectricConstantDefined : Prop
  susceptibilityTensor : Prop

structure ConstitutiveRelationEvidence (R : ConstitutiveRelationPackage) where
  linearPolarizationResponseClosed : R.linearPolarizationResponse
  dielectricConstantDefinedClosed : R.dielectricConstantDefined
  susceptibilityTensorClosed : R.susceptibilityTensor

def ConstitutiveRelationClosed (R : ConstitutiveRelationPackage) : Prop :=
  R.linearPolarizationResponse ∧ R.dielectricConstantDefined ∧ R.susceptibilityTensor

theorem constitutive_relation_closed_from_evidence
    (R : ConstitutiveRelationPackage) (E : ConstitutiveRelationEvidence R) :
    ConstitutiveRelationClosed R := by
  exact And.intro E.linearPolarizationResponseClosed
    (And.intro E.dielectricConstantDefinedClosed E.susceptibilityTensorClosed)

end MaterialsDielectricMaterialsTheoremCanonicalLaneLean
end HautevilleHouse