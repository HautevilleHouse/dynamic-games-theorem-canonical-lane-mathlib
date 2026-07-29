import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicGamesTheoremCanonicalLaneLean

structure EvolutionaryDynamicsPackage where
  replicatorDynamics : Prop
  evolutionaryStableStrategy : Prop
  convergence : Prop
  nashStationarity : Prop

structure EvolutionaryDynamicsEvidence (E : EvolutionaryDynamicsPackage) where
  replicatorDynamicsClosed : E.replicatorDynamics
  evolutionaryStableStrategyClosed : E.evolutionaryStableStrategy
  convergenceClosed : E.convergence
  nashStationarityClosed : E.nashStationarity

def EvolutionaryDynamicsClosed (E : EvolutionaryDynamicsPackage) : Prop :=
  E.replicatorDynamics ∧ E.evolutionaryStableStrategy ∧ E.convergence ∧ E.nashStationarity

theorem evolutionary_dynamics_closed_from_evidence (E : EvolutionaryDynamicsPackage)
    (Ev : EvolutionaryDynamicsEvidence E) : EvolutionaryDynamicsClosed E := by
  exact And.intro Ev.replicatorDynamicsClosed
    (And.intro Ev.evolutionaryStableStrategyClosed
      (And.intro Ev.convergenceClosed Ev.nashStationarityClosed))

end DynamicGamesTheoremCanonicalLaneLean
end HautevilleHouse