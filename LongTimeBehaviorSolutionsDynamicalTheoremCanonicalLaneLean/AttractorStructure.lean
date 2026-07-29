import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LongTimeBehaviorSolutionsDynamicalTheoremCanonicalLaneLean

structure AttractorStructurePackage where
  attractorSet : Type u
  invariantUnderFlow : Prop
  basinOfAttraction : Prop
  laSallePrincipleApplied : Prop
  omegaLimitSetCharacterized : Prop

structure AttractorStructureEvidence (A : AttractorStructurePackage) where
  invariantUnderFlowClosed : A.invariantUnderFlow
  basinOfAttractionClosed : A.basinOfAttraction
  laSallePrincipleAppliedClosed : A.laSallePrincipleApplied
  omegaLimitSetCharacterizedClosed : A.omegaLimitSetCharacterized

def AttractorStructureClosed (A : AttractorStructurePackage) : Prop :=
  A.invariantUnderFlow ∧ A.basinOfAttraction ∧ A.laSallePrincipleApplied ∧ A.omegaLimitSetCharacterized

theorem attractor_structure_closed_from_evidence (A : AttractorStructurePackage) (E : AttractorStructureEvidence A) : AttractorStructureClosed A := by
  exact And.intro E.invariantUnderFlowClosed (And.intro E.basinOfAttractionClosed (And.intro E.laSallePrincipleAppliedClosed E.omegaLimitSetCharacterizedClosed))

end LongTimeBehaviorSolutionsDynamicalTheoremCanonicalLaneLean
end HautevilleHouse