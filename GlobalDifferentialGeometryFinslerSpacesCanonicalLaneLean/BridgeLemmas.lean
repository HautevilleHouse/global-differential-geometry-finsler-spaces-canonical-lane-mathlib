import GlobalDifferentialGeometryFinslerSpacesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace GlobalDifferentialGeometryFinslerSpacesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  FinslerWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end GlobalDifferentialGeometryFinslerSpacesCanonicalLaneLean
end HautevilleHouse