import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalDifferentialGeometryFinslerSpacesCanonicalLaneLean

structure FinslerMetricPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  tangentBundle : Type v
  finslerNorm : tangentBundle → ℝ
  positiveHomogeneity : ∀ (x : manifold) (v : tangentBundle) (t : ℝ), t ≥ 0 →
    finslerNorm (t • v) = t * finslerNorm v
  subadditivity : ∀ (x : manifold) (v w : tangentBundle),
    finslerNorm (v + w) ≤ finslerNorm v + finslerNorm w
  smoothness : Prop
  strongConvexity : Prop

structure FinslerMetricEvidence (F : FinslerMetricPackage) where
  positiveHomogeneityClosed : F.positiveHomogeneity
  subadditivityClosed : F.subadditivity
  smoothnessClosed : F.smoothness
  strongConvexityClosed : F.strongConvexity

def FinslerMetricClosed (F : FinslerMetricPackage) : Prop :=
  F.positiveHomogeneity ∧ F.subadditivity ∧ F.smoothness ∧ F.strongConvexity

theorem finsler_metric_closed_from_evidence (F : FinslerMetricPackage)
    (E : FinslerMetricEvidence F) : FinslerMetricClosed F := by
  exact And.intro E.positiveHomogeneityClosed
    (And.intro E.subadditivityClosed
      (And.intro E.smoothnessClosed E.strongConvexityClosed))

end GlobalDifferentialGeometryFinslerSpacesCanonicalLaneLean
end HautevilleHouse
