import GlobalDifferentialGeometryFinslerSpacesCanonicalLaneLean.FinslerConnectionTheory

/-!
# Finsler Holonomy Package
-/

namespace HautevilleHouse
namespace GlobalDifferentialGeometryFinslerSpacesCanonicalLaneLean

structure FinslerHolonomyPackage {G : FinslerCurvaturePackage}
    {C : FinslerConnectionPackage G} where
  holonomyGroup : Type u
  holonomyLieGroup : Type v
  holonomyDefined : Prop
  reducedHolonomy : Prop
  ambroseSingerTheorem : Prop

structure FinslerHolonomyEvidence {G : FinslerCurvaturePackage}
    {C : FinslerConnectionPackage G} (H : FinslerHolonomyPackage C) where
  holonomyDefinedClosed : H.holonomyDefined
  reducedHolonomyClosed : H.reducedHolonomy
  ambroseSingerTheoremClosed : H.ambroseSingerTheorem

def FinslerHolonomyClosed {G : FinslerCurvaturePackage}
    {C : FinslerConnectionPackage G} (H : FinslerHolonomyPackage C) : Prop :=
  H.holonomyDefined ∧ H.reducedHolonomy ∧ H.ambroseSingerTheorem

theorem finsler_holonomy_closed_from_evidence
    {G : FinslerCurvaturePackage} {C : FinslerConnectionPackage G}
    (H : FinslerHolonomyPackage C) (E : FinslerHolonomyEvidence H) :
    FinslerHolonomyClosed H := by
  exact And.intro E.holonomyDefinedClosed
    (And.intro E.reducedHolonomyClosed E.ambroseSingerTheoremClosed)

end GlobalDifferentialGeometryFinslerSpacesCanonicalLaneLean
end HautevilleHouse