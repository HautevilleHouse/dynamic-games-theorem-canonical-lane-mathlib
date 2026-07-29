import DynamicGamesTheoremCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace DynamicGamesTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : DynamicGamesAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  DynamicGamesWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DynamicGamesTheoremCanonicalLaneLean
end HautevilleHouse
