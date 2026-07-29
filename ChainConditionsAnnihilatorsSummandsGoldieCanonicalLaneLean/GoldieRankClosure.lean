import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ChainConditionsAnnihilatorsSummandsGoldieCanonicalLaneLean.AnnihilatorChainConditions
import HautevilleHouse.ChainConditionsAnnihilatorsSummandsGoldieCanonicalLaneLean.GoldieTheoremPackage

namespace HautevilleHouse
namespace ChainConditionsAnnihilatorsSummandsGoldieCanonicalLaneLean

def ConstrainedGoldieClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_goldie_endgame (A : AdmissibleClass) :
    ConstrainedGoldieClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ChainConditionsAnnihilatorsSummandsGoldieCanonicalLaneLean
end HautevilleHouse