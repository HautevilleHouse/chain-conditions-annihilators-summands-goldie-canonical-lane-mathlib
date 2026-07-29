import ChainConditionsAnnihilatorsSummandsGoldieCanonicalLaneLean.ChainAnnihilatorObjects

namespace HautevilleHouse
namespace ChainConditionsAnnihilatorsSummandsGoldieCanonicalLaneLean

structure SummandDecompositionPackage (A : AdmittedObject) where
  internalDirectSum : Prop
  indecomposableSummands : Prop
  krullSchmidtTheorem : Prop
  goldieRankAdditivity : Prop

structure SummandDecompositionEvidence (A : AdmittedObject) (S : SummandDecompositionPackage A) where
  internalDirectSumClosed : S.internalDirectSum
  indecomposableSummandsClosed : S.indecomposableSummands
  krullSchmidtTheoremClosed : S.krullSchmidtTheorem
  goldieRankAdditivityClosed : S.goldieRankAdditivity

def SummandDecompositionClosed (A : AdmittedObject) (S : SummandDecompositionPackage A) : Prop :=
  S.internalDirectSum ∧ S.indecomposableSummands ∧ S.krullSchmidtTheorem ∧ S.goldieRankAdditivity

theorem summand_decomposition_closed_from_evidence (A : AdmittedObject) (S : SummandDecompositionPackage A) (E : SummandDecompositionEvidence A S) : SummandDecompositionClosed A S := by
  exact And.intro E.internalDirectSumClosed (And.intro E.indecomposableSummandsClosed (And.intro E.krullSchmidtTheoremClosed E.goldieRankAdditivityClosed))

end ChainConditionsAnnihilatorsSummandsGoldieCanonicalLaneLean
end HautevilleHouse