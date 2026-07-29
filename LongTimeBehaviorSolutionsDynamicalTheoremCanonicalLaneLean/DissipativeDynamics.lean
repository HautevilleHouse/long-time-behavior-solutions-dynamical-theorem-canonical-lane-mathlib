import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LongTimeBehaviorSolutionsDynamicalTheoremCanonicalLaneLean

structure DissipativeDynamicsPackage where
  absorbingSetExists : Prop
  ultimateBoundedness : Prop
  dissipationInequality : Prop
  globalAttractorConstruction : Prop

structure DissipativeDynamicsEvidence (D : DissipativeDynamicsPackage) where
  absorbingSetExistsClosed : D.absorbingSetExists
  ultimateBoundednessClosed : D.ultimateBoundedness
  dissipationInequalityClosed : D.dissipationInequality
  globalAttractorConstructionClosed : D.globalAttractorConstruction

def DissipativeDynamicsClosed (D : DissipativeDynamicsPackage) : Prop :=
  D.absorbingSetExists ∧ D.ultimateBoundedness ∧ D.dissipationInequality ∧ D.globalAttractorConstruction

theorem dissipative_dynamics_closed_from_evidence (D : DissipativeDynamicsPackage) (E : DissipativeDynamicsEvidence D) : DissipativeDynamicsClosed D := by
  exact And.intro E.absorbingSetExistsClosed (And.intro E.ultimateBoundednessClosed (And.intro E.dissipationInequalityClosed E.globalAttractorConstructionClosed))

end LongTimeBehaviorSolutionsDynamicalTheoremCanonicalLaneLean
end HautevilleHouse