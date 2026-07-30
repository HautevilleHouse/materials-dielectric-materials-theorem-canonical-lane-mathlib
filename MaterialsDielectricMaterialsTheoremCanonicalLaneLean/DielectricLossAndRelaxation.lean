import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsDielectricMaterialsTheoremCanonicalLaneLean

structure DielectricLossRelaxationPackage where
  complexPermittivity : Prop
  lossTangent : Prop
  debyeRelaxationModel : Prop
  relaxationTime : Prop
  frequencyDependence : Prop

structure DielectricLossRelaxationEvidence (L : DielectricLossRelaxationPackage) where
  complexPermittivityClosed : L.complexPermittivity
  lossTangentClosed : L.lossTangent
  debyeRelaxationModelClosed : L.debyeRelaxationModel
  relaxationTimeClosed : L.relaxationTime
  frequencyDependenceClosed : L.frequencyDependence

def DielectricLossRelaxationClosed (L : DielectricLossRelaxationPackage) : Prop :=
  L.complexPermittivity ∧ L.lossTangent ∧ L.debyeRelaxationModel ∧
  L.relaxationTime ∧ L.frequencyDependence

theorem dielectric_loss_relaxation_closed_from_evidence
    (L : DielectricLossRelaxationPackage)
    (E : DielectricLossRelaxationEvidence L) :
    DielectricLossRelaxationClosed L := by
  exact And.intro E.complexPermittivityClosed
    (And.intro E.lossTangentClosed
      (And.intro E.debyeRelaxationModelClosed
        (And.intro E.relaxationTimeClosed E.frequencyDependenceClosed)))

end MaterialsDielectricMaterialsTheoremCanonicalLaneLean
end HautevilleHouse