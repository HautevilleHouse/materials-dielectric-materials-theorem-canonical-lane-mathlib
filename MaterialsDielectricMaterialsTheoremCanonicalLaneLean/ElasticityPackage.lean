import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsDielectricMaterialsTheoremCanonicalLaneLean

structure ElasticityPackage where
  elasticConstants : Prop
  stressStrainRelation : Prop
  youngModulus : Prop
  poissonRatio : Prop
  shearModulus : Prop
  bulkModulus : Prop
  anisotropyFactor : Prop

structure ElasticityEvidence (E : ElasticityPackage) where
  elasticConstantsClosed : E.elasticConstants
  stressStrainRelationClosed : E.stressStrainRelation
  youngModulusClosed : E.youngModulus
  poissonRatioClosed : E.poissonRatio
  shearModulusClosed : E.shearModulus
  bulkModulusClosed : E.bulkModulus
  anisotropyFactorClosed : E.anisotropyFactor

def ElasticityClosed (E : ElasticityPackage) : Prop :=
  E.elasticConstants ∧ E.stressStrainRelation ∧ E.youngModulus ∧ E.poissonRatio ∧
  E.shearModulus ∧ E.bulkModulus ∧ E.anisotropyFactor

theorem elasticity_closed_from_evidence (E : ElasticityPackage)
    (Ev : ElasticityEvidence E) : ElasticityClosed E := by
  exact And.intro Ev.elasticConstantsClosed
    (And.intro Ev.stressStrainRelationClosed
      (And.intro Ev.youngModulusClosed
        (And.intro Ev.poissonRatioClosed
          (And.intro Ev.shearModulusClosed
            (And.intro Ev.bulkModulusClosed Ev.anisotropyFactorClosed)))))

end MaterialsDielectricMaterialsTheoremCanonicalLaneLean
end HautevilleHouse