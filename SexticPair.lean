/-
Copyright (c) 2026 Benjamin Stanley Frohman (@BenFrohman). Apache-2.0.
Authors: Benjamin Stanley Frohman (@BenFrohman)
-/
import Mathlib.Tactic.Ring

/-!
# Degree-6 pair identity

    z^6 + w^6
      = (z - ζ w)(∑_{k=0}^5 ζ^k z^{5-k} w^k) + (1 + ζ^6) w^6

When `ζ^6 = -1` the remainder vanishes. Membership, not Chow, not general `s`.
Fermat sextic fourfold: six coordinates in `P^5`.
-/

namespace FermatPlanes

variable {R : Type*} [CommRing R]

def cofactor6 (z w ζ : R) : R :=
  z^5 + ζ * z^4 * w + ζ^2 * z^3 * w^2 + ζ^3 * z^2 * w^3
    + ζ^4 * z * w^4 + ζ^5 * w^5

theorem pair6_with_remainder (z w ζ : R) :
    z^6 + w^6 = (z - ζ * w) * cofactor6 z w ζ + (1 + ζ^6) * w^6 := by
  simp [cofactor6]
  ring

theorem pair6_vanishing (z w ζ : R) (h : ζ^6 = -1) :
    z^6 + w^6 = (z - ζ * w) * cofactor6 z w ζ := by
  have hr := pair6_with_remainder (R := R) z w ζ
  rw [h] at hr
  simpa using hr

end FermatPlanes
