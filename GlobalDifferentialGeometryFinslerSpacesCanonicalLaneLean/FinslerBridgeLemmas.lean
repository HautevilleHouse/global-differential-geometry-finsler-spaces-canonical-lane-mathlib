import GlobalDifferentialGeometryFinslerSpacesCanonicalLaneLean.FinslerAdmissibleClass

namespace HautevilleHouse
namespace GlobalDifferentialGeometryFinslerSpacesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  flagshipTheoremWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end GlobalDifferentialGeometryFinslerSpacesCanonicalLaneLean
end HautevilleHouse