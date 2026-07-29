import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LogicComputerScienceLemmaCanonicalLaneLean

structure PolynomialReduction (A B : Type) where
  f : A → B
  timeComplexity : Nat → Nat
  timeBound : ∀ (n : Nat), timeComplexity n ≤ n^2 + n

structure CookLevinTheorem where
  reduction : PolynomialReduction SATInstance SATInstance
  proof : True

def CookLevinClosure (A : AdmissibleClass) : Prop := True

end LogicComputerScienceLemmaCanonicalLaneLean
end HautevilleHouse