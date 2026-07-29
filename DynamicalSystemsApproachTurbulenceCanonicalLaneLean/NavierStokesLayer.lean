import canonicalLaneMathlib.AdmissibleClass
import DynamicalSystemsApproachTurbulenceCanonicalLaneLean.DynamicalSystemsFlow

namespace HautevilleHouse
namespace DynamicalSystemsApproachTurbulenceCanonicalLaneLean

structure NavierStokesLayer where
  velocity : VectorField
  viscosity : ℝ
  operatorsClosed : Prop
  operatorsClosedProof : operatorsClosed

def primitiveNSLayer : NavierStokesLayer := {
  velocity := zeroVectorField
  viscosity := 1.0
  operatorsClosed := True
  operatorsClosedProof := trivial
}

def NSAdmissible (NS : NavierStokesLayer) : Prop :=
  NS.operatorsClosed

theorem ns_admissible_primitive : NSAdmissible primitiveNSLayer := by
  exact trivial

end HautevilleHouse
end DynamicalSystemsApproachTurbulenceCanonicalLaneLean