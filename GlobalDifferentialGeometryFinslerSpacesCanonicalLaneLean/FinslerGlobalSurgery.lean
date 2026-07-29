import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GlobalDifferentialGeometryFinslerSpacesCanonicalLaneLean.FinslerIndexTheorem

namespace HautevilleHouse
namespace GlobalDifferentialGeometryFinslerSpacesCanonicalLaneLean

structure FinslerSurgeryPackage {F : FinslerMetricPackage}
    {C : FinslerConnectionPackage F} {FC : FlagCurvaturePackage C}
    {H : HolonomyPackage C} {I : FinslerIndexPackage H} where
  surgeryTimesDiscrete : Prop
  surgeryRegionAdmissible : Prop
  postSurgeryMetricControlled : Prop
  indexSurvivesSurgery : Prop
  topologyChangeAccounted : Prop

structure FinslerSurgeryEvidence {F : FinslerMetricPackage}
    {C : FinslerConnectionPackage F} {FC : FlagCurvaturePackage C}
    {H : HolonomyPackage C} {I : FinslerIndexPackage H}
    (S : FinslerSurgeryPackage I) where
  surgeryTimesDiscreteClosed : S.surgeryTimesDiscrete
  surgeryRegionAdmissibleClosed : S.surgeryRegionAdmissible
  postSurgeryMetricControlledClosed : S.postSurgeryMetricControlled
  indexSurvivesSurgeryClosed : S.indexSurvivesSurgery
  topologyChangeAccountedClosed : S.topologyChangeAccounted

def FinslerSurgeryClosed {F : FinslerMetricPackage}
    {C : FinslerConnectionPackage F} {FC : FlagCurvaturePackage C}
    {H : HolonomyPackage C} {I : FinslerIndexPackage H}
    (S : FinslerSurgeryPackage I) : Prop :=
  S.surgeryTimesDiscrete ∧ S.surgeryRegionAdmissible ∧
  S.postSurgeryMetricControlled ∧ S.indexSurvivesSurgery ∧
  S.topologyChangeAccounted

theorem finsler_surgery_closed_from_evidence {F : FinslerMetricPackage}
    {C : FinslerConnectionPackage F} {FC : FlagCurvaturePackage C}
    {H : HolonomyPackage C} {I : FinslerIndexPackage H}
    (S : FinslerSurgeryPackage I) (E : FinslerSurgeryEvidence S) :
    FinslerSurgeryClosed S := by
  exact And.intro E.surgeryTimesDiscreteClosed
    (And.intro E.surgeryRegionAdmissibleClosed
      (And.intro E.postSurgeryMetricControlledClosed
        (And.intro E.indexSurvivesSurgeryClosed E.topologyChangeAccountedClosed)))

end GlobalDifferentialGeometryFinslerSpacesCanonicalLaneLean
end HautevilleHouse
