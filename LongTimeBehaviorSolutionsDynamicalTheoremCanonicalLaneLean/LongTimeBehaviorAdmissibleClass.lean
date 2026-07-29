import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LongTimeBehaviorSolutionsDynamicalTheoremCanonicalLaneLean

structure DynamicalSystemState where
  state : Type
  dynamics : state → state
  omegaLimitSet : state → Prop
  trajectory : state → ℕ → state
  asymptoticBehavior : Prop

structure AdmittedDynamicalObject where
  system : DynamicalSystemState
  invariantSet : Prop
  omegaLimitCompact : Prop
  convergenceToOmegaLimit : Prop
  conclusion : convergenceToOmegaLimit

def DynamicalWitnessClosed (O : AdmittedDynamicalObject) : Prop :=
  O.convergenceToOmegaLimit

structure AdmissibleClass where
  object : AdmittedDynamicalObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  DynamicalWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end LongTimeBehaviorSolutionsDynamicalTheoremCanonicalLaneLean
end HautevilleHouse