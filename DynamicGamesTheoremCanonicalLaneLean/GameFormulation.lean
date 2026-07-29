import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicGamesTheoremCanonicalLaneLean

structure Player where
  identifier : String
  strategySet : Type u
  payoffFunction : (Player → strategySet) → ℝ

structure GameFormulation where
  players : List Player
  simultaneousPlay : Prop
  completeInformation : Prop
  rationalityAssumption : Prop

structure GameFormulationEvidence (G : GameFormulation) where
  simultaneousPlayClosed : G.simultaneousPlay
  completeInformationClosed : G.completeInformation
  rationalityAssumptionClosed : G.rationalityAssumption

def GameFormulationClosed (G : GameFormulation) : Prop :=
  G.simultaneousPlay ∧ G.completeInformation ∧ G.rationalityAssumption

theorem game_formulation_closed_from_evidence
    (G : GameFormulation) (E : GameFormulationEvidence G) :
    GameFormulationClosed G := by
  exact And.intro E.simultaneousPlayClosed
    (And.intro E.completeInformationClosed E.rationalityAssumptionClosed)

end DynamicGamesTheoremCanonicalLaneLean
end HautevilleHouse
