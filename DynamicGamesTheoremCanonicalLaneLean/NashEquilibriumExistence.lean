import canonicalLaneMathlib.AdmissibleClass
import DynamicGamesTheoremCanonicalLaneLean.GameObjects

namespace HautevilleHouse
namespace DynamicGamesTheoremCanonicalLaneLean

structure NashExistencePackage (G : GameSpace) where
  fixedPointArgument : Prop
  bestResponseContinuity : Prop
  convexStrategySpaces : Prop
  equilibriumCandidate : Prop

structure NashExistenceEvidence {G : GameSpace} (N : NashExistencePackage G) where
  fixedPointArgumentClosed : N.fixedPointArgument
  bestResponseContinuityClosed : N.bestResponseContinuity
  convexStrategySpacesClosed : N.convexStrategySpaces
  equilibriumCandidateClosed : N.equilibriumCandidate

def NashExistenceClosed {G : GameSpace} (N : NashExistencePackage G) : Prop :=
  N.fixedPointArgument ∧ N.bestResponseContinuity ∧
  N.convexStrategySpaces ∧ N.equilibriumCandidate

theorem nash_existence_closed_from_evidence
    {G : GameSpace} (N : NashExistencePackage G) (E : NashExistenceEvidence N) :
    NashExistenceClosed N := by
  exact And.intro E.fixedPointArgumentClosed
    (And.intro E.bestResponseContinuityClosed
      (And.intro E.convexStrategySpacesClosed E.equilibriumCandidateClosed))

end DynamicGamesTheoremCanonicalLaneLean
end HautevilleHouse
