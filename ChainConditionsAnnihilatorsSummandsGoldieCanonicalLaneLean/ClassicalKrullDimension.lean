import ChainConditionsAnnihilatorsSummandsGoldieCanonicalLaneLean.ChainAnnihilatorObjects

namespace HautevilleHouse
namespace ChainConditionsAnnihilatorsSummandsGoldieCanonicalLaneLean

structure ClassicalKrullDimensionPackage (A : AdmittedObject) where
  primeSpectrumFinite : Prop
  krullDimensionFinite : Prop
  chainConditionEquivalence : Prop
  goldieRankBound : Prop

structure ClassicalKrullDimensionEvidence (A : AdmittedObject) (C : ClassicalKrullDimensionPackage A) where
  primeSpectrumFiniteClosed : C.primeSpectrumFinite
  krullDimensionFiniteClosed : C.krullDimensionFinite
  chainConditionEquivalenceClosed : C.chainConditionEquivalence
  goldieRankBoundClosed : C.goldieRankBound

def ClassicalKrullDimensionClosed (A : AdmittedObject) (C : ClassicalKrullDimensionPackage A) : Prop :=
  C.primeSpectrumFinite ∧ C.krullDimensionFinite ∧ C.chainConditionEquivalence ∧ C.goldieRankBound

theorem classical_krull_dimension_closed_from_evidence (A : AdmittedObject) (C : ClassicalKrullDimensionPackage A) (E : ClassicalKrullDimensionEvidence A C) : ClassicalKrullDimensionClosed A C := by
  exact And.intro E.primeSpectrumFiniteClosed (And.intro E.krullDimensionFiniteClosed (And.intro E.chainConditionEquivalenceClosed E.goldieRankBoundClosed))

end ChainConditionsAnnihilatorsSummandsGoldieCanonicalLaneLean
end HautevilleHouse