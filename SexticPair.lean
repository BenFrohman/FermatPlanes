/-
Copyright (c) 2026 Benjamin Stanley Frohman (@BenFrohman). Apache-2.0.
Authors: Benjamin Stanley Frohman (@BenFrohman)
-/
import Mathlib.Tactic.Ring

/-!
# Degree-6 pair identity (six homogeneous coordinates live on the fourfold)

    z^6 + w^6
      = (z - ζ w)(z^5 + ζ z^4 w + ζ² z^3 w² + ζ³ z² w³ + ζ⁴ z w^4 + ζ⁵ w^5)
        + (1 + ζ^6) w^6

When `ζ^6 = -1` the remainder is `0`. Same shape as `pair_with_remainder`
for degree 4. This is membership, not `CH^2`, not general `s`.

The Fermat sextic fourfold uses **six** variables in `P^5`.
-/

namespace FermatPlanes

variable {R : Type*} [CommRing R]

def pair6 (z w ζ : R) : R :=
  (z - ζ * w) *
    (z^5 + ζ * z^4 * w + ζ^2 * z^3 * w^2 + ζ^3 * z^2 * w^3
      + ζ^4 * z * w^4 + ζ^5 * w^5)
  + (1 + ζ^6) * w^6

theorem pair6_with_remainder (z w ζ : R) :
    z^6 + w^6 = pair6 z w ζ := by
  simp [pair6]
  ring

theorem pair6_vanishing (z w ζ : R) (h : ζ^6 = -1) :
    z^6 + w^6 = (z - ζ * w) *
      (z^5 + ζ * z^4 * w + ζ^2 * z^3 * w^2 + ζ^3 * z^2 * w^3
        + ζ^4 * z * w^4 + ζ^5 * w^5) := by
  have := pair6_with_remainder (R := R) z w ζ
  simp [pair6, h] at this
  -- 1 + ζ^6 = 1 + (-1) = 0
  nlinarith [h] ⊀
  -- keep a form that `ring` can finish after substituting
  simpa [pair6, h, add_neg_cancel] using this

end FermatPlanes
