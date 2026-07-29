import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.LongTimeBehaviorSolutionsDynamicalTheoremCanonicalLaneLean.AttractorExistence
import HautevilleHouse.LongTimeBehaviorSolutionsDynamicalTheoremCanonicalLaneLean.ExponentialTracking

namespace HautevilleHouse
namespace LongTimeBehaviorSolutionsDynamicalTheoremCanonicalLaneLean

structure FiniteDimensionalAttractorPackage {S : DynamicalSystemState}
    (A : AttractorExistencePackage S) (E : ExponentialTrackingPackage S) where
  hausdorffDimensionFinite : Prop
  lyapunovDimensionUpperBound : Prop
  fractalDimensionFinite : Prop

structure FiniteDimensionalAttractorEvidence {S : DynamicalSystemState}
    {A : AttractorExistencePackage S} {E : ExponentialTrackingPackage S}
    (F : FiniteDimensionalAttractorPackage A E) where
  hausdorffDimensionFiniteClosed : F.hausdorffDimensionFinite
  lyapunovDimensionUpperBoundClosed : F.lyapunovDimensionUpperBound
  fractalDimensionFiniteClosed : F.fractalDimensionFinite

def FiniteDimensionalAttractorClosed {S : DynamicalSystemState}
    {A : AttractorExistencePackage S} {E : ExponentialTrackingPackage S}
    (F : FiniteDimensionalAttractorPackage A E) : Prop :=
  F.hausdorffDimensionFinite ∧ F.lyapunovDimensionUpperBound ∧ F.fractalDimensionFinite

theorem finite_dimensional_attractor_closed_from_evidence
    {S : DynamicalSystemState} {A : AttractorExistencePackage S} {E : ExponentialTrackingPackage S}
    (F : FiniteDimensionalAttractorPackage A E) (Ev : FiniteDimensionalAttractorEvidence F) :
    FiniteDimensionalAttractorClosed F := by
  exact And.intro Ev.hausdorffDimensionFiniteClosed
    (And.intro Ev.lyapunovDimensionUpperBoundClosed Ev.fractalDimensionFiniteClosed)

end LongTimeBehaviorSolutionsDynamicalTheoremCanonicalLaneLean
end HautevilleHouse