import HautevilleHouse.MaterialsDielectricMaterialsTheoremCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace MaterialsDielectricMaterialsTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : DielectricAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  DielectricWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MaterialsDielectricMaterialsTheoremCanonicalLaneLean
end HautevilleHouse