/-
Copyright (c) 2026 Benjamin Stanley Frohman. Released under Apache-2.0.
Authors: Benjamin Stanley Frohman (@BenFrohman)
-/
import Mathlib.RingTheory.Ideal.Basic
import Mathlib.Tactic.Ring
import FermatIdentities

/-!
# Easy-arrow membership

F lies in the plane ideal when ζ^4 = -1.
Not (J : P). Not a CycleSection.
-/

namespace FermatPlanes

variable {R : Type*} [CommRing R]

def fermatPoly (z0 z1 z2 z3 z4 z5 : R) : R :=
  z0 ^ 4 + z1 ^ 4 + z2 ^ 4 + z3 ^ 4 + z4 ^ 4 + z5 ^ 4

def planeZ1 (z0 z1 z2 z3 z4 z5 ζ : R) : Ideal R :=
  Ideal.span {z0 - ζ * z1, z2 - ζ * z3, z4 - ζ * z5}

theorem fermat_mem_Z1 (z0 z1 z2 z3 z4 z5 ζ : R) (hζ : ζ ^ 4 = -1) :
    fermatPoly z0 z1 z2 z3 z4 z5 ∈ planeZ1 z0 z1 z2 z3 z4 z5 ζ := by
  have hF := quartic_in_Z1_factors z0 z1 z2 z3 z4 z5 ζ hζ
  unfold fermatPoly planeZ1
  rw [hF]
  refine Ideal.add_mem _ (Ideal.add_mem _ ?_ ?_) ?_
  · exact Ideal.mul_mem_right _ _ (Ideal.subset_span (by simp))
  · exact Ideal.mul_mem_right _ _ (Ideal.subset_span (by simp))
  · exact Ideal.mul_mem_right _ _ (Ideal.subset_span (by simp))

end FermatPlanes
