import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChainConditionsAnnihilatorsSummandsGoldieCanonicalLaneLean

structure AnnihilatorConditionPackage where
  ring : Type u
  ringOps : Ring ring
  leftAnnihilatorAscending : Prop
  rightAnnihilatorAscending : Prop
  leftAnnihilatorFinite : Prop
  rightAnnihilatorFinite : Prop

structure AnnihilatorConditionEvidence (A : AnnihilatorConditionPackage) where
  leftAnnihilatorAscendingClosed : A.leftAnnihilatorAscending
  rightAnnihilatorAscendingClosed : A.rightAnnihilatorAscending
  leftAnnihilatorFiniteClosed : A.leftAnnihilatorFinite
  rightAnnihilatorFiniteClosed : A.rightAnnihilatorFinite

def AnnihilatorConditionsClosed (A : AnnihilatorConditionPackage) : Prop :=
  A.leftAnnihilatorAscending ∧ A.rightAnnihilatorAscending ∧
  A.leftAnnihilatorFinite ∧ A.rightAnnihilatorFinite

theorem annihilator_conditions_closed_from_evidence (A : AnnihilatorConditionPackage)
    (E : AnnihilatorConditionEvidence A) : AnnihilatorConditionsClosed A := by
  exact And.intro E.leftAnnihilatorAscendingClosed (And.intro E.rightAnnihilatorAscendingClosed
    (And.intro E.leftAnnihilatorFiniteClosed E.rightAnnihilatorFiniteClosed))

end ChainConditionsAnnihilatorsSummandsGoldieCanonicalLaneLean
end HautevilleHouse