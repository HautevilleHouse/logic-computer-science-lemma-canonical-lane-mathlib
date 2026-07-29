import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LogicComputerScienceLemmaCanonicalLaneLean

structure AlgorithmicRandomnessPackage where
  kolmogorovComplexity : ℕ → ℕ → Prop
  martingale : (ℕ → ℕ) → ℕ → ℝ
  martingaleConvergence : Prop
  mlRandomness : (ℕ → ℕ) → Prop
  vonMisesRandomness : (ℕ → ℕ) → Prop
  equivalenceProof : Prop

structure AlgorithmicRandomnessEvidence (A : AlgorithmicRandomnessPackage) where
  martingaleConvergenceClosed : A.martingaleConvergence
  mlRandomnessClosed : A.mlRandomness
  vonMisesRandomnessClosed : A.vonMisesRandomness
  equivalenceProofClosed : A.equivalenceProof

def AlgorithmicRandomnessClosed (A : AlgorithmicRandomnessPackage) : Prop :=
  A.martingaleConvergence ∧ A.mlRandomness ∧ A.vonMisesRandomness ∧ A.equivalenceProof

theorem algorithmic_randomness_closed_from_evidence
    (A : AlgorithmicRandomnessPackage) (E : AlgorithmicRandomnessEvidence A) :
    AlgorithmicRandomnessClosed A := by
  exact And.intro E.martingaleConvergenceClosed
    (And.intro E.mlRandomnessClosed
      (And.intro E.vonMisesRandomnessClosed E.equivalenceProofClosed))

end LogicComputerScienceLemmaCanonicalLaneLean
end HautevilleHouse