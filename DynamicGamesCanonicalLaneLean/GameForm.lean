import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicGamesCanonicalLaneLean

structure NormalFormGame (Player : Type) (Action : Type) where
  players : Finset Player
  actionSets : Player → Finset Action
  payoff : (Player → Action) → Player → ℝ

extensiveFormStructure

structure ExtensiveFormGame (Player : Type) (Node : Type) where
  root : Node
  parent : Node → Option Node
  moves : Node → Finset Node
  player : Node → Option Player
  payoff : (Node → Player → ℝ) 

inductive GameForm (P : Type) (A : Type) where
  | normal (game : NormalFormGame P A)
  | extensive (game : ExtensiveFormGame P A)

def GameFormClosed (G : GameForm Player Action) : Prop :=
  match G with
  | GameForm.normal g => True
  | GameForm.extensive g => True

theorem game_form_closed_trivial (G : GameForm Player Action) : GameFormClosed G :=
  by
    cases G <;> trivial

end DynamicGamesCanonicalLaneLean
end HautevilleHouse