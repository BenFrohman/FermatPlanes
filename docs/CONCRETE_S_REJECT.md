# Why the MvPolynomial `concrete_s` paste is not a CycleSection

Author: Benjamin Stanley Frohman (@BenFrohman).

The paste packages `(F, list of ideals)` and calls it `s`.
That function ignores `γ`. It returns the list you already handed it.

Further errors in that paste:

* Five coordinates `X0..X4` cut a hypersurface in `P^4`: a **threefold**,
  not a fourfold. The Fermat sextic *fourfold* is
  `z0^6+⋯+z5^6=0` in `P^5` (six variables).
* Two linear generators in `P^4` cut a plane of the ambient space;
  their intersection with a sextic threefold is not a surface on a fourfold.
* Coefficients `1/2` and `-1/2` are not a computed expansion of a Hodge class.
* `sextic_remainder_term` is not the division identity for `z^6+w^6`.
  The real remainder is `(1+ζ^6)w^6` after the degree-5 cofactor.
  See `SexticPair.lean`.

Do not import this wrapper into `Hodge.lean`.
