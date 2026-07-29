import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalDifferentialGeometryFinslerSpacesCanonicalLaneLean

structure ComparisonTheoremsPackage where
  flagCurvature : FlagCurvaturePackage
  geodesicFlow : GeodesicFlowPackage
  bonnetMyers : Prop
  cartanHadamard : Prop
  bishopGromov : Prop

structure ComparisonTheoremsEvidence (CT : ComparisonTheoremsPackage) where
  bonnetMyersClosed : CT.bonnetMyers
  cartanHadamardClosed : CT.cartanHadamard
  bishopGromovClosed : CT.bishopGromov

def ComparisonTheoremsClosed (CT : ComparisonTheoremsPackage) : Prop :=
  CT.bonnetMyers ∧ CT.cartanHadamard ∧ CT.bishopGromov

theorem comparison_theorems_closed_from_evidence (CT : ComparisonTheoremsPackage) (E : ComparisonTheoremsEvidence CT) : ComparisonTheoremsClosed CT :=
  And.intro E.bonnetMyersClosed (And.intro E.cartanHadamardClosed E.bishopGromovClosed)

end GlobalDifferentialGeometryFinslerSpacesCanonicalLaneLean
end HautevilleHouse