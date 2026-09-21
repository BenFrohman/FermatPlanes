/-
Copyright (c) 2026 Benjamin Stanley Frohman. Released under Apache-2.0.
Authors: Benjamin Stanley Frohman (@BenFrohman)
-/
import Mathlib.Tactic.Ring

/-!
# Four-factor writing of x^4 + y^4

A second factorization. Does not replace `pair_with_remainder`.
Not a colon-ideal constructor. Not Hodge.
-/

namespace FermatPlanes

variable {R : Type*} [CommRing R]

/-- Four linear factors versus x^4 + y^4, with explicit remainder. -/
theorem four_factor_with_remainder (x y ζ : R) :
    (x + ζ * y) * (x - ζ * y) * (x + ζ ^ 3 * y) * (x - ζ ^ 3 * y) =
      x ^ 4 + y ^ 4 -
        (1 + ζ ^ 4) * (ζ ^ 2 * x ^ 2 * y ^ 2 - (ζ ^ 4 - 1) * y ^ 4) := by
  ring

theorem four_factor_vanishing (x y ζ : R) (hζ : ζ ^ 4 = -1) :
    (x + ζ * y) * (x - ζ * y) * (x + ζ ^ 3 * y) * (x - ζ ^ 3 * y) =
      x ^ 4 + y ^ 4 := by
  have h := four_factor_with_remainder x y ζ
  simp [hζ] at h
  linarith  -- wait, use ring after rw
  -- rewrite path:
  -- actually after hζ, remainder coefficient 0.
  convert h using 1
  rw [hζ]
  ring

end FermatPlanes
