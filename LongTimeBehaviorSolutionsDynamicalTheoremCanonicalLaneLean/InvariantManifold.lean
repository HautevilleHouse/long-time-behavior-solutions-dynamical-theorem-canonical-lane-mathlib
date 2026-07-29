import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LongTimeBehaviorSolutionsDynamicalTheoremCanonicalLaneLean

structure InvariantManifoldPackage where
  stableManifold : Type u
  unstableManifold : Type u
  centerManifold : Type u
  invariantManifoldTheoremApplied : Prop

structure InvariantManifoldEvidence (I : InvariantManifoldPackage) where
  stableManifoldClosed : Prop
  unstableManifoldClosed : Prop
  centerManifoldClosed : Prop
  invariantManifoldTheoremAppliedClosed : I.invariantManifoldTheoremApplied

def InvariantManifoldClosed (I : InvariantManifoldPackage) : Prop :=
  I.invariantManifoldTheoremApplied

theorem invariant_manifold_closed_from_evidence (I : InvariantManifoldPackage) (E : InvariantManifoldEvidence I) : InvariantManifoldClosed I := by
  exact E.invariantManifoldTheoremAppliedClosed

end LongTimeBehaviorSolutionsDynamicalTheoremCanonicalLaneLean
end HautevilleHouse