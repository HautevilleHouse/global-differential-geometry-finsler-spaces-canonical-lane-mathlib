import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalDifferentialGeometryFinslerSpacesCanonicalLaneLean

structure GeodesicFlowPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  spray : Type v
  exponentialMap : Type w
  geodesicComplete : Prop
  sprayRegular : Prop
  exponentialMapDefined : Prop
  geodesicFlowWellDefined : Prop

structure GeodesicFlowEvidence (G : GeodesicFlowPackage) where
  geodesicCompleteClosed : G.geodesicComplete
  sprayRegularClosed : G.sprayRegular
  exponentialMapDefinedClosed : G.exponentialMapDefined
  geodesicFlowWellDefinedClosed : G.geodesicFlowWellDefined

def GeodesicFlowClosed (G : GeodesicFlowPackage) : Prop :=
  G.geodesicComplete ∧
  G.sprayRegular ∧
  G.exponentialMapDefined ∧
  G.geodesicFlowWellDefined

theorem geodesic_flow_closed_from_evidence
    (G : GeodesicFlowPackage) (E : GeodesicFlowEvidence G) :
    GeodesicFlowClosed G := by
  exact And.intro E.geodesicCompleteClosed
    (And.intro E.sprayRegularClosed
      (And.intro E.exponentialMapDefinedClosed
        E.geodesicFlowWellDefinedClosed))

end GlobalDifferentialGeometryFinslerSpacesCanonicalLaneLean
end HautevilleHouse
