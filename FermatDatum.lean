/-
Copyright (c) 2026 Benjamin Stanley Frohman (@BenFrohman). Apache-2.0.
Authors: Benjamin Stanley Frohman (@BenFrohman)
-/
import Mathlib.LinearAlgebra.Basic

/-!
# Linear shadow of two Fermat planes

Same shape as `Hodge.Classical.kleinQuadric`: `Datum` on `Rat × Rat`.
Coefficients `(a, b)` stand for `a [Z₁] + b [Z₂]` when `ζ^4 = -1`.

This is not `[IsVariety D] → CycleSection D`.
This is not a span of all of Hdg² of the Fermat quartic.
-/

namespace FermatPlanes

def fermatTwoPlanes : Type := ℚ × ℚ

def construct (gamma : ℚ × ℚ) : ℚ × ℚ := gamma

theorem construct_id (gamma : ℚ × ℚ) : construct gamma = gamma := rfl

/-- Numerical pairing on the two-plane span, same matrix as Klein. -/
def pairing : (ℚ × ℚ) → (ℚ × ℚ) → ℚ
  | (a, b), (a', b') => a * a' + b * b'

end FermatPlanes
