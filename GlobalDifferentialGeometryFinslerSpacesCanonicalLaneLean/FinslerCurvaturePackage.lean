import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalDifferentialGeometryFinslerSpacesCanonicalLaneLean

structure FinslerCurvaturePackage where
  flagCurvature : Prop
  landsbergCurvature : Prop
  berwaldCurvature : Prop
  curvatureHomogeneous : Prop

def FinslerCurvatureClosed (P : FinslerCurvaturePackage) : Prop :=
  P.flagCurvature ∧ P.landsbergCurvature ∧ P.berwaldCurvature ∧ P.curvatureHomogeneous

structure FinslerCurvatureEvidence (P : FinslerCurvaturePackage) where
  flagCurvatureClosed : P.flagCurvature
  landsbergCurvatureClosed : P.landsbergCurvature
  berwaldCurvatureClosed : P.berwaldCurvature
  curvatureHomogeneousClosed : P.curvatureHomogeneous

theorem finsler_curvature_closed_from_evidence (P : FinslerCurvaturePackage) (E : FinslerCurvatureEvidence P) :
    FinslerCurvatureClosed P := by
  exact And.intro E.flagCurvatureClosed (And.intro E.landsbergCurvatureClosed (And.intro E.berwaldCurvatureClosed E.curvatureHomogeneousClosed))

end GlobalDifferentialGeometryFinslerSpacesCanonicalLaneLean
end HautevilleHouse
