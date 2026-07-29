import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChainConditionsAnnihilatorsSummandsGoldie

structure GoldieAdmittedObject where
  ring : Type u
  ringOps : Ring ring
  goldieRank : ℕ
  artinianQuotient : Prop
  conclusion : artinianQuotient

structure AdmissibleClass where
  object : GoldieAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  GoldieWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def GoldieWitnessClosed (O : GoldieAdmittedObject) : Prop :=
  O.artinianQuotient

end ChainConditionsAnnihilatorsSummandsGoldie
end HautevilleHouse