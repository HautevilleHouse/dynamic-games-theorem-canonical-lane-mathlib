import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicGamesTheoremCanonicalLaneLean

structure BargainingSolutionPackage where
  bargainers : Nat
  disagreementPoint : ℝ²
  nashBargainingSolution : Prop
  kalaiSmorodinskySolution : Prop

structure BargainingSolutionEvidence (B : BargainingSolutionPackage) where
  nashBargainingSolutionClosed : B.nashBargainingSolution
  kalaiSmorodinskySolutionClosed : B.kalaiSmorodinskySolution

def BargainingSolutionClosed (B : BargainingSolutionPackage) : Prop :=
  B.nashBargainingSolution ∧ B.kalaiSmorodinskySolution

theorem bargaining_solution_closed_from_evidence (B : BargainingSolutionPackage)
    (E : BargainingSolutionEvidence B) : BargainingSolutionClosed B :=
  And.intro E.nashBargainingSolutionClosed E.kalaiSmorodinskySolutionClosed

end DynamicGamesTheoremCanonicalLaneLean
end HautevilleHouse