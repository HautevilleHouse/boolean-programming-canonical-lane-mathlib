import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BooleanProgrammingCanonicalLaneLean

structure BooleanAlgebraPackage where
  carrier : Type u
  zeroElement : carrier
  oneElement : carrier
  meetOp : carrier → carrier → carrier
  joinOp : carrier → carrier → carrier
  complementOp : carrier → carrier
  meetAssoc : Prop
  meetComm : Prop
  meetAbsorb : Prop
  joinAssoc : Prop
  joinComm : Prop
  joinAbsorb : Prop
  distributive : Prop
  complementLeft : Prop
  complementRight : Prop

def BooleanAlgebraClosed (B : BooleanAlgebraPackage) : Prop :=
  B.meetAssoc ∧ B.meetComm ∧ B.meetAbsorb ∧
  B.joinAssoc ∧ B.joinComm ∧ B.joinAbsorb ∧
  B.distributive ∧ B.complementLeft ∧ B.complementRight

structure BooleanAlgebraEvidence (B : BooleanAlgebraPackage) where
  meetAssocClosed : B.meetAssoc
  meetCommClosed : B.meetComm
  meetAbsorbClosed : B.meetAbsorb
  joinAssocClosed : B.joinAssoc
  joinCommClosed : B.joinComm
  joinAbsorbClosed : B.joinAbsorb
  distributiveClosed : B.distributive
  complementLeftClosed : B.complementLeft
  complementRightClosed : B.complementRight

theorem boolean_algebra_closed_from_evidence (B : BooleanAlgebraPackage) (E : BooleanAlgebraEvidence B) :
    BooleanAlgebraClosed B := by
  exact And.intro E.meetAssocClosed
    (And.intro E.meetCommClosed
      (And.intro E.meetAbsorbClosed
        (And.intro E.joinAssocClosed
          (And.intro E.joinCommClosed
            (And.intro E.joinAbsorbClosed
              (And.intro E.distributiveClosed
                (And.intro E.complementLeftClosed E.complementRightClosed)))))))

end BooleanProgrammingCanonicalLaneLean
end HautevilleHouse
