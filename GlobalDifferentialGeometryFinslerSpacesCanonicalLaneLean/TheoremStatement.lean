import GlobalDifferentialGeometryFinslerSpacesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace GlobalDifferentialGeometryFinslerSpacesCanonicalLaneLean

structure AdmissibleClass where
  object : FinslerAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  FinslerWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end GlobalDifferentialGeometryFinslerSpacesCanonicalLaneLean
end HautevilleHouse