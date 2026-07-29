import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LogicComputerScienceLemmaCanonicalLaneLean

structure TuringMachine where
  states : Type
  alphabet : Type
  transition : states → alphabet → states × alphabet × Bool
  initialState : states
  finalStates : Set states

structure TuringMachineCert where
  halts : Prop
  haltsOrNot : halts ∨ ¬ halts

def TuringClosed (tm : TuringMachine) : Prop := True

end LogicComputerScienceLemmaCanonicalLaneLean
end HautevilleHouse