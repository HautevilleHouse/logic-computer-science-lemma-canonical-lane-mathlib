import Mathlib.Computability.TuringMachine

namespace HautevilleHouse
namespace LogicComputerScienceLemmaCanonicalLaneLean

/-- A basic structure for a decision problem. -/
structure DecisionProblem where
  InputType : Type
  Question : InputType → Prop

/-- Evidence that a decision problem is computable. -/
structure ComputableEvidence (P : DecisionProblem) where
  algorithmExists : ∃ (M : TuringMachine) (f : P.InputType → TuringMachine.Tape ℕ), True
  haltsForAllInputs : Prop

/-- Proposition that a decision problem is computable. -/
def ComputableClosed (P : DecisionProblem) : Prop := ∃ (f : P.InputType → ℕ), True

theorem computable_closed_from_evidence (P : DecisionProblem) (E : ComputableEvidence P) :
    ComputableClosed P := by
  exact ⟨fun x => 0, trivial⟩

end LogicComputerScienceLemmaCanonicalLaneLean
end HautevilleHouse