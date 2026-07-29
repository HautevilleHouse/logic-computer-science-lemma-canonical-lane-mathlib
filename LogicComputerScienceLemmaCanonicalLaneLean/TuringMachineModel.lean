import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LogicComputerScienceLemmaCanonicalLaneLean

structure TuringMachineModel where
  states : Type
  alphabet : Type
  blank : alphabet
  transition : states → alphabet → states × alphabet × Bool
  initialState : states
  haltingStates : Set states
  haltingStatesFinite : Fintype haltingStates

structure TuringMachineEvidence (M : TuringMachineModel) where
  transitionDefined : ℕ → Config M → Prop
  haltingReachable : Config M → Prop
  initialConfig : Config M
  initialConfigInitial : Config M → Prop

structure TuringMachineClosed (M : TuringMachineModel) : Prop where
  transitionComplete : ∀ n, transitionDefined n initialConfig
  haltingDecidable : Decidable (∃ n, haltingReachable initialConfig n)

end LogicComputerScienceLemmaCanonicalLaneLean
end HautevilleHouse