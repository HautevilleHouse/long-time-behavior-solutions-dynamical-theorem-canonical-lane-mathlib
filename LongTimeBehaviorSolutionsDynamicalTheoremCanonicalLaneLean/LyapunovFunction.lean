import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LongTimeBehaviorSolutionsDynamicalTheoremCanonicalLaneLean

structure LyapunovFunctionPackage where
  domain : Type u
  functionValue : domain → ℝ
  decreasingAlongFlow : Prop
  lowerBounded : Prop
  rayleighQuotient : Prop
  sublevelSetsCompact : Prop
  decreasingAlongFlowClosed : decreasingAlongFlow
  lowerBoundedClosed : lowerBounded
  rayleighQuotientClosed : rayleighQuotient
  sublevelSetsCompactClosed : sublevelSetsCompact

structure LyapunovFunctionEvidence (L : LyapunovFunctionPackage) where
  decreasingAlongFlowClosed : L.decreasingAlongFlow
  lowerBoundedClosed : L.lowerBounded
  rayleighQuotientClosed : L.rayleighQuotient
  sublevelSetsCompactClosed : L.sublevelSetsCompact

def LyapunovFunctionClosed (L : LyapunovFunctionPackage) : Prop :=
  L.decreasingAlongFlow ∧ L.lowerBounded ∧ L.rayleighQuotient ∧ L.sublevelSetsCompact

theorem lyapunov_function_closed_from_evidence
    (L : LyapunovFunctionPackage) (E : LyapunovFunctionEvidence L) :
    LyapunovFunctionClosed L := by
  exact And.intro E.decreasingAlongFlowClosed (And.intro E.lowerBoundedClosed (And.intro E.rayleighQuotientClosed E.sublevelSetsCompactClosed))

end LongTimeBehaviorSolutionsDynamicalTheoremCanonicalLaneLean
end HautevilleHouse
