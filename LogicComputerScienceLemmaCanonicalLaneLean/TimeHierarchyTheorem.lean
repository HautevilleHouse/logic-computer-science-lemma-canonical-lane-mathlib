import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LogicComputerScienceLemmaCanonicalLaneLean

structure TimeConstructibleFunction where
  f : Nat → Nat
  timeConstructible : ∃ (tm : TuringMachine), ∀ n, tm.runsInTime f n

structure DiagonalizationProof where
  language : Set String
  notInSmallClass : language ∉ DTIME f_small
  inLargeClass : language ∈ DTIME f_large
  hierarchyGap : ∀ n, f_small n < f_large n

structure TimeHierarchyObject where
  f_small : TimeConstructibleFunction
  f_large : TimeConstructibleFunction
  proof : DiagonalizationProof
  conclusion : DTIME f_small ⊊ DTIME f_large

def TimeHierarchyWitnessClosed (O : TimeHierarchyObject) : Prop :=
  O.conclusion

end LogicComputerScienceLemmaCanonicalLaneLean
end HautevilleHouse