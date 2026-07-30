import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsDielectricMaterialsTheoremCanonicalLaneLean

structure MaxwellDielectricInterfacePackage where
  gaussLawInDielectric : Prop
  interfaceBoundaryConditions : Prop
  continuityOfNormalDisplacement : Prop
  chargeConservation : Prop

structure MaxwellDielectricInterfaceEvidence (M : MaxwellDielectricInterfacePackage) where
  gaussLawInDielectricClosed : M.gaussLawInDielectric
  interfaceBoundaryConditionsClosed : M.interfaceBoundaryConditions
  continuityOfNormalDisplacementClosed : M.continuityOfNormalDisplacement
  chargeConservationClosed : M.chargeConservation

def MaxwellDielectricInterfaceClosed (M : MaxwellDielectricInterfacePackage) : Prop :=
  M.gaussLawInDielectric ∧ M.interfaceBoundaryConditions ∧
  M.continuityOfNormalDisplacement ∧ M.chargeConservation

theorem maxwell_dielectric_interface_closed_from_evidence
    (M : MaxwellDielectricInterfacePackage)
    (E : MaxwellDielectricInterfaceEvidence M) :
    MaxwellDielectricInterfaceClosed M := by
  exact And.intro E.gaussLawInDielectricClosed
    (And.intro E.interfaceBoundaryConditionsClosed
      (And.intro E.continuityOfNormalDisplacementClosed E.chargeConservationClosed))

end MaterialsDielectricMaterialsTheoremCanonicalLaneLean
end HautevilleHouse