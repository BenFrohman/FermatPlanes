# Fermat quartic equations and the linear-plane list

Author: Benjamin Stanley Frohman (@BenFrohman).

## Host equation

    X : z0^4 + z1^4 + z2^4 + z3^4 + z4^4 + z5^4 = 0  ⊂ P^5.

## Official AMV linear cycle (n=4, d=4)

Aljovin–Movasati–Villaflor, arXiv:1711.02628, display (2):

    x_{b0} - ζ_8^{1+2 a1} x_{b1} = 0
    x_{b2} - ζ_8^{1+2 a3} x_{b3} = 0
    x_{b4} - ζ_8^{1+2 a5} x_{b5} = 0

ζ_8 primitive 8th root of unity. a_i ∈ {0,1,2,3}.
ζ_8^{1+2a} runs through the four roots of μ^4 = -1.
Distinct cycles: b0=0 and for even i, b_i is the smallest remaining index.

Count: N = 1·3·5 · 4^3 = 960.

## The 15 pairings of {0,1,2,3,4,5}

1. (0,1)(2,3)(4,5)
2. (0,1)(2,4)(3,5)
3. (0,1)(2,5)(3,4)
4. (0,2)(1,3)(4,5)
5. (0,2)(1,4)(3,5)
6. (0,2)(1,5)(3,4)
7. (0,3)(1,2)(4,5)
8. (0,3)(1,4)(2,5)
9. (0,3)(1,5)(2,4)
10. (0,4)(1,2)(3,5)
11. (0,4)(1,3)(2,5)
12. (0,4)(1,5)(2,3)
13. (0,5)(1,2)(3,4)
14. (0,5)(1,3)(2,4)
15. (0,5)(1,4)(2,3)

Each pairing × 4^3 root choices = 960 labeled planes.
Z1, Z2 in this repo are pairing 1 with (ζ,ζ,ζ) and (-ζ,ζ,ζ).

## Official AMV theorem (JSC 2019 / arXiv:1711.02628, Theorem 1)

For (n,d) in their Table 1, the topological classes of P^{n/2}_{a,b}
generate the lattice V_n^d ⊂ H_n(X,Z). When d is prime, or d=4, or
gcd(d,(n+1)!)=1, this lattice is the Hodge lattice, so integral Hodge holds.
This includes (n,d)=(4,4) and (4,5).

For (4,4): rank 142, elementary divisors
+1^100 · 2^2 · 4^4 · 8^30 · 16^4 · 32^2.

The intersection matrices and Smith forms are produced by their code
(github.com/Sorombo/Integral_Hodge_Conjecture_Repository). They are not a
hand list of 142 rationals for an arbitrary class γ.

## Not imported from NoetherLefschetz

NL is the opposite locus: very general high-degree X has Hdg^2 = Q h^2.
Fermat is special. Do not borrow the NL vacuous line as this constructor.
