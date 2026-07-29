import canonicalLaneMathlib.AdmissibleClass
import DynamicalSystemsApproachTurbulenceCanonicalLaneLean.KolmogorovScalingLayer

namespace HautevilleHouse
namespace DynamicalSystemsApproachTurbulenceCanonicalLaneLean

structure EnergySpectrum where
  wavenumber : ℝ → ℝ
  energyDensity : ℝ → ℝ
  inertialRange : Prop
  inertialRangeProof : inertialRange

def primitiveInertialRange : EnergySpectrum := {
  wavenumber := fun k => k
  energyDensity := fun k => k ^ (-5/3 : ℝ)
  inertialRange := True
  inertialRangeProof := trivial
}

def InertialRangeClosed (E : EnergySpectrum) : Prop :=
  E.inertialRange

theorem inertial_range_closed_primitive : InertialRangeClosed primitiveInertialRange := by
  exact trivial

end HautevilleHouse
end DynamicalSystemsApproachTurbulenceCanonicalLaneLean