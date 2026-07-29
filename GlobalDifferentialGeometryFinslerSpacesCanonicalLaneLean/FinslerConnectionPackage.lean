import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalDifferentialGeometryFinslerSpacesCanonicalLaneLean

structure FinslerConnectionPackage where
  christoffelSymbols : Prop
  nonlinearConnection : Prop
  cartanTorsion : Prop
  hvCurvature : Prop

def FinslerConnectionClosed (P : FinslerConnectionPackage) : Prop :=
  P.christoffelSymbols ∧ P.nonlinearConnection ∧ P.cartanTorsion ∧ P.hvCurvature

structure FinslerConnectionEvidence (P : FinslerConnectionPackage) where
  christoffelSymbolsClosed : P.christoffelSymbols
  nonlinearConnectionClosed : P.nonlinearConnection
  cartanTorsionClosed : P.cartanTorsion
  hvCurvatureClosed : P.hvCurvature

theorem finsler_connection_closed_from_evidence (P : FinslerConnectionPackage) (E : FinslerConnectionEvidence P) :
    FinslerConnectionClosed P := by
  exact And.intro E.christoffelSymbolsClosed (And.intro E.nonlinearConnectionClosed (And.intro E.cartanTorsionClosed E.hvCurvatureClosed))

end GlobalDifferentialGeometryFinslerSpacesCanonicalLaneLean
end HautevilleHouse
