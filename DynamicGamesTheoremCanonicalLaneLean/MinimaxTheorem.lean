import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicGamesTheoremCanonicalLaneLean

structure MinimaxTheoremPackage where
  zeroSumGame : Type u
  mixedStrategies : Type v
  valueOfGame : ℝ
  minimaxEquality : Prop

structure MinimaxTheoremEvidence (M : MinimaxTheoremPackage) where
  minimaxEqualityClosed : M.minimaxEquality

def MinimaxTheoremClosed (M : MinimaxTheoremPackage) : Prop :=
  M.minimaxEquality

theorem minimax_theorem_closed_from_evidence (M : MinimaxTheoremPackage)
    (E : MinimaxTheoremEvidence M) : MinimaxTheoremClosed M :=
  E.minimaxEqualityClosed

end DynamicGamesTheoremCanonicalLaneLean
end HautevilleHouse