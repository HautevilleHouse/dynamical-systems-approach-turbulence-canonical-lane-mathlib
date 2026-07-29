import canonicalLaneMathlib.AdmissibleClass
import DynamicalSystemsApproachTurbulenceCanonicalLaneLean.DynamicalSystemsFlow

namespace HautevilleHouse
namespace DynamicalSystemsApproachTurbulenceCanonicalLaneLean

structure ReynoldsStress where
  meanFlow : VectorField
  fluctuatingField : VectorField
  stressTensor : State → State

def zeroReynoldsStress : ReynoldsStress := {
  meanFlow := zeroVectorField
  fluctuatingField := zeroVectorField
  stressTensor := fun _ _ => 0
}

def turbulenceIntensity (R : ReynoldsStress) : Prop :=
  R.stressTensor = fun _ _ => 0

theorem zero_turbulence_intensity : turbulenceIntensity zeroReynoldsStress := by
  unfold turbulenceIntensity zeroReynoldsStress
  rfl

end HautevilleHouse
end DynamicalSystemsApproachTurbulenceCanonicalLaneLean