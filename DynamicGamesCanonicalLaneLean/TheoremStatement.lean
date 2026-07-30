import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicGamesCanonicalLaneLean

structure GameAdmittedObject where
  gameState : Type
  nashEquilibrium : Prop
  minimaxTheorem : Prop
  bargainingSolution : Prop
  mechanismDesign : Prop
  conclusion : nashEquilibrium ∧ minimaxTheorem ∧ bargainingSolution ∧ mechanismDesign

def GameWitnessClosed (O : GameAdmittedObject) : Prop :=
  O.nashEquilibrium ∧ O.minimaxTheorem ∧ O.bargainingSolution ∧ O.mechanismDesign

end DynamicGamesCanonicalLaneLean
end HautevilleHouse
