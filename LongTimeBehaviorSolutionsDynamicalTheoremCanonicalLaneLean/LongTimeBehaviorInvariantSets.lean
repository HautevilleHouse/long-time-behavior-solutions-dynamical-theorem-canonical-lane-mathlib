import LongTimeBehaviorSolutionsDynamicalTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace LongTimeBehaviorSolutionsDynamicalTheoremCanonicalLaneLean

structure InvariantSetPackage (S : DynamicalSystemState) where
  invariantSet : S.state → Prop
  positivelyInvariant : ∀ x, invariantSet x → ∀ n, invariantSet (S.trajectory x n)
  omegaLimitInInvariant : ∀ x, S.omegaLimitSet x → invariantSet x
  invariantSetClosed : Prop
  invariantSetClosedTerm : invariantSetClosed

structure InvariantSetEvidence (S : DynamicalSystemState) (I : InvariantSetPackage S) where
  invariantSetClosed : I.invariantSetClosed

end LongTimeBehaviorSolutionsDynamicalTheoremCanonicalLaneLean
end HautevilleHouse