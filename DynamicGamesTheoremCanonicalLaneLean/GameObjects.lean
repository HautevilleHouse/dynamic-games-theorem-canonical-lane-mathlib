import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicGamesTheoremCanonicalLaneLean

structure StrategicPlayer where
  strategySet : Type u
  utilityFunction : Type v

type of payoff

structure GameSpace where
  carrier : Type u
  topology : TopologicalSpace carrier

structure GameAdmittedObject where
  game : GameSpace
  finitePlayers : Prop
  compactStrategySets : Prop
  continuousUtilities : Prop
  nashEquilibriumExists : Prop
  conclusion : nashEquilibriumExists

structure DynamicGameEndgameState where
  object : GameAdmittedObject

def GameWitnessClosed (O : GameAdmittedObject) : Prop :=
  O.nashEquilibriumExists

end DynamicGamesTheoremCanonicalLaneLean
end HautevilleHouse
