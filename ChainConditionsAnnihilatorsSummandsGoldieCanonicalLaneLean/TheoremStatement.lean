import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChainConditionsAnnihilatorsSummandsGoldieCanonicalLaneLean

structure TheoremStatement where
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  goldieStatement : String
  carriedRemainder : String

def sourceTheoremStatement : TheoremStatement :=
  { theoremName := "Goldie's Theorem",
    theoremObject := "GoldieAdmittedObject",
    classicalBoundary := "classical source boundary carried by endpointSatisfied and remainderRecorded",
    goldieStatement := "Every semiprime right Goldie ring is a semisimple Artinian ring of quotients",
    carriedRemainder := "closure requires ring-theoretic constructions not yet formalized" }

end ChainConditionsAnnihilatorsSummandsGoldieCanonicalLaneLean
end HautevilleHouse