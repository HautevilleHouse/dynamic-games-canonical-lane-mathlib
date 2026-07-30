import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicGamesCanonicalLaneLean

structure ExtensiveFormGamePackage where
  players : Type u
  nodes : Type v
  actions : Type w
  payoffFunctions : nodes -> Prop
  subgamePerfectEquilibrium : Prop
  backwardInductionSolution : Prop

structure ExtensiveFormGameEvidence (E : ExtensiveFormGamePackage) where
  subgamePerfectEquilibriumClosed : E.subgamePerfectEquilibrium
  backwardInductionSolutionClosed : E.backwardInductionSolution

def ExtensiveFormGameClosed (E : ExtensiveFormGamePackage) : Prop :=
  E.subgamePerfectEquilibrium ∧ E.backwardInductionSolution

theorem extensive_form_game_closed_from_evidence
    (E : ExtensiveFormGamePackage) (Ev : ExtensiveFormGameEvidence E) :
    ExtensiveFormGameClosed E := by
  exact And.intro Ev.subgamePerfectEquilibriumClosed Ev.backwardInductionSolutionClosed

end DynamicGamesCanonicalLaneLean
end HautevilleHouse