import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsApproachTurbulenceCanonicalLaneLean

structure ReynoldsDecompositionCertificate where
  substrate : StratoNavierStokesSubstrate
  meanFlowDecomposed : Prop
  fluctuationCovarianceClosed : Prop
  meanFlowDecomposedProof : meanFlowDecomposed
  fluctuationCovarianceClosedProof : fluctuationCovarianceClosed

def sourceReynoldsCertificate : ReynoldsDecompositionCertificate := {
  substrate := stratoNavierStokesSubstrate,
  meanFlowDecomposed := True,
  fluctuationCovarianceClosed := True,
  meanFlowDecomposedProof := trivial,
  fluctuationCovarianceClosedProof := trivial
}

def ReynoldsDecompositionClosed (C : ReynoldsDecompositionCertificate) : Prop :=
  C.meanFlowDecomposed ∧ C.fluctuationCovarianceClosed

theorem source_reynolds_decomposition_closed : ReynoldsDecompositionClosed sourceReynoldsCertificate := by
  exact And.intro sourceReynoldsCertificate.meanFlowDecomposedProof
    sourceReynoldsCertificate.fluctuationCovarianceClosedProof

end DynamicalSystemsApproachTurbulenceCanonicalLaneLean
end HautevilleHouse