import DynamicGamesTheoremCanonicalLaneLean.NashEquilibriumBridge

namespace HautevilleHouse
namespace DynamicGamesTheoremCanonicalLaneLean

structure MinimaxTheoremPackage where
  zeroSumAssumption : Prop
  valueExistence : Prop
  saddlePointProperty : Prop

structure MinimaxTheoremEvidence (M : MinimaxTheoremPackage) where
  valueExistenceClosed : M.valueExistence
  saddlePointPropertyClosed : M.saddlePointProperty

def minimaxTheoremClosed (M : MinimaxTheoremPackage) : Prop :=
  M.valueExistence ∧ M.saddlePointProperty

theorem gateClosed (A : DynamicGamesAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : DynamicGamesAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

theorem minimax_closed_from_evidence (M : MinimaxTheoremPackage) (E : MinimaxTheoremEvidence M) :
    minimaxTheoremClosed M := by
  exact And.intro E.valueExistenceClosed E.saddlePointPropertyClosed

end HautevilleHouse
end DynamicGamesTheoremCanonicalLaneLean