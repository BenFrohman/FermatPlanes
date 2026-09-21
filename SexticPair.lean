/-
Copyright (c) 2026 Benjamin Stanley Frohman (@BenFrohman). Apache-2.0.
Authors: Benjamin Stanley Frohman (@BenFrohman)

Target: Fermat sextic host sum z_i^6 = 0 in P^5.
Univariate pair identity only. Not EXTRA_CLASS_SEXTIC.
Not CycleSection on an unnamed fourfold.
`HodgeConjecture.general_fourfold` stays a Prop.
-/
import Mathlib.Tactic.Ring

/-!
# Degree-6 pair identity (Fermat host only)

    z^6 + w^6
      = (z - ζ w)(∑_{k=0}^5 ζ^k z^{5-k} w^k) + (1 + ζ^6) w^6

Vanishes at `ζ^6 = -1`. One pair of sixth powers in a principal ideal.

## Termination boundary

`pair6_with_remainder` and `pair6_vanishing` are the last theorems in this
file. The univariate factorization **stops here**.

This file does not:
* cut a linear plane (three independent linear forms in `P^5`);
* treat two linear forms as a surface on `X` (two forms cut a `P^3`);
* promote `Z1 ⊔ Z2` to a `CycleSection`;
* upgrade invertibility of `1-ζη` or `1+ζ^6` to a Hodge class;
* supply a term of `HodgeConjecture.general_fourfold`.

Ideal membership for named planes stays in `Membership.lean` (quartic host).
Do not map this identity to a general splitting rule `s(X, γ)`.
-/

namespace FermatPlanes

variable {R : Type*} [CommRing R]

def cofactor6 (z w ζ : R) : R :=
  z^5 + ζ * z^4 * w + ζ^2 * z^3 * w^2 + ζ^3 * z^2 * w^3
    + ζ^4 * z * w^4 + ζ^5 * w^5

/-- Univariate division identity. Remainder `(1+ζ^6)w^6`. -/
theorem pair6_with_remainder (z w ζ : R) :
    z^6 + w^6 = (z - ζ * w) * cofactor6 z w ζ + (1 + ζ^6) * w^6 := by
  simp [cofactor6]
  ring

/-- Vanishing of the remainder at `ζ^6 = -1`.
    **Termination:** no further factorization is proved in this file. -/
theorem pair6_vanishing (z w ζ : R) (h : ζ^6 = -1) :
    z^6 + w^6 = (z - ζ * w) * cofactor6 z w ζ := by
  have hr := pair6_with_remainder (R := R) z w ζ
  rw [h] at hr
  simpa using hr

end FermatPlanes
