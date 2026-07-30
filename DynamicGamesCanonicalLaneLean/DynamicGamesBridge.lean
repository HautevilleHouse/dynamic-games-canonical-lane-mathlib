import canonicalLaneMathlib.AdmissibleClass
import DynamicGamesCanonicalLaneLean.NashEquilibrium
import DynamicGamesCanonicalLaneLean.MinimaxTheorem
import DynamicGamesCanonicalLaneLean.BargainingSolution
import DynamicGamesCanonicalLaneLean.MechanismDesign

namespace HautevilleHouse
namespace DynamicGamesCanonicalLaneLean

structure DynamicGamesAdmissibleClass where
  nashEquilibriumCond : Prop
  minimaxCond : Prop
  bargainingCond : Prop
  mechanismDesignCond : Prop
  allConditions : nashEquilibriumCond ∧ minimaxCond ∧ bargainingCond ∧ mechanismDesignCond

def bridgeClosed (A : DynamicGamesAdmissibleClass) : Prop :=
  A.allConditions

theorem bridge_from_admissible_class (A : DynamicGamesAdmissibleClass) : bridgeClosed A :=
  A.allConditions

def gateClosed (A : DynamicGamesAdmissibleClass) : Prop :=
  A.nashEquilibriumCond ∨ A.minimaxCond ∨ A.bargainingCond ∨ A.mechanismDesignCond

theorem gate_from_admissible_class (A : DynamicGamesAdmissibleClass) : gateClosed A :=
  Or.inl A.nashEquilibriumCond

def ConstrainedDynamicGamesClosure (A : DynamicGamesAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_dynamic_games_endgame (A : DynamicGamesAdmissibleClass) :
    ConstrainedDynamicGamesClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DynamicGamesCanonicalLaneLean
end HautevilleHouse
