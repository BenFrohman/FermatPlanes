/-
Copyright (c) 2026 Benjamin Stanley Frohman (@BenFrohman). Apache-2.0.
Authors: Benjamin Stanley Frohman (@BenFrohman)
-/

/-!
# Labels for linear planes on the Fermat quartic

A plane is a pairing of six coordinates into three pairs, plus three
roots of `X^4 + 1 = 0`. This file names that list. It does not prove
that the classes span Hdg²; that is Aljovin–Movasati–Villaflor.
-/

namespace FermatPlanes

/-- The six homogeneous coordinates. -/
inductive Coord | z0 | z1 | z2 | z3 | z4 | z5
  deriving DecidableEq, Repr

/-- Three disjoint pairs covering all six coordinates. -/
structure Pairing where
  left0 : Coord
  right0 : Coord
  left1 : Coord
  right1 : Coord
  left2 : Coord
  right2 : Coord

/-- Index `0,1,2,3` for the four roots of `μ^4 = -1`. -/
def RootIdx := Fin 4

structure LinearPlane where
  pairing : Pairing
  μ : RootIdx
  ν : RootIdx
  ρ : RootIdx

def standardPairing : Pairing :=
  { left0 := .z0, right0 := .z1
    left1 := .z2, right1 := .z3
    left2 := .z4, right2 := .z5 }

/-- The two planes already used for the remainder identity. -/
def Z1 : LinearPlane := { pairing := standardPairing, μ := 0, ν := 0, ρ := 0 }
def Z2 : LinearPlane := { pairing := standardPairing, μ := 1, ν := 0, ρ := 0 }

theorem pairing_count_formula : 15 * 4 ^ 3 = 960 := by decide

end FermatPlanes
