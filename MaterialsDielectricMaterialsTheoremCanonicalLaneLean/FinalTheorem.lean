import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsDielectricMaterialsTheoremCanonicalLaneLean

def ConstrainedDielectricClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_dielectric_endgame (A : AdmissibleClass) :
    ConstrainedDielectricClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MaterialsDielectricMaterialsTheoremCanonicalLaneLean
end HautevilleHouse