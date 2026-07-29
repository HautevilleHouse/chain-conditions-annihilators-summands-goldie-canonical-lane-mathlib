import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChainConditionsAnnihilatorsSummandsGoldieCanonicalLaneLean

structure ChainConditionPackage where
  ring : Type u
  ringOps : Ring ring
  leftNoetherian : Prop
  rightNoetherian : Prop
  accLeftIdeals : Prop
  accRightIdeals : Prop

structure ChainConditionEvidence (C : ChainConditionPackage) where
  leftNoetherianClosed : C.leftNoetherian
  rightNoetherianClosed : C.rightNoetherian
  accLeftIdealsClosed : C.accLeftIdeals
  accRightIdealsClosed : C.accRightIdeals

def ChainConditionsClosed (C : ChainConditionPackage) : Prop :=
  C.leftNoetherian ∧ C.rightNoetherian ∧ C.accLeftIdeals ∧ C.accRightIdeals

theorem chain_conditions_closed_from_evidence (C : ChainConditionPackage)
    (E : ChainConditionEvidence C) : ChainConditionsClosed C := by
  exact And.intro E.leftNoetherianClosed (And.intro E.rightNoetherianClosed
    (And.intro E.accLeftIdealsClosed E.accRightIdealsClosed))

end ChainConditionsAnnihilatorsSummandsGoldieCanonicalLaneLean
end HautevilleHouse