import HautevilleHouse.MaterialsDielectricMaterialsTheoremCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace MaterialsDielectricMaterialsTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  DielectricWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end MaterialsDielectricMaterialsTheoremCanonicalLaneLean
end HautevilleHouse