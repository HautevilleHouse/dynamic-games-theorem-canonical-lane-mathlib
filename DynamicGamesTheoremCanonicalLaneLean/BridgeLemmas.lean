import canonicalLaneMathlib.AdmissibleClass
import DynamicGamesTheoremCanonicalLaneLean.DynamicGameComponents

namespace HautevilleHouse
namespace DynamicGamesTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  GameWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DynamicGamesTheoremCanonicalLaneLean
end HautevilleHouse