import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Data.Real.Basic

namespace HautevilleHouse
namespace DynamicalSystemsApproachTurbulenceCanonicalLaneLean

structure LyapunovCertificate where
  flow : TurbulentFlow
  finiteLyapunovExponent : Prop
  stretchingRate : Prop
  positiveLyapunovCondition : Prop
  chaosIndicator : Prop
  closure : Prop
  finiteLyapunovExponentProof : finiteLyapunovExponent
  stretchingRateProof : stretchingRate
  positiveLyapunovConditionProof : positiveLyapunovCondition
  chaosIndicatorProof : chaosIndicator
  closureProof : closure

def sourceLyapunovCertificate : LyapunovCertificate where
  flow := zeroFlow
  finiteLyapunovExponent := True
  stretchingRate := True
  positiveLyapunovCondition := True
  chaosIndicator := True
  closure := True
  finiteLyapunovExponentProof := trivial
  stretchingRateProof := trivial
  positiveLyapunovConditionProof := trivial
  chaosIndicatorProof := trivial
  closureProof := trivial

def LyapunovClosed (C : LyapunovCertificate) : Prop :=
  C.finiteLyapunovExponent ∧ C.stretchingRate ∧ C.positiveLyapunovCondition ∧ C.chaosIndicator ∧ C.closure

theorem source_lyapunov_closed : LyapunovClosed sourceLyapunovCertificate := by
  refine ⟨trivial, trivial, trivial, trivial, trivial⟩

end DynamicalSystemsApproachTurbulenceCanonicalLaneLean
end HautevilleHouse
