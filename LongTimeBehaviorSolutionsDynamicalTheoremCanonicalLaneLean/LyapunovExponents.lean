import canonicalLaneMathlib.DynamicalSystems

namespace HautevilleHouse
namespace LongTimeBehaviorSolutionsDynamicalTheoremCanonicalLaneLean

structure LyapunovExponentPackage where
  trajectory : Type u
  exponent : ℝ
  basisSet : Set (Trajectory → ℝ)
  growthRates : ℝ → Prop
  spectralGap : Prop

def LyapunovExponentClosed (L : LyapunovExponentPackage) : Prop :=
  L.spectralGap

end LongTimeBehaviorSolutionsDynamicalTheoremCanonicalLaneLean
end HautevilleHouse