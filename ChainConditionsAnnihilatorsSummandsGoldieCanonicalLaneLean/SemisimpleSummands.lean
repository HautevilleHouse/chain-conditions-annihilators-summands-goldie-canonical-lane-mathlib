import ChainConditionsAnnihilatorsSummandsGoldieCanonicalLaneLean.GoldieRankPrime

namespace HautevilleHouse
namespace ChainConditionsAnnihilatorsSummandsGoldie

structure SemisimpleSummandsPackage {P : AnnihilatorConditionPackage}
    {A : AnnihilatorConditionEvidence P}
    (G : GoldieRankPrimePackage A) where
  artinianSimpleArtinian : Prop
  socleDecomposition : Prop
  goldieTheoremFull : Prop
  simpleArtinianDirectSum : Prop
  goldieRankDecomposition : Prop

structure SemisimpleSummandsEvidence {P : AnnihilatorConditionPackage}
    {A : AnnihilatorConditionEvidence P}
    {G : GoldieRankPrimePackage A} (S : SemisimpleSummandsPackage G) where
  artinianSimpleArtinianClosed : S.artinianSimpleArtinian
  socleDecompositionClosed : S.socleDecomposition
  goldieTheoremFullClosed : S.goldieTheoremFull
  simpleArtinianDirectSumClosed : S.simpleArtinianDirectSum
  goldieRankDecompositionClosed : S.goldieRankDecomposition

def SemisimpleSummandsClosed {P : AnnihilatorConditionPackage}
    {A : AnnihilatorConditionEvidence P}
    {G : GoldieRankPrimePackage A} (S : SemisimpleSummandsPackage G) : Prop :=
  S.artinianSimpleArtinian ∧ S.socleDecomposition ∧
  S.goldieTheoremFull ∧ S.simpleArtinianDirectSum ∧
  S.goldieRankDecomposition

theorem semisimple_summands_closed_from_evidence
    {P : AnnihilatorConditionPackage}
    {A : AnnihilatorConditionEvidence P}
    {G : GoldieRankPrimePackage A} (S : SemisimpleSummandsPackage G)
    (E : SemisimpleSummandsEvidence S) : SemisimpleSummandsClosed S := by
  exact And.intro E.artinianSimpleArtinianClosed
    (And.intro E.socleDecompositionClosed
      (And.intro E.goldieTheoremFullClosed
        (And.intro E.simpleArtinianDirectSumClosed
          E.goldieRankDecompositionClosed)))

end ChainConditionsAnnihilatorsSummandsGoldie
end HautevilleHouse