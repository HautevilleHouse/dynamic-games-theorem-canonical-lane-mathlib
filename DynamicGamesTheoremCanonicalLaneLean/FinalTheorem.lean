import canonicalLaneMathlib.AdmissibleClass
import DynamicGamesTheoremCanonicalLaneLean.BridgeLemmas
import DynamicGamesTheoremCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace DynamicGamesTheoremCanonicalLaneLean

def ConstrainedDynamicGamesClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_dynamic_games_endgame (A : AdmissibleClass) :
    ConstrainedDynamicGamesClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DynamicGamesTheoremCanonicalLaneLean
end HautevilleHouse