import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsDielectricMaterialsTheoremCanonicalLaneLean

structure ElasticityTensor where
  stiffnessMatrix : Type u
  complianceMatrix : Type v
  symmetryProperties : Prop
  positiveDefiniteness : Prop
  anisotropyFactors : Prop

structure ElasticityTensorEvidence (E : ElasticityTensor) where
  stiffnessMatrixDefined : E.stiffnessMatrix
  complianceMatrixDefined : E.complianceMatrix
  symmetryPropertiesClosed : E.symmetryProperties
  positiveDefinitenessClosed : E.positiveDefiniteness
  anisotropyFactorsClosed : E.anisotropyFactors

def ElasticityTensorClosed (E : ElasticityTensor) : Prop :=
  E.stiffnessMatrix ∧ E.complianceMatrix ∧ E.symmetryProperties ∧ E.positiveDefiniteness ∧ E.anisotropyFactors

theorem elasticity_tensor_closed_from_evidence (E : ElasticityTensor) (Ev : ElasticityTensorEvidence E) :
    ElasticityTensorClosed E := by
  exact And.intro Ev.stiffnessMatrixDefined
    (And.intro Ev.complianceMatrixDefined
      (And.intro Ev.symmetryPropertiesClosed
        (And.intro Ev.positiveDefinitenessClosed Ev.anisotropyFactorsClosed)))

end MaterialsDielectricMaterialsTheoremCanonicalLaneLean
end HautevilleHouse
