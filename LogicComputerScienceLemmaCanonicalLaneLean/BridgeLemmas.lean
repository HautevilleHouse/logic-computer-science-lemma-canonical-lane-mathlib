import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LogicComputerScienceLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  LogicCSWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end LogicComputerScienceLemmaCanonicalLaneLean
end HautevilleHouse