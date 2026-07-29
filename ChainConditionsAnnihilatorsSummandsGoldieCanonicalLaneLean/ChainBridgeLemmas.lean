import ChainConditionsAnnihilatorsSummandsGoldieCanonicalLaneLean.ChainAnnihilatorObjects
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChainConditionsAnnihilatorsSummandsGoldieCanonicalLaneLean

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  -- The bridge is closed when the admissible object's conclusion holds.
  -- In this domain, the conclusion is artinian ∧ noetherian
  have h : PoincareWitnessClosed A.object := A.object.conclusion
  exact h

end ChainConditionsAnnihilatorsSummandsGoldieCanonicalLaneLean
end HautevilleHouse