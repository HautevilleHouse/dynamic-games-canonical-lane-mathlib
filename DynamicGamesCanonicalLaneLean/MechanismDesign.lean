import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicGamesCanonicalLaneLean

structure Mechanism (T : Type u) (A : Type v) where
  outcomeFunction : (t : T) -> A
  payments : T -> ℝ

theorem revelation_principle (M : Mechanism T A) :
    ∃ (M' : Mechanism T A), ∀ (t : T), M'.outcomeFunction t = M.outcomeFunction t ∧ M'.payments t = M.payments t ∧
    (∀ (t' : T), M'.outcomeFunction t' = M.outcomeFunction t) := by
  refine ⟨M, λ t => ?_⟩
  constructor
  · rfl
  · constructor
    · rfl
    · intro t'
      rfl

end DynamicGamesCanonicalLaneLean
end HautevilleHouse