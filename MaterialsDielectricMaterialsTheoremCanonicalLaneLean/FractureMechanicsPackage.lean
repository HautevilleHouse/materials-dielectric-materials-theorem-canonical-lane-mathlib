import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsDielectricMaterialsTheoremCanonicalLaneLean

structure FractureMechanicsPackage where
  stressIntensityFactor : Prop
  fractureToughness : Prop
  crackPropagationCriterion : Prop
  linearElasticFractureMechanics : Prop
  energyReleaseRate : Prop
  parisLaw : Prop
  fatigueLife : Prop

structure FractureMechanicsEvidence (F : FractureMechanicsPackage) where
  stressIntensityFactorClosed : F.stressIntensityFactor
  fractureToughnessClosed : F.fractureToughness
  crackPropagationCriterionClosed : F.crackPropagationCriterion
  linearElasticFractureMechanicsClosed : F.linearElasticFractureMechanics
  energyReleaseRateClosed : F.energyReleaseRate
  parisLawClosed : F.parisLaw
  fatigueLifeClosed : F.fatigueLife

def FractureMechanicsClosed (F : FractureMechanicsPackage) : Prop :=
  F.stressIntensityFactor ∧ F.fractureToughness ∧ F.crackPropagationCriterion ∧
  F.linearElasticFractureMechanics ∧ F.energyReleaseRate ∧ F.parisLaw ∧ F.fatigueLife

theorem fracture_mechanics_closed_from_evidence (F : FractureMechanicsPackage)
    (E : FractureMechanicsEvidence F) : FractureMechanicsClosed F := by
  exact And.intro E.stressIntensityFactorClosed
    (And.intro E.fractureToughnessClosed
      (And.intro E.crackPropagationCriterionClosed
        (And.intro E.linearElasticFractureMechanicsClosed
          (And.intro E.energyReleaseRateClosed
            (And.intro E.parisLawClosed E.fatigueLifeClosed)))))

end MaterialsDielectricMaterialsTheoremCanonicalLaneLean
end HautevilleHouse