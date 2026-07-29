import GlobalDifferentialGeometryFinslerSpacesCanonicalLaneLean.FinslerGateLemmas

namespace HautevilleHouse
namespace GlobalDifferentialGeometryFinslerSpacesCanonicalLaneLean

def ConstrainedFinslerClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_finsler_endgame (A : AdmissibleClass) :
    ConstrainedFinslerClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GlobalDifferentialGeometryFinslerSpacesCanonicalLaneLean
end HautevilleHouse