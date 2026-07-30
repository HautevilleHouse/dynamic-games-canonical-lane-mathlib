import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicGamesCanonicalLaneLean

structure BestResponseCondition (G : Game Player) where
  nashEquilibrium : Prop
  rationality : Prop
  mutualConsistency : Prop
  bestResponseExists : Prop
  equilibriumStability : Prop

defining

structure NashEquilibrium (G : Game Player) where
  profile : StrategyProfile Player
  condition : BestResponseCondition G
  conditionHolds : condition.nashEquilibrium
  evidence : condition.bestResponseExists

defining

end DynamicGamesCanonicalLaneLean
end HautevilleHouse