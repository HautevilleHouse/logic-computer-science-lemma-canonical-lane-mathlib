import canonicalLaneMathlib.AdmissibleClass
import LogicComputerScienceLemmaCanonicalLaneLean.NPCompleteness

namespace HautevilleHouse
namespace LogicComputerScienceLemmaCanonicalLaneLean

structure SAT : Problem where
  inputType := Prop
  question := fun φ => φ

structure CookLevinEvidence where
  satIsNP : SAT.np
  satIsNPHard : ∀ Q : Problem, Q.np → Reduction Q SAT
  cookLevinProof : Prop

end LogicComputerScienceLemmaCanonicalLaneLean
end HautevilleHouse