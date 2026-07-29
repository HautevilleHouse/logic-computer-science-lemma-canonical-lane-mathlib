import LogicComputerScienceLemmaCanonicalLaneLean.AdmissibleClass
import LogicComputerScienceLemmaCanonicalLaneLean.BridgeLemmas
import LogicComputerScienceLemmaCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace LogicComputerScienceLemmaCanonicalLaneLean

def ConstrainedLogicCSClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_logic_cs_endgame (A : AdmissibleClass) :
    ConstrainedLogicCSClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end LogicComputerScienceLemmaCanonicalLaneLean
end HautevilleHouse