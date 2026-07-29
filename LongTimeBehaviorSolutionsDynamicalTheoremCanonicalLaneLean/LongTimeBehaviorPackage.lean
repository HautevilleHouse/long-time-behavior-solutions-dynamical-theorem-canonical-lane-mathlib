import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LongTimeBehaviorSolutionsDynamicalTheoremCanonicalLaneLean

structure LongTimeBehaviorPackage where
  vectorField : Type u
  phaseSpace : Type v
  flowMap : vectorField → ℝ → phaseSpace → phaseSpace
  invariantMeasure : Type w
  omegaLimitSet : Type x
  attractor : Type y
  basinOfAttraction : Prop
  lyapunovFunction : Prop
  laSalleInvariance : Prop
  omegaLimitCompact : Prop
  attractorExistence : Prop
  basinOfAttractionClosed : basinOfAttraction
  lyapunovFunctionClosed : lyapunovFunction
  laSalleInvarianceClosed : laSalleInvariance
  omegaLimitCompactClosed : omegaLimitCompact
  attractorExistenceClosed : attractorExistence

structure LongTimeBehaviorEvidence (L : LongTimeBehaviorPackage) where
  basinOfAttractionClosed : L.basinOfAttraction
  lyapunovFunctionClosed : L.lyapunovFunction
  laSalleInvarianceClosed : L.laSalleInvariance
  omegaLimitCompactClosed : L.omegaLimitCompact
  attractorExistenceClosed : L.attractorExistence

def LongTimeBehaviorClosed (L : LongTimeBehaviorPackage) : Prop :=
  L.basinOfAttraction ∧ L.lyapunovFunction ∧ L.laSalleInvariance ∧ L.omegaLimitCompact ∧ L.attractorExistence

theorem long_time_behavior_closed_from_evidence
    (L : LongTimeBehaviorPackage) (E : LongTimeBehaviorEvidence L) :
    LongTimeBehaviorClosed L := by
  exact And.intro E.basinOfAttractionClosed
    (And.intro E.lyapunovFunctionClosed
      (And.intro E.laSalleInvarianceClosed
        (And.intro E.omegaLimitCompactClosed E.attractorExistenceClosed)))

end LongTimeBehaviorSolutionsDynamicalTheoremCanonicalLaneLean
end HautevilleHouse
