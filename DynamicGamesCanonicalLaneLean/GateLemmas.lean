import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicGamesCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.remainderRecorded

end DynamicGamesCanonicalLaneLean
end HautevilleHouse