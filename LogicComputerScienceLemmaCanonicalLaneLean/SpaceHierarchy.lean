import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LogicComputerScienceLemmaCanonicalLaneLean

structure SpaceConstructible (f : Nat → Nat) where
  space : Nat → Nat
  machine : TuringMachine
  correctness : ∀ (n : Nat), space n ≤ f n

structure SpaceHierarchyTheorem where
  smaller : SpaceConstructible (λ n => n)
  larger : SpaceConstructible (λ n => n^2)
  strictInclusion : ¬ (∀ (tm : TuringMachine), (∃ (s : SpaceConstructible (λ n => n)), True) → (∃ (s' : SpaceConstructible (λ n => n^2)), True))

def SpaceHierarchyClosed (A : AdmissibleClass) : Prop := True

end LogicComputerScienceLemmaCanonicalLaneLean
end HautevilleHouse