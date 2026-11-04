/-
Copyright (c) 2026 Benjamin Stanley Frohman. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Benjamin Stanley Frohman
-/
import Mathlib.Tactic.Ring
import Mathlib.Tactic.LinearCombination

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
  rw [four_factor_with_remainder, hζ]
  ring

end FermatPlanes
