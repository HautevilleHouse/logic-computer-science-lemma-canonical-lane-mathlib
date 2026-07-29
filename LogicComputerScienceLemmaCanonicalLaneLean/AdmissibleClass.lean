import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LogicComputerScienceLemmaCanonicalLaneLean

structure AdmissibleClass where
  object : LogicCSAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  LogicCSWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end LogicComputerScienceLemmaCanonicalLaneLean
end HautevilleHouse