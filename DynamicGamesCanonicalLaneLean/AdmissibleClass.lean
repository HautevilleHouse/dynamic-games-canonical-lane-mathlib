import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicGamesCanonicalLaneLean

structure AdmittedGame (A : AdmissibleClass) where
  payoffFunction : A.object → ℝ
  strategyProfiles : Set (A.object → A.object)
  nashEquilibrium : Prop
  bargainingSolution : Prop
  mechanismDesign : Prop

def gameClosed (A : AdmissibleClass) (G : AdmittedGame A) : Prop :=
  G.nashEquilibrium ∧ G.bargainingSolution ∧ G.mechanismDesign

end DynamicGamesCanonicalLaneLean
end HautevilleHouse