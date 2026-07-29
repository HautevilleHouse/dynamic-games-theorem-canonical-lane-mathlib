import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicGamesTheoremCanonicalLaneLean

structure NashEquilibriumPackage where
  players : Nat
  strategySets : List Type
  payoffFunctions : List (List Type → ℝ)
  nashEquilibriumExists : Prop

structure NashEquilibriumEvidence (N : NashEquilibriumPackage) where
  nashEquilibriumExistsClosed : N.nashEquilibriumExists

def NashEquilibriumClosed (N : NashEquilibriumPackage) : Prop :=
  N.nashEquilibriumExists

theorem nash_equilibrium_closed_from_evidence (N : NashEquilibriumPackage)
    (E : NashEquilibriumEvidence N) : NashEquilibriumClosed N :=
  E.nashEquilibriumExistsClosed

end DynamicGamesTheoremCanonicalLaneLean
end HautevilleHouse