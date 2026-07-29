import LongTimeBehaviorSolutionsDynamicalTheoremCanonicalLaneLean.InvariantSets

namespace HautevilleHouse
namespace LongTimeBehaviorSolutionsDynamicalTheoremCanonicalLaneLean

structure OmegaLimitCompactnessPackage (S : DynamicalSystemState) where
  omegaLimitSetCompact : ∀ x, Compact (S.omegaLimitSet x)
  omegaLimitNonempty : ∀ x, Nonempty (S.omegaLimitSet x)
  omegaLimitCompactClosed : Prop
  omegaLimitCompactClosedTerm : omegaLimitCompactClosed

structure OmegaLimitCompactnessEvidence (S : DynamicalSystemState) (O : OmegaLimitCompactnessPackage S) where
  omegaLimitCompactClosed : O.omegaLimitCompactClosed

end LongTimeBehaviorSolutionsDynamicalTheoremCanonicalLaneLean
end HautevilleHouse