import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicGamesTheoremCanonicalLaneLean

structure MechanismDesignPackage where
  agents : Nat
  types : List Type
  outcomes : List Type
  incentiveCompatibility : Prop
  efficiency : Prop

structure MechanismDesignEvidence (M : MechanismDesignPackage) where
  incentiveCompatibilityClosed : M.incentiveCompatibility
  efficiencyClosed : M.efficiency

def MechanismDesignClosed (M : MechanismDesignPackage) : Prop :=
  M.incentiveCompatibility ∧ M.efficiency

theorem mechanism_design_closed_from_evidence (M : MechanismDesignPackage)
    (E : MechanismDesignEvidence M) : MechanismDesignClosed M :=
  And.intro E.incentiveCompatibilityClosed E.efficiencyClosed

end DynamicGamesTheoremCanonicalLaneLean
end HautevilleHouse