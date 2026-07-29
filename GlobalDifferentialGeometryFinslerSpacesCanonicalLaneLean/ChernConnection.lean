import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GlobalDifferentialGeometryFinslerSpacesCanonicalLaneLean.FinslerMetricStructure

namespace HautevilleHouse
namespace GlobalDifferentialGeometryFinslerSpacesCanonicalLaneLean

structure ChernConnectionPackage (M : FinslerManifoldPackage) where
  connectionCoefficients : Type u
  torsionFree : Prop
  metricCompatibleCartan : Prop
  geodesicSpray : Prop
  parallelTransport : Prop

structure ChernConnectionEvidence {M : FinslerManifoldPackage} (C : ChernConnectionPackage M) where
  torsionFreeClosed : C.torsionFree
  metricCompatibleCartanClosed : C.metricCompatibleCartan
  geodesicSprayClosed : C.geodesicSpray
  parallelTransportClosed : C.parallelTransport

def ChernConnectionClosed {M : FinslerManifoldPackage} (C : ChernConnectionPackage M) : Prop :=
  C.torsionFree ∧ C.metricCompatibleCartan ∧ C.geodesicSpray ∧ C.parallelTransport

theorem chern_connection_closed_from_evidence {M : FinslerManifoldPackage}
    (C : ChernConnectionPackage M) (E : ChernConnectionEvidence C) : ChernConnectionClosed C := by
  exact And.intro E.torsionFreeClosed
    (And.intro E.metricCompatibleCartanClosed
      (And.intro E.geodesicSprayClosed E.parallelTransportClosed))

end GlobalDifferentialGeometryFinslerSpacesCanonicalLaneLean
end HautevilleHouse