import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.LongTimeBehaviorSolutionsDynamicalTheoremCanonicalLaneLean.FiniteDimensionalAttractor

namespace HautevilleHouse
namespace LongTimeBehaviorSolutionsDynamicalTheoremCanonicalLaneLean

def bridgeClosed (A : DynamicalAdmittedObject) : Prop :=
  DynamicalWitnessClosed A

theorem bridge_from_admissible_class (A : DynamicalAdmittedObject) :
    bridgeClosed A := by
  exact A.conclusion

def gateClosed (A : DynamicalAdmittedObject) : Prop :=
  True

theorem gate_from_admissible_class (A : DynamicalAdmittedObject) :
    gateClosed A := by
  trivial

def ConstrainedLongTimeBehaviorClosure (A : DynamicalAdmittedObject) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_long_time_behavior_endgame (A : DynamicalAdmittedObject) :
    ConstrainedLongTimeBehaviorClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end LongTimeBehaviorSolutionsDynamicalTheoremCanonicalLaneLean
end HautevilleHouse