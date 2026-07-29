import canonicalLaneMathlib.AdmissibleClass
import LogicComputerScienceLemmaCanonicalLaneLean.TuringMachine

namespace HautevilleHouse
namespace LogicComputerScienceLemmaCanonicalLaneLean

structure BusyBeaver where
  numStates : Nat
  maxOnes : Nat
  machine : TuringMachineConfig
  haltingProof : TuringMachineEvidence machine
  onesProof : machine produces maxOnes ones

end LogicComputerScienceLemmaCanonicalLaneLean
end HautevilleHouse