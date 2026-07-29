import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LongTimeBehaviorSolutionsDynamicalTheoremCanonicalLaneLean

structure DynamicalSystemState where
  carrier : Type
  topology : TopologicalSpace carrier
  measure : carrier → Prop
  flow : carrier → carrier → carrier
  invariantMeasure : Prop

structure DynamicalAdmittedObject where
  state : DynamicalSystemState
  compactAttractorExists : Prop
  exponentialTracking : Prop
  attractorDimensionFinite : Prop
  conclusion : compactAttractorExists ∧ exponentialTracking ∧ attractorDimensionFinite

def DynamicalWitnessClosed (O : DynamicalAdmittedObject) : Prop :=
  O.conclusion

end LongTimeBehaviorSolutionsDynamicalTheoremCanonicalLaneLean
end HautevilleHouse