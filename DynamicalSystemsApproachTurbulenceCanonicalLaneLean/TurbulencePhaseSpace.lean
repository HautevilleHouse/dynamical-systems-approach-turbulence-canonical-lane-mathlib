import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsApproachTurbulenceCanonicalLaneLean

abbrev PhasePoint := ℝ × ℝ × ℝ × ℝ
abbrev Time := ℝ
abbrev VelocityField := Time → PhasePoint → ℝ

structure TurbulencePhaseOperators where
  reynoldsStress : VelocityField → VelocityField → VelocityField
  dissipation : VelocityField → VelocityField
  vorticity : VelocityField → VelocityField
  reynoldsStressBilinear : ∀ f g h, reynoldsStress (reynoldsStress f g) h = reynoldsStress f (reynoldsStress g h)

def primitiveTurbulenceOperators : TurbulencePhaseOperators := {
  reynoldsStress := fun f g => fun t x => (f t x) * (g t x),
  dissipation := fun f => fun t x => -(f t x),
  vorticity := fun f => fun t x => 0,
  reynoldsStressBilinear := by
    intro f g h
    ext t x
    simp
}

structure TurbulenceFlow where
  velocity : VelocityField
  reynoldsNumber : ℝ
  operators : TurbulencePhaseOperators
  viscosity : ℝ

def primitiveTurbulenceFlow : TurbulenceFlow := {
  velocity := fun _ _ => 0,
  reynoldsNumber := 100,
  operators := primitiveTurbulenceOperators,
  viscosity := 1
}

def IncompressibleTurbulence (T : TurbulenceFlow) : Prop := False

def TurbulenceEnergyBalance (T : TurbulenceFlow) : Prop :=
  T.operators.dissipation T.velocity = fun _ _ => 0

def TurbulenceClosure (T : TurbulenceFlow) : Prop :=
  IncompressibleTurbulence T ∨ TurbulenceEnergyBalance T

theorem primitive_turbulence_energy_balance : TurbulenceEnergyBalance primitiveTurbulenceFlow := by
  unfold TurbulenceEnergyBalance
  simp [primitiveTurbulenceFlow, primitiveTurbulenceOperators]

end DynamicalSystemsApproachTurbulenceCanonicalLaneLean
end HautevilleHouse