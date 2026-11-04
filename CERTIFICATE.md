# Verification certificate

**Paper:** Factorization Identities and Plane-Ideal Membership for the Fermat Quartic Fourfold, Formalized in Lean~4
**Author:** Benjamin Stanley Frohman (frohmanbenjamin@gmail.com)
**PDF:** `paper/FermatPlanes_Technical_Monograph_2026.pdf`

| Item | Value |
|---|---|
| Verified commit | `a8f4b5ec2ec53d7fcdf29bb37b79a961d4b460ba` |
| Lean toolchain | `leanprover/lean4:v4.22.0` |
| Mathlib | v4.22.0 (commit 79e94a093aff4a60fb1b1f92d9681e407124c2ca) |
| CI run (build + axiom audit + no-sorry scan, passed) | https://github.com/BenFrohman/FermatPlanes/actions/runs/41794842261 |
| Source tarball SHA-256 (verified commit) | `cd2b240123e89b8e96939a3b53968fe5b44f10bdf974714c17096972fb1c6ed5` |

- `lake build` succeeds with the pinned toolchain.
- No `sorry`, no `admit`, no `native_decide`, and no user-declared `axiom` in the Lean sources (enforced in CI by `scripts/check_no_sorry.py`).
- All 17 audited theorems depend only on Lean's standard axioms `propext`, `Classical.choice`, `Quot.sound` (or a subset).

## `#print axioms` output (`AxiomAudit.lean`)

```
'FermatPlanes.Z1_is_standard' depends on axioms: [propext]
'FermatPlanes.Z2_is_standard' depends on axioms: [propext]
'FermatPlanes.easyCl_eq_construct' depends on axioms: [propext]
'FermatPlanes.easyCl_is_section' depends on axioms: [propext]
'FermatPlanes.construct_id' depends on axioms: [propext]
'FermatPlanes.pair_vanishing' depends on axioms: [propext, Quot.sound]
'FermatPlanes.pair_vanishing_neg' depends on axioms: [propext, Quot.sound]
'FermatPlanes.pair_with_remainder' depends on axioms: [propext, Quot.sound]
'FermatPlanes.quartic_in_Z1_factors' depends on axioms: [propext, Quot.sound]
'FermatPlanes.quartic_in_Z2_factors' depends on axioms: [propext, Quot.sound]
'FermatPlanes.four_factor_vanishing' depends on axioms: [propext, Quot.sound]
'FermatPlanes.four_factor_with_remainder' depends on axioms: [propext, Quot.sound]
'FermatPlanes.Coord.ofNat_toCtorIdx' does not depend on any axioms
'FermatPlanes.pairing_count_formula' does not depend on any axioms
'FermatPlanes.fermat_mem_Z1' depends on axioms: [propext, Quot.sound]
'FermatPlanes.pair6_vanishing' depends on axioms: [propext, Quot.sound]
'FermatPlanes.pair6_with_remainder' depends on axioms: [propext, Quot.sound]
```

The paper's claims correspond one-to-one with the Lean declarations listed in its "Correspondence between claims and Lean declarations" section; the Lean statements are the source of truth.
