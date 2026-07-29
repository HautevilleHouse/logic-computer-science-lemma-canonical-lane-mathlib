import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LogicComputerScienceLemmaCanonicalLaneLean

structure TuringMachineEncoding where
  encoding : String
  decodingFunction : String → TuringMachine

structure KolmogorovComplexity (s : String) where
  shortestTM : TuringMachine
  production : shortestTM.run [] = s
  length : Nat
  minimal : ∀ (tm' : TuringMachine), tm'.run [] = s → length ≤ tm'.encoding.length

structure AlgorithmicRandomness where
  infiniteSequence : Nat → Bool
  complexityUnbounded : ∀ c, ∃ n, KolmogorovComplexity (take n infiniteSequence).length > c

structure AlgorithmicRandomnessObject where
  sequence : AlgorithmicRandomness
  proof : ∀ n, KolmogorovComplexity (take n sequence.infiniteSequence).length > log2 n
  conclusion : sequence ∈ AlgorithmicRandom

def KolmogorovWitnessClosed (O : AlgorithmicRandomnessObject) : Prop :=
  O.conclusion

end LogicComputerScienceLemmaCanonicalLaneLean
end HautevilleHouse