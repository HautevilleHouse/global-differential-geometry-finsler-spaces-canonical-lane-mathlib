import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalDifferentialGeometryFinslerSpacesCanonicalLaneLean

structure FlagCurvaturePackage where
  connection : ChernConnectionPackage
  flagPole : Type u
  flagCurvatureTensor : Type v
  symmetry : Prop
  ricciIdentities : Prop
  schurTheorem : Prop

structure FlagCurvatureEvidence (FC : FlagCurvaturePackage) where
  symmetryClosed : FC.symmetry
  ricciIdentitiesClosed : FC.ricciIdentities
  schurTheoremClosed : FC.schurTheorem

def FlagCurvatureClosed (FC : FlagCurvaturePackage) : Prop :=
  FC.symmetry ∧ FC.ricciIdentities ∧ FC.schurTheorem

theorem flag_curvature_closed_from_evidence (FC : FlagCurvaturePackage) (E : FlagCurvatureEvidence FC) : FlagCurvatureClosed FC :=
  And.intro E.symmetryClosed (And.intro E.ricciIdentitiesClosed E.schurTheoremClosed)

end GlobalDifferentialGeometryFinslerSpacesCanonicalLaneLean
end HautevilleHouse