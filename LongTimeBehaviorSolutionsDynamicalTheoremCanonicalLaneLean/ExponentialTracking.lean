import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.LongTimeBehaviorSolutionsDynamicalTheoremCanonicalLaneLean.DynamicalSystemState

namespace HautevilleHouse
namespace LongTimeBehaviorSolutionsDynamicalTheoremCanonicalLaneLean

structure ExponentialTrackingPackage (S : DynamicalSystemState) where
  exponentialRate : ℝ
  convergenceRatePositive : Prop
  semiconjugacyToNormalForm : Prop
  topologicalEntropyCondition : Prop

structure ExponentialTrackingEvidence {S : DynamicalSystemState} (E : ExponentialTrackingPackage S) where
  convergenceRatePositiveClosed : E.convergenceRatePositive
  semiconjugacyToNormalFormClosed : E.semiconjugacyToNormalForm
  topologicalEntropyConditionClosed : E.topologicalEntropyCondition

def ExponentialTrackingClosed {S : DynamicalSystemState} (E : ExponentialTrackingPackage S) : Prop :=
  E.convergenceRatePositive ∧ E.semiconjugacyToNormalForm ∧ E.topologicalEntropyCondition

theorem exponential_tracking_closed_from_evidence
    {S : DynamicalSystemState} (E : ExponentialTrackingPackage S)
    (Ev : ExponentialTrackingEvidence E) : ExponentialTrackingClosed E := by
  exact And.intro Ev.convergenceRatePositiveClosed
    (And.intro Ev.semiconjugacyToNormalFormClosed Ev.topologicalEntropyConditionClosed)

end LongTimeBehaviorSolutionsDynamicalTheoremCanonicalLaneLean
end HautevilleHouse