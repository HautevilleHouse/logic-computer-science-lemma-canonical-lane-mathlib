import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LogicComputerScienceLemmaCanonicalLaneLean

structure LogicCSAdmittedObject where
  space : Type
  computabilityStructure : Prop
  complexityStatement : Prop
  haltingProblemEncoding : Prop
  npCompleteness : Prop
  hierarchyTheorem : Prop
  conclusion : computabilityStructure ∧ complexityStatement ∧ haltingProblemEncoding ∧ npCompleteness ∧ hierarchyTheorem

def LogicCSWitnessClosed (O : LogicCSAdmittedObject) : Prop :=
  O.computabilityStructure ∧ O.complexityStatement ∧ O.haltingProblemEncoding ∧ O.npCompleteness ∧ O.hierarchyTheorem

end LogicComputerScienceLemmaCanonicalLaneLean
end HautevilleHouse