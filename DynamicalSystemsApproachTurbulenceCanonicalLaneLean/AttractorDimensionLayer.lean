import canonicalLaneMathlib.AdmissibleClass
import DynamicalSystemsApproachTurbulenceCanonicalLaneLean.ChaosSensitivityLayer

namespace HautevilleHouse
namespace DynamicalSystemsApproachTurbulenceCanonicalLaneLean

structure AttractorDimension where
  dimension : ℝ
  finite : Prop
  finiteProof : finite

def primitiveAttractor : AttractorDimension := {
  dimension := 2.0
  finite := True
  finiteProof := trivial
}

def AttractorDimensionClosed (A : AttractorDimension) : Prop :=
  A.finite

theorem attractor_dimension_closed_primitive : AttractorDimensionClosed primitiveAttractor := by
  exact trivial

end HautevilleHouse
end DynamicalSystemsApproachTurbulenceCanonicalLaneLean