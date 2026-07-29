import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicGamesTheoremCanonicalLaneLean

structure DynamicGame where
  players : Type u
  strategySets : players -> Type v
  payoffFunctions : ((p : players) -> strategySets p) -> ℝ

structure NashEquilibrium (G : DynamicGame) where
  strategyProfile : (p : G.players) -> G.strategySets p
  noProfitableDeviation : Prop
  bestResponseProperty : Prop

structure GameAdmissibleObject where
  game : DynamicGame
  equilibriumExists : Prop
  equilibriumUnique : Prop
  equilibriumAdmissible : equilibriumExists ∧ equilibriumUnique
  conclusion : Prop

def GameWitnessClosed (O : GameAdmissibleObject) : Prop :=
  O.conclusion

end DynamicGamesTheoremCanonicalLaneLean
end HautevilleHouse