import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalDifferentialGeometryFinslerSpacesCanonicalLaneLean

structure FinslerManifoldPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  tangentBundle : Type v
  finslerMetric : Type w
  smoothStructure : Prop
  fundamentalTensorDefined : Prop
  convexityCondition : Prop
  reversibility : Prop

structure FinslerMetricEvidence (M : FinslerManifoldPackage) where
  smoothStructureClosed : M.smoothStructure
  fundamentalTensorDefinedClosed : M.fundamentalTensorDefined
  convexityConditionClosed : M.convexityCondition
  reversibilityClosed : M.reversibility

def FinslerMetricClosed (M : FinslerManifoldPackage) : Prop :=
  M.smoothStructure ∧ M.fundamentalTensorDefined ∧ M.convexityCondition ∧ M.reversibility

theorem finsler_metric_closed_from_evidence (M : FinslerManifoldPackage) (E : FinslerMetricEvidence M) :
    FinslerMetricClosed M := by
  exact And.intro E.smoothStructureClosed
    (And.intro E.fundamentalTensorDefinedClosed
      (And.intro E.convexityConditionClosed E.reversibilityClosed))

end GlobalDifferentialGeometryFinslerSpacesCanonicalLaneLean
end HautevilleHouse