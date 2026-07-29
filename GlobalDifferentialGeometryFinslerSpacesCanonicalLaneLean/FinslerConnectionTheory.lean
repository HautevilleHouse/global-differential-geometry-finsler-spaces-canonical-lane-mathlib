import GlobalDifferentialGeometryFinslerSpacesCanonicalLaneLean.FinslerCurvature

/-!
# Finsler Connection Theory Package
-/

namespace HautevilleHouse
namespace GlobalDifferentialGeometryFinslerSpacesCanonicalLaneLean

structure FinslerConnectionPackage {G : FinslerCurvaturePackage} where
  nonLinearConnection : Type u
  parallelTransport : Type v
  connectionDefined : Prop
  torsionFree : Prop
  metricCompatible : Prop
  cartanConnectionConstructed : Prop

structure FinslerConnectionEvidence {G : FinslerCurvaturePackage}
    (C : FinslerConnectionPackage G) where
  connectionDefinedClosed : C.connectionDefined
  torsionFreeClosed : C.torsionFree
  metricCompatibleClosed : C.metricCompatible
  cartanConnectionConstructedClosed : C.cartanConnectionConstructed

def FinslerConnectionClosed {G : FinslerCurvaturePackage}
    (C : FinslerConnectionPackage G) : Prop :=
  C.connectionDefined ∧ C.torsionFree ∧ C.metricCompatible ∧ C.cartanConnectionConstructed

theorem finsler_connection_closed_from_evidence
    {G : FinslerCurvaturePackage} (C : FinslerConnectionPackage G)
    (E : FinslerConnectionEvidence C) : FinslerConnectionClosed C := by
  exact And.intro E.connectionDefinedClosed
    (And.intro E.torsionFreeClosed
      (And.intro E.metricCompatibleClosed E.cartanConnectionConstructedClosed))

end GlobalDifferentialGeometryFinslerSpacesCanonicalLaneLean
end HautevilleHouse