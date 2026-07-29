import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GlobalDifferentialGeometryFinslerSpacesCanonicalLaneLean.FinslerMetricStructure
import HautevilleHouse.GlobalDifferentialGeometryFinslerSpacesCanonicalLaneLean.ChernConnection
import HautevilleHouse.GlobalDifferentialGeometryFinslerSpacesCanonicalLaneLean.FinslerCurvature
import HautevilleHouse.GlobalDifferentialGeometryFinslerSpacesCanonicalLaneLean.GeodesicFlow

namespace HautevilleHouse
namespace GlobalDifferentialGeometryFinslerSpacesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  FinslerMetricClosed A.object

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

def ConstrainedFinslerClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_finsler_endgame (A : AdmissibleClass) : ConstrainedFinslerClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GlobalDifferentialGeometryFinslerSpacesCanonicalLaneLean
end HautevilleHouse