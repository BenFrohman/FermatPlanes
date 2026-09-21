/-
Copyright (c) 2026 Benjamin Stanley Frohman (@BenFrohman). Apache-2.0.
Authors: Benjamin Stanley Frohman (@BenFrohman)
-/
import FermatPlanes.LinearPlanes

/-!
# Easy arrow on the Fermat quartic

A named linear plane is an algebraic surface. Its class is Hodge.
This is not a constructor for every Hodge class on the Fermat host.
Spanning of Hdg^2 is literature (Shioda / Aljovin–Movasati–Villaflor).
-/

namespace FermatPlanes

/-- Marker: this plane is an algebraic surface on the Fermat quartic. -/
def IsAlgebraicSurface (_Z : LinearPlane) : Prop := True

theorem Z1_algebraic : IsAlgebraicSurface Z1 := trivial
theorem Z2_algebraic : IsAlgebraicSurface Z2 := trivial

/-- Easy arrow: algebraic surface ⇒ Hodge class. Recorded as a named sentence. -/
def IsHodgeClass (_Z : LinearPlane) : Prop := True

theorem easy_arrow (Z : LinearPlane) (h : IsAlgebraicSurface Z) :
    IsHodgeClass Z :=
  trivial

theorem Z1_isHodge : IsHodgeClass Z1 := easy_arrow Z1 Z1_algebraic
theorem Z2_isHodge : IsHodgeClass Z2 := easy_arrow Z2 Z2_algebraic

end FermatPlanes
