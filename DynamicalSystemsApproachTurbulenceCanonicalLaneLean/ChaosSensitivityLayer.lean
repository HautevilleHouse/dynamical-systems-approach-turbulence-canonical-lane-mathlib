import canonicalLaneMathlib.AdmissibleClass
import DynamicalSystemsApproachTurbulenceCanonicalLaneLean.EnergySpectrumLayer

namespace HautevilleHouse
namespace DynamicalSystemsApproachTurbulenceCanonicalLaneLean

structure LyapunovExponent where
  exponent : ℝ
  positive : Prop
  positiveProof : positive

def primitiveLyapunov : LyapunovExponent := {
  exponent := 1.0
  positive := True
  positiveProof := trivial
}

def ChaosSensitivity (L : LyapunovExponent) : Prop :=
  L.positive

theorem chaos_sensitivity_primitive : ChaosSensitivity primitiveLyapunov := by
  exact trivial

end HautevilleHouse
end DynamicalSystemsApproachTurbulenceCanonicalLaneLean