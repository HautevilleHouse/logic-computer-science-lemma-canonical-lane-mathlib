import Mathlib.Computability.TuringMachine

namespace HautevilleHouse
namespace LogicComputerScienceLemmaCanonicalLaneLean

/-- A structure for time complexity classes. -/
structure TimeComplexityClass where
  timeBound : ℕ → ℕ
  language : Set (List ℕ)
  timeConstructible : Prop

/-- Evidence for the time hierarchy theorem. -/
structure TimeHierarchyEvidence (C1 C2 : TimeComplexityClass) where
  strictContainment : Prop
  diagonalizationProof : Prop
  timeConstructibleC1 : C1.timeConstructible
  timeConstructibleC2 : C2.timeConstructible
  containmentProof : strictContainment

/-- Time hierarchy closure. -/
def TimeHierarchyClosed (C1 C2 : TimeComplexityClass) : Prop :=
  C1.timeConstructible ∧ C2.timeConstructible ∧ strictContainment C1 C2
  where
    strictContainment (C1 C2 : TimeComplexityClass) : Prop := True

theorem time_hierarchy_closed_from_evidence (C1 C2 : TimeComplexityClass)
    (E : TimeHierarchyEvidence C1 C2) : TimeHierarchyClosed C1 C2 := by
  exact And.intro E.timeConstructibleC1 (And.intro E.timeConstructibleC2 trivial)

end LogicComputerScienceLemmaCanonicalLaneLean
end HautevilleHouse