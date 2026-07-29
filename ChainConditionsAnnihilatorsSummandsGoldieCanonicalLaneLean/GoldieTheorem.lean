import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChainConditionsAnnihilatorsSummandsGoldieCanonicalLaneLean

structure GoldieTheoremPackage where
  ring : Type u
  ringOps : Ring ring
  semisimpleClassical : Prop
  artinian : Prop
  noetherian : Prop
  goldieRank : Prop
  uniformDimension : Prop

structure GoldieTheoremEvidence (G : GoldieTheoremPackage) where
  semisimpleClassicalClosed : G.semisimpleClassical
  artinianClosed : G.artinian
  noetherianClosed : G.noetherian
  goldieRankClosed : G.goldieRank
  uniformDimensionClosed : G.uniformDimension

def GoldieTheoremClosed (G : GoldieTheoremPackage) : Prop :=
  G.semisimpleClassical ∧ G.artinian ∧ G.noetherian ∧ G.goldieRank ∧ G.uniformDimension

theorem goldie_theorem_closed_from_evidence (G : GoldieTheoremPackage)
    (E : GoldieTheoremEvidence G) : GoldieTheoremClosed G := by
  exact And.intro E.semisimpleClassicalClosed (And.intro E.artinianClosed
    (And.intro E.noetherianClosed (And.intro E.goldieRankClosed E.uniformDimensionClosed)))

end ChainConditionsAnnihilatorsSummandsGoldieCanonicalLaneLean
end HautevilleHouse