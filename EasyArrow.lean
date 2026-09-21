/-
Copyright (c) 2026 Benjamin Stanley Frohman (@BenFrohman). Apache-2.0.
Authors: Benjamin Stanley Frohman (@BenFrohman)
-/
import LinearPlanes
import FermatDatum

/-!
# Easy arrow on the named Fermat planes

Z1 and Z2 are algebraic surfaces on the Fermat quartic.
Their classes are Hodge because they are algebraic.
That is the easy arrow on this two-plane span.

It is not the Aljovín–Movasati–Villaflor spanning statement.
It is not Hodge for every class on the Fermat quartic.
-/

namespace FermatPlanes

theorem Z1_is_standard : Z1.pairing = standardPairing := rfl
theorem Z2_is_standard : Z2.pairing = standardPairing := rfl

/-- Cycle class on the two-plane span: (a, b) stands for a[Z1] + b[Z2]. -/
def easyCl (a b : Rat) : Rat × Rat := (a, b)

theorem easyCl_is_section (a b : Rat) : easyCl a b = (a, b) := rfl

theorem easyCl_eq_construct (gamma : Rat × Rat) :
    easyCl gamma.1 gamma.2 = construct gamma :=
  rfl

end FermatPlanes
