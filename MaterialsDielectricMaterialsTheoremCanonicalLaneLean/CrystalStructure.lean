import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsDielectricMaterialsTheoremCanonicalLaneLean

structure CrystalStructure where
  latticeVectors : Type u
  basisAtoms : Type v
  symmetryGroup : Type w
  primitiveCellVolume : Prop
  bravaisLatticeType : Prop

structure CrystalStructureEvidence (C : CrystalStructure) where
  latticeVectorsDefined : C.latticeVectors
  basisAtomsDefined : C.basisAtoms
  symmetryGroupClosed : C.symmetryGroup
  primitiveCellVolumeClosed : C.primitiveCellVolume
  bravaisLatticeTypeClosed : C.bravaisLatticeType

def CrystalStructureClosed (C : CrystalStructure) : Prop :=
  C.latticeVectors ∧ C.basisAtoms ∧ C.symmetryGroup ∧ C.primitiveCellVolume ∧ C.bravaisLatticeType

theorem crystal_structure_closed_from_evidence (C : CrystalStructure) (E : CrystalStructureEvidence C) :
    CrystalStructureClosed C := by
  exact And.intro E.latticeVectorsDefined
    (And.intro E.basisAtomsDefined
      (And.intro E.symmetryGroupClosed
        (And.intro E.primitiveCellVolumeClosed E.bravaisLatticeTypeClosed)))

end MaterialsDielectricMaterialsTheoremCanonicalLaneLean
end HautevilleHouse
