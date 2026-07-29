import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LongTimeBehaviorSolutionsDynamicalTheoremCanonicalLaneLean

structure OmegaLimitSetPackage where
  trajectorySpace : Type u
  omegaLimitSetDefined : Prop
  invariantAndClosed : Prop
  nonemptyIfPrecompact : Prop
  connectedIfCompact : Prop

structure OmegaLimitSetEvidence (O : OmegaLimitSetPackage) where
  omegaLimitSetDefinedClosed : O.omegaLimitSetDefined
  invariantAndClosedClosed : O.invariantAndClosed
  nonemptyIfPrecompactClosed : O.nonemptyIfPrecompact
  connectedIfCompactClosed : O.connectedIfCompact

def OmegaLimitSetClosed (O : OmegaLimitSetPackage) : Prop :=
  O.omegaLimitSetDefined ∧ O.invariantAndClosed ∧ O.nonemptyIfPrecompact ∧ O.connectedIfCompact

theorem omega_limit_set_closed_from_evidence (O : OmegaLimitSetPackage) (E : OmegaLimitSetEvidence O) : OmegaLimitSetClosed O := by
  exact And.intro E.omegaLimitSetDefinedClosed (And.intro E.invariantAndClosedClosed (And.intro E.nonemptyIfPrecompactClosed E.connectedIfCompactClosed))

end LongTimeBehaviorSolutionsDynamicalTheoremCanonicalLaneLean
end HautevilleHouse