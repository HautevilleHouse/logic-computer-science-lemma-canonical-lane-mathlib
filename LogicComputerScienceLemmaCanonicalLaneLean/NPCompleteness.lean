import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LogicComputerScienceLemmaCanonicalLaneLean

structure SATInstance where
  variables : List String
  clauses : List (List Literal)

inductive Literal where
  | pos (v : String)
  | neg (v : String)

structure PolynomialTimeReduction (A B : Type) where
  f : A → B
  polynomial : Nat → Nat
  reductionProof : ∀ (x : A), x ∈ SAT ↔ f x ∈ SAT

structure NPCompleteProof where
  satReduction : PolynomialTimeReduction SATInstance SATInstance
  satInNP : prop
  reductionFromAnyNP : ∀ (A : Type) (h : A ∈ NP), PolynomialTimeReduction A SATInstance

structure NPCompleteObject where
  proof : NPCompleteProof
  conclusion : SATInstance ∈ NPComplete

def NPCompleteWitnessClosed (O : NPCompleteObject) : Prop :=
  O.conclusion

end LogicComputerScienceLemmaCanonicalLaneLean
end HautevilleHouse