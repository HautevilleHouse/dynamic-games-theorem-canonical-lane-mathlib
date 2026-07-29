import canonicalLaneMathlib.AdmissibleClass
import DynamicGamesTheoremCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace DynamicGamesTheoremCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end DynamicGamesTheoremCanonicalLaneLean
end HautevilleHouse