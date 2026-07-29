import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsApproachTurbulenceCanonicalLaneLean

abbrev Real := ℝ
abbrev Time := ℝ
abbrev State := ℝ → ℝ
abbrev VectorField := State → State

def zeroVectorField : VectorField := fun _ _ => 0

structure DynamicalSystem where
  state : State
  vectorField : VectorField
  time : Time

def primitiveSystem : DynamicalSystem := {
  state := fun _ => 0
  vectorField := zeroVectorField
  time := 0
}

structure PhaseSpace where
  points : State → Prop
  dimension : ℕ

def euclideanPhaseSpace (n : ℕ) : PhaseSpace := {
  points := fun _ => True
  dimension := n
}

def VelocityField (v : VectorField) (x : State) : State := v x

def zeroVelocityField : VelocityField zeroVectorField = zeroVectorField := rfl

end HautevilleHouse
end DynamicalSystemsApproachTurbulenceCanonicalLaneLean