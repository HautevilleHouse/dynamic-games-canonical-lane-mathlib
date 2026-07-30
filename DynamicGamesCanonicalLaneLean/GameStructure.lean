import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicGamesCanonicalLaneLean

--- Player and strategy primitives

structure Player where
  id : Nat
  name : String

defining

structure StrategyProfile (N : Type) where
  strategies : N → Type
  pure : Type
  mixed : Type

defining

structure PayoffFunction (N : Type) (S : StrategyProfile N) where
  payoff : (n : N) → S.strategies n → ℝ
  continuous : Prop
  bounded : Prop

defining

structure Game (N : Type) where
  players : List N
  profile : StrategyProfile N
  payoffs : PayoffFunction N profile

defining

end DynamicGamesCanonicalLaneLean
end HautevilleHouse