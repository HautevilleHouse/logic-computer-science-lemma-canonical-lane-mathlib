import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LogicComputerScienceLemmaCanonicalLaneLean

structure ChurchTuringThesisPackage where
  turingMachine : TuringMachine
  lambdaCalculusEquivalence : Prop
  recursiveFunctionsEquivalence : Prop
  markovAlgorithmsEquivalence : Prop
  partialRecursiveFunctionsEquivalence : Prop

structure ChurchTuringThesisEvidence (C : ChurchTuringThesisPackage) where
  lambdaCalculusEquivalenceClosed : C.lambdaCalculusEquivalence
  recursiveFunctionsEquivalenceClosed : C.recursiveFunctionsEquivalence
  markovAlgorithmsEquivalenceClosed : C.markovAlgorithmsEquivalence
  partialRecursiveFunctionsEquivalenceClosed : C.partialRecursiveFunctionsEquivalence

def ChurchTuringThesisClosed (C : ChurchTuringThesisPackage) : Prop :=
  C.lambdaCalculusEquivalence ∧ C.recursiveFunctionsEquivalence ∧
  C.markovAlgorithmsEquivalence ∧ C.partialRecursiveFunctionsEquivalence

theorem church_turing_thesis_closed_from_evidence
    (C : ChurchTuringThesisPackage) (E : ChurchTuringThesisEvidence C) :
    ChurchTuringThesisClosed C := by
  exact And.intro E.lambdaCalculusEquivalenceClosed
    (And.intro E.recursiveFunctionsEquivalenceClosed
      (And.intro E.markovAlgorithmsEquivalenceClosed E.partialRecursiveFunctionsEquivalenceClosed))

end LogicComputerScienceLemmaCanonicalLaneLean
end HautevilleHouse