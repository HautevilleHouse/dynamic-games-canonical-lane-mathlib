import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicGamesCanonicalLaneLean

structure AdmissibleClass where
  object : DynamicGamesAdmissibleObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

structure DynamicGamesAdmissibleObject where
  game : StrategicGame
  equilibrium : NashEquilibrium game
  minimaxSatisfied : Prop
  bargainingSolutionExists : Prop
  mechanismDesignPrinciple : Prop

def admittedClosure (A : AdmissibleClass) : Prop :=
  DynamicGamesWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DynamicGamesCanonicalLaneLean
end HautevilleHouse
