import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsDielectricMaterialsTheoremCanonicalLaneLean

structure FrequencyDispersionPackage where
  debyeRelaxation : Prop
  resonanceAbsorption : Prop
  frequencyDependentComplexPermittivity : Prop
  lossTangent : Prop
  relaxationTerm : debyeRelaxation
  resonanceTerm : resonanceAbsorption
  complexTerm : frequencyDependentComplexPermittivity
  lossTerm : lossTangent

structure FrequencyDispersionEvidence (F : FrequencyDispersionPackage) where
  relaxationClosed : F.debyeRelaxation
  resonanceClosed : F.resonanceAbsorption
  complexClosed : F.frequencyDependentComplexPermittivity
  lossClosed : F.lossTangent

def FrequencyDispersionClosed (F : FrequencyDispersionPackage) : Prop :=
  F.debyeRelaxation ∧ F.resonanceAbsorption ∧ F.frequencyDependentComplexPermittivity ∧ F.lossTangent

theorem frequency_dispersion_closed_from_evidence (F : FrequencyDispersionPackage)
    (E : FrequencyDispersionEvidence F) : FrequencyDispersionClosed F := by
  exact And.intro E.relaxationClosed (And.intro E.resonanceClosed (And.intro E.complexClosed E.lossClosed))

end MaterialsDielectricMaterialsTheoremCanonicalLaneLean
end HautevilleHouse