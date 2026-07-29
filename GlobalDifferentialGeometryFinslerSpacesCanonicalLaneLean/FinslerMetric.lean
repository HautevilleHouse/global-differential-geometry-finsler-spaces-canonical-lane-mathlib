import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalDifferentialGeometryFinslerSpacesCanonicalLaneLean

structure FinslerMetricPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  smoothStructure : Prop
  tangentBundle : Type v
  finslerFundamentalFunction : tangentBundle → ℝ
  positiveHomogeneity : Prop
  strongConvexity : Prop
  smoothness : Prop

structure FinslerMetricEvidence (F : FinslerMetricPackage) where
  positiveHomogeneityClosed : F.positiveHomogeneity
  strongConvexityClosed : F.strongConvexity
  smoothnessClosed : F.smoothness

def FinslerMetricClosed (F : FinslerMetricPackage) : Prop :=
  F.positiveHomogeneity ∧ F.strongConvexity ∧ F.smoothness

theorem finsler_metric_closed_from_evidence (F : FinslerMetricPackage) (E : FinslerMetricEvidence F) : FinslerMetricClosed F :=
  And.intro E.positiveHomogeneityClosed (And.intro E.strongConvexityClosed E.smoothnessClosed)

end GlobalDifferentialGeometryFinslerSpacesCanonicalLaneLean
end HautevilleHouse