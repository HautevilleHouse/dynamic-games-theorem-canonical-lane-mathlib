import DynamicGamesTheoremCanonicalLaneLean.MinimaxTheoremGate

namespace HautevilleHouse
namespace DynamicGamesTheoremCanonicalLaneLean

structure BargainingSolutionPackage where
  nashBargainingSolution : Prop
  kalaiSmorodinskySolution : Prop
  uniquenessResult : Prop

structure BargainingSolutionEvidence (B : BargainingSolutionPackage) where
  nashBargainingSolutionClosed : B.nashBargainingSolution
  kalaiSmorodinskySolutionClosed : B.kalaiSmorodinskySolution
  uniquenessResultClosed : B.uniquenessResult

def bargainingSolutionClosed (B : BargainingSolutionPackage) : Prop :=
  B.nashBargainingSolution ∧ B.kalaiSmorodinskySolution ∧ B.uniquenessResult

theorem bargaining_solution_closed_from_evidence (B : BargainingSolutionPackage) (E : BargainingSolutionEvidence B) :
    bargainingSolutionClosed B := by
  exact And.intro E.nashBargainingSolutionClosed (And.intro E.kalaiSmorodinskySolutionClosed E.uniquenessResultClosed)

end HautevilleHouse
end DynamicGamesTheoremCanonicalLaneLean