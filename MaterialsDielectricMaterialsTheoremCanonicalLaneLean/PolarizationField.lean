import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsDielectricMaterialsTheoremCanonicalLaneLean

structure PolarizationFieldPackage where
  dipoleDensity : Type u
  polarizationVector : Type v
  electricSusceptibility : Prop
  linearResponse : Prop
  nonlinearKerr : Prop

structure PolarizationFieldEvidence (P : PolarizationFieldPackage) where
  dipoleDensityClosed : P.dipoleDensity
  polarizationVectorClosed : P.polarizationVector
  electricSusceptibilityClosed : P.electricSusceptibility
  linearResponseClosed : P.linearResponse
  nonlinearKerrClosed : P.nonlinearKerr

def PolarizationFieldClosed (P : PolarizationFieldPackage) : Prop :=
  P.dipoleDensity ∧ P.polarizationVector ∧ P.electricSusceptibility ∧
  P.linearResponse ∧ P.nonlinearKerr

theorem polarization_field_closed_from_evidence
    (P : PolarizationFieldPackage) (E : PolarizationFieldEvidence P) :
    PolarizationFieldClosed P := by
  exact And.intro E.dipoleDensityClosed
    (And.intro E.polarizationVectorClosed
      (And.intro E.electricSusceptibilityClosed
        (And.intro E.linearResponseClosed E.nonlinearKerrClosed)))

end MaterialsDielectricMaterialsTheoremCanonicalLaneLean
end HautevilleHouse