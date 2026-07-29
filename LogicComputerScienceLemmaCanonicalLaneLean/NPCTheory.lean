import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LogicComputerScienceLemmaCanonicalLaneLean

structure NPCTheoryPackage where
  satReduction : Prop
  threeSatReduction : Prop
  cliqueReduction : Prop
  vertexCoverReduction : Prop
  subsetSumReduction : Prop
  cookLevinTheorem : Prop

structure NPCTheoryEvidence (N : NPCTheoryPackage) where
  satReductionClosed : N.satReduction
  threeSatReductionClosed : N.threeSatReduction
  cliqueReductionClosed : N.cliqueReduction
  vertexCoverReductionClosed : N.vertexCoverReduction
  subsetSumReductionClosed : N.subsetSumReduction
  cookLevinTheoremClosed : N.cookLevinTheorem

def NPCTheoryClosed (N : NPCTheoryPackage) : Prop :=
  N.satReduction ∧ N.threeSatReduction ∧ N.cliqueReduction ∧
  N.vertexCoverReduction ∧ N.subsetSumReduction ∧ N.cookLevinTheorem

theorem npc_theory_closed_from_evidence
    (N : NPCTheoryPackage) (E : NPCTheoryEvidence N) :
    NPCTheoryClosed N := by
  exact And.intro E.satReductionClosed
    (And.intro E.threeSatReductionClosed
      (And.intro E.cliqueReductionClosed
        (And.intro E.vertexCoverReductionClosed
          (And.intro E.subsetSumReductionClosed E.cookLevinTheoremClosed))))

end LogicComputerScienceLemmaCanonicalLaneLean
end HautevilleHouse