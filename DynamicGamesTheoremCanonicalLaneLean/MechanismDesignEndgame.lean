import DynamicGamesTheoremCanonicalLaneLean.BargainingSolutionEndpoint

namespace HautevilleHouse
namespace DynamicGamesTheoremCanonicalLaneLean

def ConstrainedDynamicGamesClosure (A : DynamicGamesAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_dynamic_games_endgame (A : DynamicGamesAdmissibleClass) :
    ConstrainedDynamicGamesClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end HautevilleHouse
end DynamicGamesTheoremCanonicalLaneLean