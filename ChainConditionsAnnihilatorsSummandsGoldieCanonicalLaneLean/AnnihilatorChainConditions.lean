import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChainConditionsAnnihilatorsSummandsGoldieCanonicalLaneLean

structure AnnihilatorChainConditionPackage where
  ring : Type u
  idealChain : Nat → Set ring
  accAnnihilators : Prop
  dccAnnihilators : Prop
  chainConditionsEvidence : accAnnihilators ∧ dccAnnihilators

structure AnnihilatorChainConditionEvidence (A : AnnihilatorChainConditionPackage) where
  accAnnihilatorsClosed : A.accAnnihilators
  dccAnnihilatorsClosed : A.dccAnnihilators

def AnnihilatorChainConditionClosed (A : AnnihilatorChainConditionPackage) : Prop :=
  A.accAnnihilators ∧ A.dccAnnihilators

theorem annihilator_chain_condition_closed_from_evidence
    (A : AnnihilatorChainConditionPackage) (E : AnnihilatorChainConditionEvidence A) :
    AnnihilatorChainConditionClosed A := by
  exact And.intro E.accAnnihilatorsClosed E.dccAnnihilatorsClosed

end ChainConditionsAnnihilatorsSummandsGoldieCanonicalLaneLean
end HautevilleHouse