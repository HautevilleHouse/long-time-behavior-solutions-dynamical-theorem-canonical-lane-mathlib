import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LongTimeBehaviorSolutionsDynamicalTheoremCanonicalLaneLean

structure AsymptoticBehaviorPackage where
  omegaLimitSet : Type u
  attractorStructure : Prop
  convergenceRate : Prop
  invarianceProperty : Prop
  lyapunovFunctionExistence : Prop

structure AsymptoticBehaviorEvidence (A : AsymptoticBehaviorPackage) where
  attractorStructureClosed : A.attractorStructure
  convergenceRateClosed : A.convergenceRate
  invariancePropertyClosed : A.invarianceProperty
  lyapunovFunctionExistenceClosed : A.lyapunovFunctionExistence

def AsymptoticBehaviorClosed (A : AsymptoticBehaviorPackage) : Prop :=
  A.attractorStructure ∧ A.convergenceRate ∧ A.invarianceProperty ∧ A.lyapunovFunctionExistence

theorem asymptotic_behavior_closed_from_evidence (A : AsymptoticBehaviorPackage) (E : AsymptoticBehaviorEvidence A) : AsymptoticBehaviorClosed A := by
  exact And.intro E.attractorStructureClosed (And.intro E.convergenceRateClosed (And.intro E.invariancePropertyClosed E.lyapunovFunctionExistenceClosed))

end LongTimeBehaviorSolutionsDynamicalTheoremCanonicalLaneLean
end HautevilleHouse
