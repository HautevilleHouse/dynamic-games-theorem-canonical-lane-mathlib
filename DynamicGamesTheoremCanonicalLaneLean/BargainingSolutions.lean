import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicGamesTheoremCanonicalLaneLean

structure BargainingSolutionsPackage where
  nashBargainingSolution : Prop
  kalaiSmorodinskySolution : Prop
  egalitarianSolution : Prop
  rubinsteinAlternatingOffers : Prop
  bargainingSet : Prop

structure BargainingSolutionsEvidence (B : BargainingSolutionsPackage) where
  nashBargainingSolutionClosed : B.nashBargainingSolution
  kalaiSmorodinskySolutionClosed : B.kalaiSmorodinskySolution
  egalitarianSolutionClosed : B.egalitarianSolution
  rubinsteinAlternatingOffersClosed : B.rubinsteinAlternatingOffers
  bargainingSetClosed : B.bargainingSet

def BargainingSolutionsClosed (B : BargainingSolutionsPackage) : Prop :=
  B.nashBargainingSolution ∧ B.kalaiSmorodinskySolution ∧
  B.egalitarianSolution ∧ B.rubinsteinAlternatingOffers ∧ B.bargainingSet

theorem bargaining_solutions_closed_from_evidence (B : BargainingSolutionsPackage)
    (Ev : BargainingSolutionsEvidence B) : BargainingSolutionsClosed B := by
  exact And.intro Ev.nashBargainingSolutionClosed
    (And.intro Ev.kalaiSmorodinskySolutionClosed
      (And.intro Ev.egalitarianSolutionClosed
        (And.intro Ev.rubinsteinAlternatingOffersClosed Ev.bargainingSetClosed)))

end DynamicGamesTheoremCanonicalLaneLean
end HautevilleHouse