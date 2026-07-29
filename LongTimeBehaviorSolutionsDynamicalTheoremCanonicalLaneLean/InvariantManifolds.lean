import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LongTimeBehaviorSolutionsDynamicalTheoremCanonicalLaneLean

structure InvariantManifoldsPackage where
  stableManifoldExists : Prop
  unstableManifoldExists : Prop
  centerManifoldExists : Prop
  invariantManifoldPersistence : Prop
  localStabilityUnderPerturbation : Prop

structure InvariantManifoldsEvidence (I : InvariantManifoldsPackage) where
  stableManifoldExistsClosed : I.stableManifoldExists
  unstableManifoldExistsClosed : I.unstableManifoldExists
  centerManifoldExistsClosed : I.centerManifoldExists
  invariantManifoldPersistenceClosed : I.invariantManifoldPersistence
  localStabilityUnderPerturbationClosed : I.localStabilityUnderPerturbation

def InvariantManifoldsClosed (I : InvariantManifoldsPackage) : Prop :=
  I.stableManifoldExists ∧ I.unstableManifoldExists ∧ I.centerManifoldExists ∧
  I.invariantManifoldPersistence ∧ I.localStabilityUnderPerturbation

theorem invariant_manifolds_closed_from_evidence (I : InvariantManifoldsPackage) (E : InvariantManifoldsEvidence I) : InvariantManifoldsClosed I := by
  exact And.intro E.stableManifoldExistsClosed (And.intro E.unstableManifoldExistsClosed (And.intro E.centerManifoldExistsClosed (And.intro E.invariantManifoldPersistenceClosed E.localStabilityUnderPerturbationClosed)))

end LongTimeBehaviorSolutionsDynamicalTheoremCanonicalLaneLean
end HautevilleHouse
