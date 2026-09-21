# Linear planes on the Fermat quartic fourfold

Author: Benjamin Stanley Frohman (@BenFrohman).

Host: `X = { z0^4 + … + z5^4 = 0 } ⊂ P^5`.
This is **one** fourfold. Not `general_fourfold`.

## Family

A standard linear plane: choose a pairing of `{0,1,2,3,4,5}` into three pairs
`(i,j), (k,ℓ), (p,q)` (15 pairings) and roots `μ,ν,ρ` with `μ^4 = ν^4 = ρ^4 = -1`
(4 choices each). Then

    z_i = μ z_j,   z_k = ν z_ℓ,   z_p = ρ z_q

is a plane on `X`. Count of this list: `15 × 4³ = 960`.

These classes are linearly dependent in `H^4`. The two planes `Z1, Z2` already
in this repo are the case pairing `(0,1),(2,3),(4,5)` with
`(μ,ν,ρ) = (ζ,ζ,ζ)` and `(-ζ,ζ,ζ)`.

## What literature supplies (not proved in this repo)

Shioda / Ran: for degree `m = 4`, linear spaces generate the space of Hodge
cycles on this Fermat fourfold (rational Hodge).
Aljovin–Movasati–Villaflor, J. Symbolic Comput. 2019 / arXiv:1711.02628:
linear cycles generate the *lattice* of Hodge cycles for the Fermat quartic
and quintic fourfolds (integral Hodge on those two hosts).

We do not rerun their elementary-divisor computation.

## What this is not

- A `CycleSection` for every fourfold
- An `IsVariety` instance in `BenFrohman/HODGE`
- A claim that the 960 listed planes are a basis (they are a spanning *set*
  only after the AMV theorem, and they are not independent)
