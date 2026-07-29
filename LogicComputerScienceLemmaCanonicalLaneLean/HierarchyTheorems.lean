import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LogicComputerScienceLemmaCanonicalLaneLean

structure HierarchyTheoremsPackage where
  timeHierarchyTheorem : Prop
  spaceHierarchyTheorem : Prop
  nonDeterministicTimeHierarchy : Prop
  nonDeterministicSpaceHierarchy : Prop
  paddingArgument : Prop
  diagonalization : Prop

structure HierarchyTheoremsEvidence (H : HierarchyTheoremsPackage) where
  timeHierarchyTheoremClosed : H.timeHierarchyTheorem
  spaceHierarchyTheoremClosed : H.spaceHierarchyTheorem
  nonDeterministicTimeHierarchyClosed : H.nonDeterministicTimeHierarchy
  nonDeterministicSpaceHierarchyClosed : H.nonDeterministicSpaceHierarchy
  paddingArgumentClosed : H.paddingArgument
  diagonalizationClosed : H.diagonalization

def HierarchyTheoremsClosed (H : HierarchyTheoremsPackage) : Prop :=
  H.timeHierarchyTheorem ∧ H.spaceHierarchyTheorem ∧ H.nonDeterministicTimeHierarchy ∧
  H.nonDeterministicSpaceHierarchy ∧ H.paddingArgument ∧ H.diagonalization

theorem hierarchy_theorems_closed_from_evidence
    (H : HierarchyTheoremsPackage) (E : HierarchyTheoremsEvidence H) :
    HierarchyTheoremsClosed H := by
  exact And.intro E.timeHierarchyTheoremClosed
    (And.intro E.spaceHierarchyTheoremClosed
      (And.intro E.nonDeterministicTimeHierarchyClosed
        (And.intro E.nonDeterministicSpaceHierarchyClosed
          (And.intro E.paddingArgumentClosed E.diagonalizationClosed))))

end LogicComputerScienceLemmaCanonicalLaneLean
end HautevilleHouse