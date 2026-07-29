import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChainConditionsAnnihilatorsSummandsGoldieCanonicalLaneLean

structure DirectSummandPackage where
  ring : Type u
  ringOps : Ring ring
  module : Type v
  moduleOps : AddCommGroup module
  moduleStructure : Module ring module
  summandComplements : Prop
  summandProjection : Prop
  summandDirectDecomposition : Prop

structure DirectSummandEvidence (D : DirectSummandPackage) where
  summandComplementsClosed : D.summandComplements
  summandProjectionClosed : D.summandProjection
  summandDirectDecompositionClosed : D.summandDirectDecomposition

def DirectSummandsClosed (D : DirectSummandPackage) : Prop :=
  D.summandComplements ∧ D.summandProjection ∧ D.summandDirectDecomposition

theorem direct_summands_closed_from_evidence (D : DirectSummandPackage)
    (E : DirectSummandEvidence D) : DirectSummandsClosed D := by
  exact And.intro E.summandComplementsClosed (And.intro E.summandProjectionClosed
    E.summandDirectDecompositionClosed)

end ChainConditionsAnnihilatorsSummandsGoldieCanonicalLaneLean
end HautevilleHouse