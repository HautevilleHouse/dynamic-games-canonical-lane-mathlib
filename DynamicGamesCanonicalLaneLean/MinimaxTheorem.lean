import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicGamesCanonicalLaneLean

structure ZeroSumGame (G : Game Player) where
  twoPlayers : Finset Player
  payoffSumsZero : ∀ (s1 : StrategyProfile Player), ∀ (s2 : StrategyProfile Player), payoffs payoffTotal s1 + payoffs payoffTotal s2 = 0
  totalPayoffDefined : Prop
  valueExist : Prop

defining

structure MinimaxTheorem (Z : ZeroSumGame) where
  value : ℝ
  minmaxEqMaxmin : Prop
  optimalMixedStrategies : Prop
  valueAttained : Prop
  saddlePointExists : Prop

defining

end DynamicGamesCanonicalLaneLean
end HautevilleHouse