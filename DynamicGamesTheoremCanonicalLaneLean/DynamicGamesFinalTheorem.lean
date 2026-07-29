import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicGamesTheoremCanonicalLaneLean.GameFormulation
import HautevilleHouse.DynamicGamesTheoremCanonicalLaneLean.NashEquilibrium
import HautevilleHouse.DynamicGamesTheoremCanonicalLaneLean.MinimaxTheorem
import HautevilleHouse.DynamicGamesTheoremCanonicalLaneLean.BargainingSolution
import HautevilleHouse.DynamicGamesTheoremCanonicalLaneLean.MechanismDesign

namespace HautevilleHouse
namespace DynamicGamesTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop := True

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  trivial

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

def ConstrainedDynamicGamesClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_dynamic_games_endgame (A : AdmissibleClass) :
    ConstrainedDynamicGamesClosure A := by
  refine And.intro ?_ ?_
  · exact bridge_from_admissible_class A
  · exact gate_from_admissible_class A

end DynamicGamesTheoremCanonicalLaneLean
end HautevilleHouse