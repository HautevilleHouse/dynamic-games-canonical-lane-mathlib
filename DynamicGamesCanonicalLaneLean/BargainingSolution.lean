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
  have h_dis_in : B.disagreementPoint ∈ B.feasibleSet :=
    AdmissibleClass.disagreement_in_feasible B
  have h_nonempty : B.feasibleSet.Nonempty := ⟨B.disagreementPoint, h_dis_in⟩
  have h_dom : ∀ y ∈ B.feasibleSet, y.1 ≥ B.disagreementPoint.1 ∧ y.2 ≥ B.disagreementPoint.2 :=
    AdmissibleClass.feasible_above_disagreement B
  have h_compact : IsCompact B.feasibleSet :=
    AdmissibleClass.feasible_compact B
  have h_cont : Continuous (λ (x : ℝ × ℝ) => (x.1 - B.disagreementPoint.1) * (x.2 - B.disagreementPoint.2)) := by
    apply Continuous.mul
    · apply Continuous.sub
      · exact continuous_fst
      · exact continuous_const
    · apply Continuous.sub
      · exact continuous_snd
      · exact continuous_const
  have h_max : ∃ x ∈ B.feasibleSet, ∀ y ∈ B.feasibleSet, (x.1 - B.disagreementPoint.1) * (x.2 - B.disagreementPoint.2) ≥ (y.1 - B.disagreementPoint.1) * (y.2 - B.disagreementPoint.2) :=
    h_compact.exists_max_image h_cont
  rcases h_max with ⟨x, hx, hx_max⟩
  have hx_ge : x.1 ≥ B.disagreementPoint.1 ∧ x.2 ≥ B.disagreementPoint.2 := h_dom x hx
  exact ⟨x, hx, hx_ge.1, hx_ge.2, hx_max⟩

end DynamicGamesCanonicalLaneLean
end HautevilleHouse