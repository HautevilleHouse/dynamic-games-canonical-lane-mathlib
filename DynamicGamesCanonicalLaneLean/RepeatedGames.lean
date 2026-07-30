import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicGamesCanonicalLaneLean

structure RepeatedGamesPackage where
  stageGame : NashEquilibriumPackage
  discountFactor : ℝ
  triggerStrategy : Prop
  folkTheorem : Prop
  subgamePerfectEquilibrium : Prop
  folkTheoremProof : Prop
  folkTheoremProofTerm : folkTheoremProof

structure RepeatedGamesEvidence (R : RepeatedGamesPackage) where
  folkTheoremClosed : R.folkTheorem
  subgamePerfectEquilibriumClosed : R.subgamePerfectEquilibrium
  folkTheoremProofClosed : R.folkTheoremProof

def RepeatedGamesClosed (R : RepeatedGamesPackage) : Prop :=
  R.folkTheorem ∧ R.subgamePerfectEquilibrium ∧ R.folkTheoremProof

theorem repeated_games_closed_from_evidence (R : RepeatedGamesPackage) (E : RepeatedGamesEvidence R) :
    RepeatedGamesClosed R := by
  exact And.intro E.folkTheoremClosed (And.intro E.subgamePerfectEquilibriumClosed E.folkTheoremProofClosed)

end DynamicGamesCanonicalLaneLean
end HautevilleHouse