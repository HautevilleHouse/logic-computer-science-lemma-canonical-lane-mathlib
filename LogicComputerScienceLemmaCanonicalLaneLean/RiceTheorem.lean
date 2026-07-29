import Mathlib.Computability.Partialrec

namespace HautevilleHouse
namespace LogicComputerScienceLemmaCanonicalLaneLean

/-- A structure for index sets. -/
structure IndexSet where
  A : Set ℕ
  nontrivial : A ≠ ∅ ∧ A ≠ Set.univ

/-- Evidence that a nontrivial index set is undecidable. -/
structure RiceTheoremEvidence (S : IndexSet) where
  computableWitness : S.A
  propertyNonempty : S.nontrivial.left
  propertyNotAll : S.nontrivial.right

/-- Rice's theorem closure. -/
def RiceTheoremClosed (S : IndexSet) : Prop := S.nontrivial.left ∧ S.nontrivial.right

theorem rice_theorem_closed_from_evidence (S : IndexSet) (E : RiceTheoremEvidence S) :
    RiceTheoremClosed S := by
  exact And.intro E.propertyNonempty E.propertyNotAll

end LogicComputerScienceLemmaCanonicalLaneLean
end HautevilleHouse