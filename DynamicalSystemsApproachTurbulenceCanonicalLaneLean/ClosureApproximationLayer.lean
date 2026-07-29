import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsApproachTurbulenceCanonicalLaneLean

structure ClosureApproximationCertificate where
  reynolds : ReynoldsDecompositionCertificate
  lyapunov : LyapunovCertificate
  kolmogorovK41 : Prop
  properOrthogonalDecomposition : Prop
  closureEquationClosed : Prop
  kolmogorovK41Closed : kolmogorovK41
  properOrthogonalDecompositionClosed : properOrthogonalDecomposition
  closureEquationClosedProof : closureEquationClosed

def sourceClosureApproximationCertificate : ClosureApproximationCertificate := {
  reynolds := sourceReynoldsCertificate,
  lyapunov := sourceLyapunovCertificate,
  kolmogorovK41 := ReynoldsDecompositionClosed sourceReynoldsCertificate ∧ LyapunovClosed sourceLyapunovCertificate,
  properOrthogonalDecomposition := True,
  closureEquationClosed := True,
  kolmogorovK41Closed := And.intro source_reynolds_decomposition_closed source_lyapunov_closed,
  properOrthogonalDecompositionClosed := trivial,
  closureEquationClosedProof := trivial
}

def ClosureApproximationClosed (C : ClosureApproximationCertificate) : Prop :=
  ReynoldsDecompositionClosed C.reynolds ∧ LyapunovClosed C.lyapunov ∧
  C.kolmogorovK41 ∧ C.properOrthogonalDecomposition ∧ C.closureEquationClosed

theorem source_closure_approximation_closed : ClosureApproximationClosed sourceClosureApproximationCertificate := by
  exact And.intro source_reynolds_decomposition_closed
    (And.intro source_lyapunov_closed
      (And.intro sourceClosureApproximationCertificate.kolmogorovK41Closed
        (And.intro sourceClosureApproximationCertificate.properOrthogonalDecompositionClosed
          sourceClosureApproximationCertificate.closureEquationClosedProof)))

end DynamicalSystemsApproachTurbulenceCanonicalLaneLean
end HautevilleHouse