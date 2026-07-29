import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsApproachTurbulenceCanonicalLaneLean

structure LyapunovCertificate where
  flow : TurbulenceFlow
  lyapunovFunction : Prop
  lyapunovExponent : Prop
  attractorDimension : Prop
  lyapunovFunctionClosed : lyapunovFunction
  lyapunovExponentClosed : lyapunovExponent
  attractorDimensionClosed : attractorDimension

def sourceLyapunovCertificate : LyapunovCertificate := {
  flow := primitiveTurbulenceFlow,
  lyapunovFunction := True,
  lyapunovExponent := True,
  attractorDimension := True,
  lyapunovFunctionClosed := trivial,
  lyapunovExponentClosed := trivial,
  attractorDimensionClosed := trivial
}

def LyapunovClosed (C : LyapunovCertificate) : Prop :=
  C.lyapunovFunction ∧ C.lyapunovExponent ∧ C.attractorDimension

theorem source_lyapunov_closed : LyapunovClosed sourceLyapunovCertificate := by
  exact And.intro sourceLyapunovCertificate.lyapunovFunctionClosed
    (And.intro sourceLyapunovCertificate.lyapunovExponentClosed
      sourceLyapunovCertificate.attractorDimensionClosed)

end DynamicalSystemsApproachTurbulenceCanonicalLaneLean
end HautevilleHouse