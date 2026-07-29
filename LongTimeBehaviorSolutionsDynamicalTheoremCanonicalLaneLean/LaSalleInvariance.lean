import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LongTimeBehaviorSolutionsDynamicalTheoremCanonicalLaneLean

structure LaSalleInvariancePackage where
  lyapunovFunction : Type u
  levelSet : Type v
  invarianceProperty : Prop
  asymptoticBehavior : Prop
  laSallePrincipleApplied : Prop
  invariancePropertyClosed : invarianceProperty
  asymptoticBehaviorClosed : asymptoticBehavior
  laSallePrincipleAppliedClosed : laSallePrincipleApplied

structure LaSalleInvarianceEvidence (L : LaSalleInvariancePackage) where
  invariancePropertyClosed : L.invarianceProperty
  asymptoticBehaviorClosed : L.asymptoticBehavior
  laSallePrincipleAppliedClosed : L.laSallePrincipleApplied

def LaSalleInvarianceClosed (L : LaSalleInvariancePackage) : Prop :=
  L.invarianceProperty ∧ L.asymptoticBehavior ∧ L.laSallePrincipleApplied

theorem la_salle_invariance_closed_from_evidence
    (L : LaSalleInvariancePackage) (E : LaSalleInvarianceEvidence L) :
    LaSalleInvarianceClosed L := by
  exact And.intro E.invariancePropertyClosed (And.intro E.asymptoticBehaviorClosed E.laSallePrincipleAppliedClosed)

end LongTimeBehaviorSolutionsDynamicalTheoremCanonicalLaneLean
end HautevilleHouse
