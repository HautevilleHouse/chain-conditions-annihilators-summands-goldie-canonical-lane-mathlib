import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChainConditionsAnnihilatorsSummandsGoldieCanonicalLaneLean

structure Module where
  carrier : Type
  addition : carrier -> carrier -> carrier
  zero : carrier
  scalar : Ring -> carrier -> carrier
  ring : Ring

structure Ring where
  carrier : Type
  addition : carrier -> carrier -> carrier
  multiplication : carrier -> carrier -> carrier
  zero : carrier
  one : carrier
  
structure AdmittedObject where
  ring : Ring
  module : Module
  artinian : Prop
  noetherian : Prop
  goldieRank : Nat
  conclusion : artinian ∧ noetherian

end ChainConditionsAnnihilatorsSummandsGoldieCanonicalLaneLean
end HautevilleHouse