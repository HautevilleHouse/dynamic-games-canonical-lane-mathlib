import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicGamesCanonicalLaneLean

structure DynamicProgrammingPackage where
  stateSpace : Type u
  actionSpace : Type v
  transition : stateSpace → actionSpace → stateSpace
  reward : stateSpace → actionSpace → ℝ
  valueFunction : stateSpace → ℝ
  bellmanOptimality : Prop
  optimalPolicyExists : Prop
  optimalPolicyExistsTerm : optimalPolicyExists

structure DynamicProgrammingEvidence (D : DynamicProgrammingPackage) where
  bellmanOptimalityClosed : D.bellmanOptimality
  optimalPolicyExistsClosed : D.optimalPolicyExists

def DynamicProgrammingClosed (D : DynamicProgrammingPackage) : Prop :=
  D.bellmanOptimality ∧ D.optimalPolicyExists

theorem dynamic_programming_closed_from_evidence (D : DynamicProgrammingPackage) (E : DynamicProgrammingEvidence D) :
    DynamicProgrammingClosed D := by
  exact And.intro E.bellmanOptimalityClosed E.optimalPolicyExistsClosed

end DynamicGamesCanonicalLaneLean
end HautevilleHouse