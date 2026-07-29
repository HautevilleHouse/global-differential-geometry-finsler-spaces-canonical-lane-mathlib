import GlobalDifferentialGeometryFinslerSpacesCanonicalLaneLean.TheoremStatement

namespace HautevilleHouse
namespace GlobalDifferentialGeometryFinslerSpacesCanonicalLaneLean

open HautevilleHouse.GlobalDifferentialGeometryFinslerSpacesCanonicalLaneLean

structure FinslerSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure FinslerAdmittedObject where
  space : FinslerSpace
  finslerMetricDefined : Prop
  curvatureInvariantsControlled : Prop
  indexTheoremValid : Prop
  holonomyStructure : Prop
  conclusion : indexTheoremValid ∧ holonomyStructure

structure FinslerEndgameState where
  object : FinslerAdmittedObject

def FinslerWitnessClosed (O : FinslerAdmittedObject) : Prop :=
  O.indexTheoremValid ∧ O.holonomyStructure

end GlobalDifferentialGeometryFinslerSpacesCanonicalLaneLean
end HautevilleHouse