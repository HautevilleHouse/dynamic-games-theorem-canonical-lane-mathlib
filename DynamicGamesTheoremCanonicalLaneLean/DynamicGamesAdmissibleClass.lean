import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicGamesTheoremCanonicalLaneLean

structure DynamicGameAdmittedObject where
  players : Nat
  strategySets : List (Set (Type u))
  payoffFunctions : Prop
  equilibriumConcept : Prop

structure DynamicGamesAdmissibleClass where
  object : DynamicGameAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def dynamicGamesAdmittedClosure (A : DynamicGamesAdmissibleClass) : Prop :=
  DynamicGameWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end HautevilleHouse
end DynamicGamesTheoremCanonicalLaneLean