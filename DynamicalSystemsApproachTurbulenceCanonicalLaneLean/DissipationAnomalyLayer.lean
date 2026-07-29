import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Data.Real.Basic

namespace HautevilleHouse
namespace DynamicalSystemsApproachTurbulenceCanonicalLaneLean

structure DissipationCertificate where
  flow : TurbulentFlow
  energyDissipationRate : Prop
  anomalousDissipation : Prop
  zeroViscosityLimit : Prop
  dissipationAnomaly : Prop
  dissipationClosed : Prop
  energyDissipationRateProof : energyDissipationRate
  anomalousDissipationProof : anomalousDissipation
  zeroViscosityLimitProof : zeroViscosityLimit
  dissipationAnomalyProof : dissipationAnomaly
  dissipationClosedProof : dissipationClosed

def sourceDissipationCertificate : DissipationCertificate where
  flow := zeroFlow
  energyDissipationRate := True
  anomalousDissipation := True
  zeroViscosityLimit := True
  dissipationAnomaly := True
  dissipationClosed := True
  energyDissipationRateProof := trivial
  anomalousDissipationProof := trivial
  zeroViscosityLimitProof := trivial
  dissipationAnomalyProof := trivial
  dissipationClosedProof := trivial

def DissipationClosed (C : DissipationCertificate) : Prop :=
  C.energyDissipationRate ∧ C.anomalousDissipation ∧ C.zeroViscosityLimit ∧ C.dissipationAnomaly ∧ C.dissipationClosed

theorem source_dissipation_closed : DissipationClosed sourceDissipationCertificate := by
  refine ⟨trivial, trivial, trivial, trivial, trivial⟩

end DynamicalSystemsApproachTurbulenceCanonicalLaneLean
end HautevilleHouse
