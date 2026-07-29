import HautevilleHouse.CharacteristicPMethodsFrobeniusEndomorphismLemmaCanonicalLaneLean.FrobeniusKernel

namespace HautevilleHouse
namespace CharacteristicPMethodsFrobeniusEndomorphismLemmaCanonicalLaneLean

structure FrobeniusTraceMapPackage {F : FrobeniusEndomorphismPackage}
    (K : FrobeniusKernelPackage F) where
  traceForm : F.field → F.field → F.field
  bilinear : Prop
  nondegenerate : Prop
  frobeniusInvariance : Prop
  bilinearTerm : bilinear
  nondegenerateTerm : nondegenerate
  frobeniusInvarianceTerm : frobeniusInvariance

structure FrobeniusTraceMapEvidence {F : FrobeniusEndomorphismPackage}
    {K : FrobeniusKernelPackage F} (T : FrobeniusTraceMapPackage K) where
  bilinearClosed : T.bilinear
  nondegenerateClosed : T.nondegenerate
  frobeniusInvarianceClosed : T.frobeniusInvariance

def FrobeniusTraceMapClosed {F : FrobeniusEndomorphismPackage}
    {K : FrobeniusKernelPackage F} (T : FrobeniusTraceMapPackage K) : Prop :=
  T.bilinear ∧ T.nondegenerate ∧ T.frobeniusInvariance

theorem frobenius_trace_map_closed_from_evidence {F : FrobeniusEndomorphismPackage}
    {K : FrobeniusKernelPackage F} (T : FrobeniusTraceMapPackage K)
    (E : FrobeniusTraceMapEvidence T) : FrobeniusTraceMapClosed T := by
  exact And.intro E.bilinearClosed
    (And.intro E.nondegenerateClosed E.frobeniusInvarianceClosed)

end CharacteristicPMethodsFrobeniusEndomorphismLemmaCanonicalLaneLean
end HautevilleHouse