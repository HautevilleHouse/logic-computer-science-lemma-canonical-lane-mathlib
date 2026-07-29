import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LogicComputerScienceLemmaCanonicalLaneLean

structure TuringMachine where
  states : Type
  alphabet : Type
  tape : List alphabet
  transition : states → alphabet → states × alphabet × Direction
  initial : states
  haltingStates : Set states
  initialTape : List alphabet

inductive Direction where
  | L
  | R
  | N

structure HaltingProblemOracle where
  oracle : TuringMachine → Bool
  consistent : ∀ (tm : TuringMachine), oracle tm = true ↔ tm.halts

structure HaltingProblemObject where
  machine : TuringMachine
  oracle : HaltingProblemOracle
  halts : Bool
  conclusion : halts = oracle.oracle machine

def HaltingWitnessClosed (O : HaltingProblemObject) : Prop :=
  O.conclusion

end LogicComputerScienceLemmaCanonicalLaneLean
end HautevilleHouse