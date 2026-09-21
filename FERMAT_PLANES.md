# Fermat quartic planes

Easy arrow on a special host. Not the Hodge conjecture.

## Remainder identity (any commutative ring)

    z^4 + w^4
      = (z - ζ w)(z^3 + ζ z^2 w + ζ^2 z w^2 + ζ^3 w^3)
        + (1 + ζ^4) w^4.

When ζ^4 = -1 the remainder is 0.
The opposite linear form uses -ζ:

    z^4 + w^4
      = (z + ζ w)(z^3 - ζ z^2 w + ζ^2 z w^2 - ζ^3 w^3).

## Planes on X : ∑_{i=0}^5 z_i^4 = 0 ⊂ ℙ^5

    Z₁ = V(z₀ - ζ z₁, z₂ - ζ z₃, z₄ - ζ z₅),
    Z₂ = V(z₀ + ζ z₁, z₂ - ζ z₃, z₄ - ζ z₅).

Three pairs put F in I(Z₁) and I(Z₂). Lean: `FermatIdentities.lean`.
Classes [Z_i] are Hodge because they are algebraic (easy arrow).

## Scope sentence

Noether–Lefschetz is recorded as very general *high-degree*, not as
“a very general quartic.” Fermat is the special host where the planes exist.
