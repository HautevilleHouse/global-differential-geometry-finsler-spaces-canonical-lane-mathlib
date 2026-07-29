import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GlobalDifferentialGeometryFinslerSpacesCanonicalLaneLean.FinslerMetricPackage

namespace HautevilleHouse
namespace GlobalDifferentialGeometryFinslerSpacesCanonicalLaneLean

structure FinslerConnectionPackage {F : FinslerMetricPackage} where
  connectionForm : Type u
  torsionFree : Prop
  metricCompatible : Prop
  berwaldCurvature : Type v
  cartanTorsion : Type w

def FinslerConnectionPackage.toCurvaturePackage {F : FinslerMetricPackage}
    (C : FinslerConnectionPackage F) : Type := C.berwaldCurvature

structure FinslerConnectionEvidence {F : FinslerMetricPackage}
    (C : FinslerConnectionPackage F) where
  torsionFreeClosed : C.torsionFree
  metricCompatibleClosed : C.metricCompatible

def FinslerConnectionClosed {F : FinslerMetricPackage}
    (C : FinslerConnectionPackage F) : Prop :=
  C.torsionFree ∧ C.metricCompatible

theorem finsler_connection_closed_from_evidence {F : FinslerMetricPackage}
    (C : FinslerConnectionPackage F) (E : FinslerConnectionEvidence C) :
    FinslerConnectionClosed C := by
  exact And.intro E.torsionFreeClosed E.metricCompatibleClosed

end GlobalDifferentialGeometryFinslerSpacesCanonicalLaneLean
end HautevilleHouse
