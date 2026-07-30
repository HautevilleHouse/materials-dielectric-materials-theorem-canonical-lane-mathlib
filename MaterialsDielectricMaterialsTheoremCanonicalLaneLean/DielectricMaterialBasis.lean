import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsDielectricMaterialsTheoremCanonicalLaneLean

structure DielectricMaterialSystem where
  carrier : Type
  topology : TopologicalSpace carrier
  polarization : carrier → ℝ
  electricField : carrier → ℝ
  boundChargeDensity : carrier → ℝ
  freeChargeDensity : carrier → ℝ
  electricDisplacement : carrier → ℝ

structure DielectricAdmittedObject where
  system : DielectricMaterialSystem
  isLinearMaterial : Prop
  isHomogeneous : Prop
  isIsotropic : Prop
  constitutiveRelation : Prop
  boundaryConditions : Prop
  conclusion : constitutiveRelation ∧ boundaryConditions

structure DielectricEndgameState where
  object : DielectricAdmittedObject

def DielectricWitnessClosed (O : DielectricAdmittedObject) : Prop :=
  O.conclusion

end MaterialsDielectricMaterialsTheoremCanonicalLaneLean
end HautevilleHouse