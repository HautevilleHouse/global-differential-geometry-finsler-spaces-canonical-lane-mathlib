import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalDifferentialGeometryFinslerSpacesCanonicalLaneLean

structure FinslerAdmittedObject where
  manifoldType : Type u
  topology : TopologicalSpace manifoldType
  smoothStructure : manifoldType → Manifold manifoldType
  tangentBundle : Type v
  finslerMetric : TangentSpace → ℝ
  positiveHomogeneity : ∀ (x : manifoldType) (v : TangentSpace), finslerMetric (2*v) = 2 * finslerMetric v
  triangleInequality : ∀ (x : manifoldType) (u v : TangentSpace), finslerMetric (u+v) ≤ finslerMetric u + finslerMetric v
  conclusion : flagshipTheorem holds

structure AdmissibleClass where
  object : FinslerAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  flagshipTheoremWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end GlobalDifferentialGeometryFinslerSpacesCanonicalLaneLean
end HautevilleHouse