import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicGamesTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure DynamicGameClosure (A : AdmissibleClass) (G : GameSpace) where
  nashClosed : NashExistenceClosed (default)
  minimaxClosed : MinimaxClosed (default)
  bargainingClosed : BargainingClosed (default)
  mechanismDesignClosed : MechanismDesignClosed (default)

def ConstrainedDynamicGamesClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

end DynamicGamesTheoremCanonicalLaneLean
end HautevilleHouse
