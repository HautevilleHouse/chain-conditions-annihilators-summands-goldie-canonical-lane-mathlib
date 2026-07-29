import ChainConditionsAnnihilatorsSummandsGoldieCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace ChainConditionsAnnihilatorsSummandsGoldie

def ConstrainedGoldieClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_goldie_endgame (A : AdmissibleClass) :
    ConstrainedGoldieClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ChainConditionsAnnihilatorsSummandsGoldie
end HautevilleHouse