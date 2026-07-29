import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LogicComputerScienceLemmaCanonicalLaneLean

structure FormalSystem where
  axioms : List String
  deductionRules : List (String → String → String)

type Provable (s : FormalSystem) (stmt : String) : Prop :=
  | proof (steps : List String) : Provable s stmt

structure IncompletenessTheorem where
  system : FormalSystem
  selfReferentialStmt : String
  notProvable : ¬ Provable system selfReferentialStmt
  notDisprovable : ¬ Provable system ("¬" ++ selfReferentialStmt)

def GodelIncomplete (s : FormalSystem) : Prop := 
  ∃ (stmt : String), ¬ Provable s stmt ∧ ¬ Provable s ("¬" ++ stmt)

end LogicComputerScienceLemmaCanonicalLaneLean
end HautevilleHouse