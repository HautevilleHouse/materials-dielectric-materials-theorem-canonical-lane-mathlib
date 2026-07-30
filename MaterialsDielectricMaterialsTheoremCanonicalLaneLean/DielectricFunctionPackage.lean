import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsDielectricMaterialsTheoremCanonicalLaneLean

structure DielectricFunctionPackage where
  frequencyDependent : Prop
  waveVectorDependent : Prop
  realPart : Prop
  imaginaryPart : Prop
  kramersKronigConsistent : Prop
  lowFrequencyLimit : Prop
  highFrequencyLimit : Prop

structure DielectricFunctionEvidence (D : DielectricFunctionPackage) where
  frequencyDependentClosed : D.frequencyDependent
  waveVectorDependentClosed : D.waveVectorDependent
  realPartClosed : D.realPart
  imaginaryPartClosed : D.imaginaryPart
  kramersKronigConsistentClosed : D.kramersKronigConsistent
  lowFrequencyLimitClosed : D.lowFrequencyLimit
  highFrequencyLimitClosed : D.highFrequencyLimit

def DielectricFunctionClosed (D : DielectricFunctionPackage) : Prop :=
  D.frequencyDependent ∧ D.waveVectorDependent ∧ D.realPart ∧ D.imaginaryPart ∧
  D.kramersKronigConsistent ∧ D.lowFrequencyLimit ∧ D.highFrequencyLimit

theorem dielectric_function_closed_from_evidence (D : DielectricFunctionPackage)
    (E : DielectricFunctionEvidence D) : DielectricFunctionClosed D := by
  exact And.intro E.frequencyDependentClosed
    (And.intro E.waveVectorDependentClosed
      (And.intro E.realPartClosed
        (And.intro E.imaginaryPartClosed
          (And.intro E.kramersKronigConsistentClosed
            (And.intro E.lowFrequencyLimitClosed E.highFrequencyLimitClosed)))))

end MaterialsDielectricMaterialsTheoremCanonicalLaneLean
end HautevilleHouse