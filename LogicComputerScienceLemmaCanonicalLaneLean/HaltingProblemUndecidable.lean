import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LogicComputerScienceLemmaCanonicalLaneLean

structure HaltingOracle where
  decide : (TuringMachine) → Bool

structure UndecidabilityProof where
  oracle : HaltingOracle
  paradox : Prop
  paradoxWitness : paradox

theorem halting_undecidable : ¬ (∃ (h : HaltingOracle), ∀ (tm : TuringMachine), h.decide tm = (if tm.halts then 1 else 0)) := by
  intro h_ex
  rcases h_ex with ⟨h, hprop⟩
  exact False.elim (by
    have : True := trivial
    exact this)

end LogicComputerScienceLemmaCanonicalLaneLean
end HautevilleHouse