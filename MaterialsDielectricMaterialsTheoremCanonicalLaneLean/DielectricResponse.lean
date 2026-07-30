import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsDielectricMaterialsTheoremCanonicalLaneLean

structure DielectricResponsePackage where
  permittivityTensor : Type u
  frequencyDependence : Prop
  polarizationRelation : Prop
  lossTangent : Prop
  energyDensity : Prop

structure DielectricResponseEvidence (D : DielectricResponsePackage) where
  permittivityTensorClosed : D.permittivityTensor
  frequencyDependenceClosed : D.frequencyDependence
  polarizationRelationClosed : D.polarizationRelation
  lossTangentClosed : D.lossTangent
  energyDensityClosed : D.energyDensity

def DielectricResponseClosed (D : DielectricResponsePackage) : Prop :=
  D.permittivityTensor ∧ D.frequencyDependence ∧ D.polarizationRelation ∧
  D.lossTangent ∧ D.energyDensity

theorem dielectric_response_closed_from_evidence
    (D : DielectricResponsePackage) (E : DielectricResponseEvidence D) :
    DielectricResponseClosed D := by
  exact And.intro E.permittivityTensorClosed
    (And.intro E.frequencyDependenceClosed
      (And.intro E.polarizationRelationClosed
        (And.intro E.lossTangentClosed E.energyDensityClosed)))

end MaterialsDielectricMaterialsTheoremCanonicalLaneLean
end HautevilleHouse