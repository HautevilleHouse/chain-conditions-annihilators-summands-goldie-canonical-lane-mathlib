import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChainConditionsAnnihilatorsSummandsGoldieCanonicalLaneLean

structure ACCPackage where
  module : Type u
  accSubmodules : Prop
  accAnnihilators : Prop
  accDirectSummands : Prop

structure ACCEvidence (P : ACCPackage) where
  accSubmodulesClosed : P.accSubmodules
  accAnnihilatorsClosed : P.accAnnihilators
  accDirectSummandsClosed : P.accDirectSummands

def ACCClosed (P : ACCPackage) : Prop :=
  P.accSubmodules ∧ P.accAnnihilators ∧ P.accDirectSummands

theorem acc_closed_from_evidence (P : ACCPackage) (E : ACCEvidence P) :
    ACCClosed P := by
  exact And.intro E.accSubmodulesClosed
    (And.intro E.accAnnihilatorsClosed E.accDirectSummandsClosed)

end ChainConditionsAnnihilatorsSummandsGoldieCanonicalLaneLean
end HautevilleHouse
