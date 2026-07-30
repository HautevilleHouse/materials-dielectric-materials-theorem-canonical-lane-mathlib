import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsDielectricMaterialsTheoremCanonicalLaneLean

structure CrystallographyBasePackage where
  bravaisLattice : Type u
  pointGroup : Type v
  spaceGroup : Type w
  latticeParameters : Prop
  symmetryOperations : Prop
  basisVectors : Prop

structure CrystallographyBaseEvidence (C : CrystallographyBasePackage) where
  latticeParametersClosed : C.latticeParameters
  symmetryOperationsClosed : C.symmetryOperations
  basisVectorsClosed : C.basisVectors

def CrystallographyBaseClosed (C : CrystallographyBasePackage) : Prop :=
  C.latticeParameters ∧ C.symmetryOperations ∧ C.basisVectors

theorem crystallography_base_closed_from_evidence
    (C : CrystallographyBasePackage) (E : CrystallographyBaseEvidence C) :
    CrystallographyBaseClosed C := by
  exact And.intro E.latticeParametersClosed
    (And.intro E.symmetryOperationsClosed E.basisVectorsClosed)

end MaterialsDielectricMaterialsTheoremCanonicalLaneLean
end HautevilleHouse