import HautevilleHouse.MaterialsDielectricMaterialsTheoremCanonicalLaneLean.ReviewerBridge

namespace HautevilleHouse
namespace MaterialsDielectricMaterialsTheoremCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  constrainedStatement : String
  certificateLane : String
  carriedRemainder : String
deriving Repr, DecidableEq

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := "materials-dielectric-materials-theorem-canonical-lane",
  theoremName := "materials-dielectric-materials-theorem-canonical-lane",
  theoremObject := "Dielectric closure via bridge/gate on crystallography and permittivity",
  classicalBoundary := "Dielectric constant positive, lattice symmetry group closed under operations",
  constrainedStatement := "constrained theorem certificate internalized through baseline gates, source constants, reviewer bridge, manifest hashes, and outside-constant dependency count",
  certificateLane := "constrained_lane",
  carriedRemainder := "classical source boundary carried by formalization certificate"
}

end MaterialsDielectricMaterialsTheoremCanonicalLaneLean
end HautevilleHouse