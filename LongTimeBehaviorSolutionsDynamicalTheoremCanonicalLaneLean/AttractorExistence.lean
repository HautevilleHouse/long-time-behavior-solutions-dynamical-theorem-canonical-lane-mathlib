import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LongTimeBehaviorSolutionsDynamicalTheoremCanonicalLaneLean

structure AttractorExistencePackage where
  attractorSet : Type u
  invariantProperty : Prop
  attractingNeighborhood : Prop
  basinCharacterization : Prop
  omegaLimitEquivalence : Prop
  invariantPropertyClosed : invariantProperty
  attractingNeighborhoodClosed : attractingNeighborhood
  basinCharacterizationClosed : basinCharacterization
  omegaLimitEquivalenceClosed : omegaLimitEquivalence

structure AttractorExistenceEvidence (A : AttractorExistencePackage) where
  invariantPropertyClosed : A.invariantProperty
  attractingNeighborhoodClosed : A.attractingNeighborhood
  basinCharacterizationClosed : A.basinCharacterization
  omegaLimitEquivalenceClosed : A.omegaLimitEquivalence

def AttractorExistenceClosed (A : AttractorExistencePackage) : Prop :=
  A.invariantProperty ∧ A.attractingNeighborhood ∧ A.basinCharacterization ∧ A.omegaLimitEquivalence

theorem attractor_existence_closed_from_evidence
    (A : AttractorExistencePackage) (E : AttractorExistenceEvidence A) :
    AttractorExistenceClosed A := by
  exact And.intro E.invariantPropertyClosed (And.intro E.attractingNeighborhoodClosed (And.intro E.basinCharacterizationClosed E.omegaLimitEquivalenceClosed))

end LongTimeBehaviorSolutionsDynamicalTheoremCanonicalLaneLean
end HautevilleHouse
