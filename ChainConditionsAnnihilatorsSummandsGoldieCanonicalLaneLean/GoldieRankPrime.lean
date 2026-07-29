import ChainConditionsAnnihilatorsSummandsGoldieCanonicalLaneLean.AnnihilatorConditions

namespace HautevilleHouse
namespace ChainConditionsAnnihilatorsSummandsGoldie

structure GoldieRankPrimePackage {P : AnnihilatorConditionPackage}
    (A : AnnihilatorConditionEvidence P) where
  uniformDimension : ℕ
  goldieRankEqualsUniformDimension : Prop
  primeIdealAssociated : Prop
  reducedRingCondition : Prop
  partialGoldieTheorem : Prop

structure GoldieRankPrimeEvidence {P : AnnihilatorConditionPackage}
    {A : AnnihilatorConditionEvidence P} (G : GoldieRankPrimePackage A) where
  goldieRankEqualsUniformDimensionClosed : G.goldieRankEqualsUniformDimension
  primeIdealAssociatedClosed : G.primeIdealAssociated
  reducedRingConditionClosed : G.reducedRingCondition
  partialGoldieTheoremClosed : G.partialGoldieTheorem

def GoldieRankPrimeClosed {P : AnnihilatorConditionPackage}
    {A : AnnihilatorConditionEvidence P} (G : GoldieRankPrimePackage A) : Prop :=
  G.goldieRankEqualsUniformDimension ∧ G.primeIdealAssociated ∧
  G.reducedRingCondition ∧ G.partialGoldieTheorem

theorem goldie_rank_prime_closed_from_evidence
    {P : AnnihilatorConditionPackage}
    {A : AnnihilatorConditionEvidence P} (G : GoldieRankPrimePackage A)
    (E : GoldieRankPrimeEvidence G) : GoldieRankPrimeClosed G := by
  exact And.intro E.goldieRankEqualsUniformDimensionClosed
    (And.intro E.primeIdealAssociatedClosed
      (And.intro E.reducedRingConditionClosed
        E.partialGoldieTheoremClosed))

end ChainConditionsAnnihilatorsSummandsGoldie
end HautevilleHouse