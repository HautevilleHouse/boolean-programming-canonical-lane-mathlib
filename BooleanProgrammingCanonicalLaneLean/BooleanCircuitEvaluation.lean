import BooleanProgrammingCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BooleanProgrammingCanonicalLaneLean

structure CircuitEvaluationPackage where
  circuitType : Type
  inputType : Type
  outputType : Type
  evaluationFunction : Prop
  polynomialTime : Prop
  correctness : Prop

structure CircuitEvaluationEvidence (C : CircuitEvaluationPackage) where
  evaluationFunctionClosed : C.evaluationFunction
  polynomialTimeClosed : C.polynomialTime
  correctnessClosed : C.correctness

def CircuitEvaluationClosed (C : CircuitEvaluationPackage) : Prop :=
  C.evaluationFunction ∧ C.polynomialTime ∧ C.correctness

theorem circuit_evaluation_closed_from_evidence (C : CircuitEvaluationPackage) (E : CircuitEvaluationEvidence C) : CircuitEvaluationClosed C := by
  exact And.intro E.evaluationFunctionClosed (And.intro E.polynomialTimeClosed E.correctnessClosed)

end BooleanProgrammingCanonicalLaneLean
end HautevilleHouse