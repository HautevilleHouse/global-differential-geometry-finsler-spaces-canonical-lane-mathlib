import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalDifferentialGeometryFinslerSpacesCanonicalLaneLean

open FinslerCurvaturePackage

structure FinslerIndexTheoremPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  finslerMetric : Type v
  indexForm : Type w
  morseIndexTheorem : Prop
  geodesicNondegenerate : Prop
  indexComputed : Prop

structure FinslerIndexTheoremEvidence (I : FinslerIndexTheoremPackage) where
  morseIndexTheoremClosed : I.morseIndexTheorem
  geodesicNondegenerateClosed : I.geodesicNondegenerate
  indexComputedClosed : I.indexComputed

def FinslerIndexTheoremClosed (I : FinslerIndexTheoremPackage) : Prop :=
  I.morseIndexTheorem ∧
  I.geodesicNondegenerate ∧
  I.indexComputed

theorem finsler_index_theorem_closed_from_evidence
    (I : FinslerIndexTheoremPackage) (E : FinslerIndexTheoremEvidence I) :
    FinslerIndexTheoremClosed I := by
  exact And.intro E.morseIndexTheoremClosed
    (And.intro E.geodesicNondegenerateClosed
      E.indexComputedClosed)

end GlobalDifferentialGeometryFinslerSpacesCanonicalLaneLean
end HautevilleHouse
