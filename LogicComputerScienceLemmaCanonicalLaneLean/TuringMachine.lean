import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LogicComputerScienceLemmaCanonicalLaneLean

structure TuringMachine where
  states : Type
  alphabet : Type
  transition : states × alphabet → states × alphabet × ℤ
  initialState : states
  haltingStates : Set states
  blankSymbol : alphabet

structure TuringMachineExecution (M : TuringMachine) where
  currentState : M.states
  tape : ℤ → M.alphabet
  headPosition : ℤ
  steps : ℕ
  haltingStateReached : M.currentState ∈ M.haltingStates

structure TuringMachineAdmittedObject where
  machine : TuringMachine
  execution : TuringMachineExecution machine
  conclusion : execution.haltingStateReached

end LogicComputerScienceLemmaCanonicalLaneLean
end HautevilleHouse