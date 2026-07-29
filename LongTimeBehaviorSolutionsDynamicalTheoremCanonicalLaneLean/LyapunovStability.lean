import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LongTimeBehaviorSolutionsDynamicalTheoremCanonicalLaneLean

structure LyapunovStabilityPackage where
  lyapunovFunction : Type u
  positiveDefinite : Prop
  derivativeNonPositive : Prop
  equilibriumSet : Prop
  stabilityConclusion : Prop

structure LyapunovStabilityEvidence (L : LyapunovStabilityPackage) where
  positiveDefiniteClosed : L.positiveDefinite
  derivativeNonPositiveClosed : L.derivativeNonPositive
  equilibriumSetClosed : L.equilibriumSet
  stabilityConclusionClosed : L.stabilityConclusion

def LyapunovStabilityClosed (L : LyapunovStabilityPackage) : Prop :=
  L.positiveDefinite ∧ L.derivativeNonPositive ∧ L.equilibriumSet ∧ L.stabilityConclusion

theorem lyapunov_stability_closed_from_evidence (L : LyapunovStabilityPackage) (E : LyapunovStabilityEvidence L) : LyapunovStabilityClosed L := by
  exact And.intro E.positiveDefiniteClosed (And.intro E.derivativeNonPositiveClosed (And.intro E.equilibriumSetClosed E.stabilityConclusionClosed))

end LongTimeBehaviorSolutionsDynamicalTheoremCanonicalLaneLean
end HautevilleHouse