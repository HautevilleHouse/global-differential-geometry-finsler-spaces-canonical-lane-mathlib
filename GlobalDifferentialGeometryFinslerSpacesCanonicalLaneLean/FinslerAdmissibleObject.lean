import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalDifferentialGeometryFinslerSpacesCanonicalLaneLean

structure FinslerSpace (M : Type u) where
  carrier : Set M
  topology : TopologicalSpace carrier
  norm : carrier → (TangentSpace carrier) → ℝ
  positiveHomogeneous : ∀ (x : carrier) (v : TangentSpace carrier), norm x (λ t => t * v) = |λ t| * norm x v
  subadditive : ∀ (x : carrier) (v w : TangentSpace carrier), norm x (v + w) ≤ norm x v + norm x w
  nondegenerate : ∀ (x : carrier) (v : TangentSpace carrier), norm x v ≥ 0 ∧ (norm x v = 0 → v = 0)

structure FinslerAdmittedObject where
  space : FinslerSpace (Fin 3 → ℝ)  -- local model for 3-manifold
  smooth : Prop
  reversible : Prop
  conclusion : smooth ∧ reversible

def FinslerWitnessClosed (O : FinslerAdmittedObject) : Prop :=
  O.conclusion

end GlobalDifferentialGeometryFinslerSpacesCanonicalLaneLean
end HautevilleHouse
