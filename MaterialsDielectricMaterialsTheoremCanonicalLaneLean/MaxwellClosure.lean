import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsDielectricMaterialsTheoremCanonicalLaneLean

structure MaxwellClosurePackage where
  gaussLaw : Prop
  faradayLaw : Prop
  ampereMaxwellLaw : Prop
  constitutiveRelation : Prop
  boundaryConditions : Prop

structure MaxwellClosureEvidence (M : MaxwellClosurePackage) where
  gaussLawClosed : M.gaussLaw
  faradayLawClosed : M.faradayLaw
  ampereMaxwellLawClosed : M.ampereMaxwellLaw
  constitutiveRelationClosed : M.constitutiveRelation
  boundaryConditionsClosed : M.boundaryConditions

def MaxwellClosureClosed (M : MaxwellClosurePackage) : Prop :=
  M.gaussLaw ∧ M.faradayLaw ∧ M.ampereMaxwellLaw ∧
  M.constitutiveRelation ∧ M.boundaryConditions

theorem maxwell_closure_closed_from_evidence
    (M : MaxwellClosurePackage) (E : MaxwellClosureEvidence M) :
    MaxwellClosureClosed M := by
  exact And.intro E.gaussLawClosed
    (And.intro E.faradayLawClosed
      (And.intro E.ampereMaxwellLawClosed
        (And.intro E.constitutiveRelationClosed E.boundaryConditionsClosed)))

end MaterialsDielectricMaterialsTheoremCanonicalLaneLean
end HautevilleHouse