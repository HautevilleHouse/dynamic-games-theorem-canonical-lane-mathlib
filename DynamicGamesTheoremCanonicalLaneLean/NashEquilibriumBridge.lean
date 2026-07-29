import DynamicGamesTheoremCanonicalLaneLean.DynamicGamesAdmissibleClass

namespace HautevilleHouse
namespace DynamicGamesTheoremCanonicalLaneLean

structure NashEquilibriumPackage where
  existsBestResponse : Prop
  fixedPointCharacterization : Prop
  mixedStrategyExtension : Prop

def bridgeClosed (A : DynamicGamesAdmissibleClass) : Prop :=
  DynamicGameWitnessClosed A.object

theorem bridge_from_admissible_class (A : DynamicGamesAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.equilibriumConcept

end HautevilleHouse
end DynamicGamesTheoremCanonicalLaneLean