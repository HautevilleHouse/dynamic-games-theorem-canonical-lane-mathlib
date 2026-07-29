import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicGamesTheoremCanonicalLaneLean

structure EquilibriumStrategiesPackage where
  nashEquilibrium : Prop
  subgamePerfectEquilibrium : Prop
  bayesianNashEquilibrium : Prop
  perfectBayesianEquilibrium : Prop
  sequentialEquilibrium : Prop

structure EquilibriumStrategiesEvidence (E : EquilibriumStrategiesPackage) where
  nashEquilibriumClosed : E.nashEquilibrium
  subgamePerfectEquilibriumClosed : E.subgamePerfectEquilibrium
  bayesianNashEquilibriumClosed : E.bayesianNashEquilibrium
  perfectBayesianEquilibriumClosed : E.perfectBayesianEquilibrium
  sequentialEquilibriumClosed : E.sequentialEquilibrium

def EquilibriumStrategiesClosed (E : EquilibriumStrategiesPackage) : Prop :=
  E.nashEquilibrium ∧ E.subgamePerfectEquilibrium ∧
  E.bayesianNashEquilibrium ∧ E.perfectBayesianEquilibrium ∧
  E.sequentialEquilibrium

theorem equilibrium_strategies_closed_from_evidence (E : EquilibriumStrategiesPackage)
    (Ev : EquilibriumStrategiesEvidence E) : EquilibriumStrategiesClosed E := by
  exact And.intro Ev.nashEquilibriumClosed
    (And.intro Ev.subgamePerfectEquilibriumClosed
      (And.intro Ev.bayesianNashEquilibriumClosed
        (And.intro Ev.perfectBayesianEquilibriumClosed
          Ev.sequentialEquilibriumClosed)))

end DynamicGamesTheoremCanonicalLaneLean
end HautevilleHouse