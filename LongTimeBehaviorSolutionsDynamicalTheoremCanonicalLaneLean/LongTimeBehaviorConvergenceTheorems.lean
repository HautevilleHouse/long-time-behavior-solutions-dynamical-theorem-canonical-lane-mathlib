import LongTimeBehaviorSolutionsDynamicalTheoremCanonicalLaneLean.OmegaLimitCompactness

namespace HautevilleHouse
namespace LongTimeBehaviorSolutionsDynamicalTheoremCanonicalLaneLean

structure ConvergencePackage (S : DynamicalSystemState) where
  convergenceToOmegaLimit : ∀ x, ∃ y ∈ S.omegaLimitSet x, ∀ ε > 0, ∃ N, ∀ n ≥ N, dist (S.trajectory x n) y < ε
  rateOfConvergence : ℕ → ℝ
  rateTendsToZero : ∀ ε > 0, ∃ N, ∀ n ≥ N, rateOfConvergence n < ε
  convergenceClosed : Prop
  convergenceClosedTerm : convergenceClosed

structure ConvergenceEvidence (S : DynamicalSystemState) (C : ConvergencePackage S) where
  convergenceClosed : C.convergenceClosed

end LongTimeBehaviorSolutionsDynamicalTheoremCanonicalLaneLean
end HautevilleHouse