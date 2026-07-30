import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicGamesCanonicalLaneLean

structure BargainingProblem where
  feasibleSet : Set (ℝ × ℝ)
  disagreementPoint : ℝ × ℝ

theorem nash_bargaining_solution_exists (B : BargainingProblem) :
    ∃ (x : ℝ × ℝ), x ∈ B.feasibleSet ∧ x.1 ≥ B.disagreementPoint.1 ∧ x.2 ≥ B.disagreementPoint.2 ∧
    ∀ (y : ℝ × ℝ), y ∈ B.feasibleSet → (x.1 - B.disagreementPoint.1) * (x.2 - B.disagreementPoint.2) ≥
      (y.1 - B.disagreementPoint.1) * (y.2 - B.disagreementPoint.2) := by
  sorry

end DynamicGamesCanonicalLaneLean
end HautevilleHouse
