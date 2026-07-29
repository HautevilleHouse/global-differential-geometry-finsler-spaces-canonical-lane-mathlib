import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GlobalDifferentialGeometryFinslerSpacesCanonicalLaneLean.ChernConnection

namespace HautevilleHouse
namespace GlobalDifferentialGeometryFinslerSpacesCanonicalLaneLean

structure HolonomyPackage {M : FinslerManifoldPackage} (C : ChernConnectionPackage M) where
  holonomyGroup : Type u
  reducedHolonomy : Prop
  berwaldHolonomy : Prop
  cartanHolonomy : Prop
  invarianceProperties : Prop

structure HolonomyEvidence {M : FinslerManifoldPackage} {C : ChernConnectionPackage M}
    (H : HolonomyPackage C) where
  reducedHolonomyClosed : H.reducedHolonomy
  berwaldHolonomyClosed : H.berwaldHolonomy
  cartanHolonomyClosed : H.cartanHolonomy
  invariancePropertiesClosed : H.invarianceProperties

def HolonomyClosed {M : FinslerManifoldPackage} {C : ChernConnectionPackage M}
    (H : HolonomyPackage C) : Prop :=
  H.reducedHolonomy ∧ H.berwaldHolonomy ∧ H.cartanHolonomy ∧ H.invarianceProperties

theorem holonomy_closed_from_evidence {M : FinslerManifoldPackage} {C : ChernConnectionPackage M}
    (H : HolonomyPackage C) (E : HolonomyEvidence H) : HolonomyClosed H := by
  exact And.intro E.reducedHolonomyClosed
    (And.intro E.berwaldHolonomyClosed
      (And.intro E.cartanHolonomyClosed E.invariancePropertiesClosed))

end GlobalDifferentialGeometryFinslerSpacesCanonicalLaneLean
end HautevilleHouse