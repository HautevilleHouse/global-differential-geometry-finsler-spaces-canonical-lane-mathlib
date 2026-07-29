import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalDifferentialGeometryFinslerSpacesCanonicalLaneLean

structure FinslerCurvaturePackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  finslerMetric : Type v
  cartanTensor : Type w
  flagCurvature : Type x
  ricciCurvature : Type y
  smoothManifold : Prop
  finslerMetricSmooth : Prop
  cartanTensorLawful : Prop
  flagCurvatureDefined : Prop
  ricciCurvatureTraced : Prop

structure FinslerCurvatureEvidence (G : FinslerCurvaturePackage) where
  smoothManifoldClosed : G.smoothManifold
  finslerMetricSmoothClosed : G.finslerMetricSmooth
  cartanTensorLawfulClosed : G.cartanTensorLawful
  flagCurvatureDefinedClosed : G.flagCurvatureDefined
  ricciCurvatureTracedClosed : G.ricciCurvatureTraced

def FinslerCurvatureClosed (G : FinslerCurvaturePackage) : Prop :=
  G.smoothManifold ∧
  G.finslerMetricSmooth ∧
  G.cartanTensorLawful ∧
  G.flagCurvatureDefined ∧
  G.ricciCurvatureTraced

theorem finsler_curvature_closed_from_evidence
    (G : FinslerCurvaturePackage) (E : FinslerCurvatureEvidence G) :
    FinslerCurvatureClosed G := by
  exact And.intro E.smoothManifoldClosed
    (And.intro E.finslerMetricSmoothClosed
      (And.intro E.cartanTensorLawfulClosed
        (And.intro E.flagCurvatureDefinedClosed
          E.ricciCurvatureTracedClosed)))

end GlobalDifferentialGeometryFinslerSpacesCanonicalLaneLean
end HautevilleHouse
