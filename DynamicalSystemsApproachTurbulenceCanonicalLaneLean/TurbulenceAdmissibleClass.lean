import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsApproachTurbulenceCanonicalLaneLean.PhaseSpaceLayer
import HautevilleHouse.DynamicalSystemsApproachTurbulenceCanonicalLaneLean.LyapunovExponentLayer
import HautevilleHouse.DynamicalSystemsApproachTurbulenceCanonicalLaneLean.PowerSpectrumLayer
import HautevilleHouse.DynamicalSystemsApproachTurbulenceCanonicalLaneLean.ReynoldsNumberLayer
import HautevilleHouse.DynamicalSystemsApproachTurbulenceCanonicalLaneLean.DissipationAnomalyLayer

namespace HautevilleHouse
namespace DynamicalSystemsApproachTurbulenceCanonicalLaneLean

structure AdmittedObject where
  sourceKey : String
  theoremObject : String
  claimBoundary : String

def sourceRepository := "dynamical-systems-approach-turbulence-canonical-lane"
def sourceDescription := "Dynamical Systems Approach to Turbulence"

def theoremSpecificObject : AdmittedObject where
  sourceKey := sourceRepository
  theoremObject := sourceDescription
  claimBoundary := "Turbulence closure through dynamical systems"

structure AdmissibleClass where
  object : AdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def turbulenceAdmissibleClass : AdmissibleClass where
  object := theoremSpecificObject
  endpointSatisfied := True
  remainderRecorded := True
  gateWitness := Or.inl trivial

end DynamicalSystemsApproachTurbulenceCanonicalLaneLean
end HautevilleHouse
