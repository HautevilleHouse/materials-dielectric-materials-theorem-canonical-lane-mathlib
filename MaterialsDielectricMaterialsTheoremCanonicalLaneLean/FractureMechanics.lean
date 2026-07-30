import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsDielectricMaterialsTheoremCanonicalLaneLean

structure FractureMechanics where
  crackGeometry : Type u
  stressIntensityFactor : Prop
  energyReleaseRate : Prop
  fractureToughness : Prop
  crackPropagationCriterion : Prop

structure FractureMechanicsEvidence (F : FractureMechanics) where
  crackGeometryDefined : F.crackGeometry
  stressIntensityFactorClosed : F.stressIntensityFactor
  energyReleaseRateClosed : F.energyReleaseRate
  fractureToughnessClosed : F.fractureToughness
  crackPropagationCriterionClosed : F.crackPropagationCriterion

def FractureMechanicsClosed (F : FractureMechanics) : Prop :=
  F.crackGeometry ∧ F.stressIntensityFactor ∧ F.energyReleaseRate ∧ F.fractureToughness ∧ F.crackPropagationCriterion

theorem fracture_mechanics_closed_from_evidence (F : FractureMechanics) (E : FractureMechanicsEvidence F) :
    FractureMechanicsClosed F := by
  exact And.intro E.crackGeometryDefined
    (And.intro E.stressIntensityFactorClosed
      (And.intro E.energyReleaseRateClosed
        (And.intro E.fractureToughnessClosed E.crackPropagationCriterionClosed)))

end MaterialsDielectricMaterialsTheoremCanonicalLaneLean
end HautevilleHouse
