import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GlobalDifferentialGeometryFinslerSpacesCanonicalLaneLean.FinslerConnectionCurvature

namespace HautevilleHouse
namespace GlobalDifferentialGeometryFinslerSpacesCanonicalLaneLean

structure FlagCurvaturePackage {F : FinslerMetricPackage}
    {C : FinslerConnectionPackage F} where
  flagCurvatureTensor : Type u
  flagCurvatureBilinear : Type v
  schurVanishes : Prop
  einsteinCondition : Prop
  flagCurvaturePositivity : Prop

structure FlagCurvatureEvidence {F : FinslerMetricPackage}
    {C : FinslerConnectionPackage F} (FC : FlagCurvaturePackage C) where
  schurVanishesClosed : FC.schurVanishes
  einsteinConditionClosed : FC.einsteinCondition
  flagCurvaturePositivityClosed : FC.flagCurvaturePositivity

def FlagCurvatureClosed {F : FinslerMetricPackage}
    {C : FinslerConnectionPackage F} (FC : FlagCurvaturePackage C) : Prop :=
  FC.schurVanishes ∧ FC.einsteinCondition ∧ FC.flagCurvaturePositivity

theorem flag_curvature_closed_from_evidence {F : FinslerMetricPackage}
    {C : FinslerConnectionPackage F} (FC : FlagCurvaturePackage C)
    (E : FlagCurvatureEvidence FC) : FlagCurvatureClosed FC := by
  exact And.intro E.schurVanishesClosed
    (And.intro E.einsteinConditionClosed E.flagCurvaturePositivityClosed)

structure HolonomyPackage {F : FinslerMetricPackage}
    {C : FinslerConnectionPackage F} where
  holonomyGroup : Type u
  restrictedHolonomy : Type v
  berwaldHolonomyMatch : Prop
  ambartsoumianHolonomyTheorem : Prop

structure HolonomyEvidence {F : FinslerMetricPackage}
    {C : FinslerConnectionPackage F} (H : HolonomyPackage C) where
  berwaldHolonomyMatchClosed : H.berwaldHolonomyMatch
  ambartsoumianHolonomyTheoremClosed : H.ambartsoumianHolonomyTheorem

def HolonomyClosed {F : FinslerMetricPackage}
    {C : FinslerConnectionPackage F} (H : HolonomyPackage C) : Prop :=
  H.berwaldHolonomyMatch ∧ H.ambartsoumianHolonomyTheorem

theorem holonomy_closed_from_evidence {F : FinslerMetricPackage}
    {C : FinslerConnectionPackage F} (H : HolonomyPackage C)
    (E : HolonomyEvidence H) : HolonomyClosed H := by
  exact And.intro E.berwaldHolonomyMatchClosed E.ambartsoumianHolonomyTheoremClosed

end GlobalDifferentialGeometryFinslerSpacesCanonicalLaneLean
end HautevilleHouse
