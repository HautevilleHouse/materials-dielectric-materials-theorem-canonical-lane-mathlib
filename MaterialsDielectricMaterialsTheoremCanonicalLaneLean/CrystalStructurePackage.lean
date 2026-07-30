import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsDielectricMaterialsTheoremCanonicalLaneLean

structure CrystalStructurePackage where
  unitCell : Type u
  bravaisLattice : Type v
  atomicBasis : Type w
  spaceGroup : Type x
  latticeVectors : Prop
  symmetryOperations : Prop
  reciprocalLattice : Prop
  brillouinZone : Prop

structure CrystalStructureEvidence (C : CrystalStructurePackage) where
  latticeVectorsClosed : C.latticeVectors
  symmetryOperationsClosed : C.symmetryOperations
  reciprocalLatticeClosed : C.reciprocalLattice
  brillouinZoneClosed : C.brillouinZone

def CrystalStructureClosed (C : CrystalStructurePackage) : Prop :=
  C.latticeVectors ∧ C.symmetryOperations ∧ C.reciprocalLattice ∧ C.brillouinZone

theorem crystal_structure_closed_from_evidence (C : CrystalStructurePackage)
    (E : CrystalStructureEvidence C) : CrystalStructureClosed C := by
  exact And.intro E.latticeVectorsClosed
    (And.intro E.symmetryOperationsClosed
      (And.intro E.reciprocalLatticeClosed E.brillouinZoneClosed))

end MaterialsDielectricMaterialsTheoremCanonicalLaneLean
end HautevilleHouse