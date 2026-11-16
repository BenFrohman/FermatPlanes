# Kernel certificate: FermatPlanes

This file records a reproducible machine check of the Lean 4 development in this repository. Lean does not issue a signed "official" certificate. What is recorded here is the exact commit and toolchain, the complete `lake build` log, a scan for `sorry`/`admit`/`native_decide`/`axiom`, the `#print axioms` result for every theorem the build produces, and a replay of every module through Lean's kernel with the toolchain's `leanchecker`. Each check can be rerun with the command at the end.

| Item | Value |
|---|---|
| Repository | https://github.com/BenFrohman/FermatPlanes |
| Certified commit | `eb8be76a39b58dd147b2c1d5d5143d395a713a6c` (branch `chore/kernel-certificate`) |
| Lean sources | identical to `main` at `6fa72236eb02cd7700907b8abe96666211381392`: no `.lean`, lakefile, manifest or toolchain file differs; the certified commit only adds CI and the scripts in `certificates/tools/` |
| lean-toolchain | `leanprover/lean4:v4.22.0` |
| Lean | Lean (version 4.22.0, x86_64-unknown-linux-gnu, commit ba2cbbf09d4978f416e0ebd1fceeebc2c4138c05, Release) |
| Mathlib | `79e94a093aff4a60fb1b1f92d9681e407124c2ca` (lake-manifest.json; inputRev `v4.22.0`) |
| Date (UTC) | 2026-11-16T19:22:24Z |
| CI run | https://github.com/BenFrohman/FermatPlanes/actions/runs/43938046178 |
| `lake build` | `Build completed successfully.` ([build.log](build.log)) |
| sorry / admit / native_decide / axiom scan | `RESULT: 0 hits` ([sorry-scan.txt](sorry-scan.txt)) |
| `#print axioms` | `AUDIT PASS: 30 theorems in 7 modules depend only on propext, Classical.choice, Quot.sound (or on no axioms)` ([axioms.txt](axioms.txt)) |
| Kernel replay (leanchecker) | `RESULT: 7 of 7 modules replayed through the kernel, 0 failures` ([leanchecker.txt](leanchecker.txt)) |

## What each check means

- **Build.** `lake build` of the default targets with the pinned toolchain. Mathlib comes from `lake exe cache get` (it is never rebuilt from source). The build elaborates every proof and sends each declaration to Lean's kernel.
- **Scan.** `certificates/tools/sorry_scan.py` strips comments and strings from every tracked `.lean` file and reports any `sorry`, `admit`, `native_decide` or `axiom` declaration. Result: RESULT: 0 hits.
- **Axioms.** `certificates/tools/gen_audit.py` imports all 7 built modules ([modules.txt](modules.txt)) and calls `Lean.collectAxioms`, the function behind `#print axioms`, on every theorem declared in them (30 theorems, auto-generated internal names excluded). `check_audit.py` fails unless each depends only on `propext`, `Classical.choice` and `Quot.sound`, or on no axioms. Raw output: [axioms.raw.txt](axioms.raw.txt); generated Lean file: [KernelCertificateAudit.lean.txt](KernelCertificateAudit.lean.txt).
- **Kernel replay.** checker: lean4checker tag v4.22.0 (0531c5e62c6bbc21af6c8b4adc2a16d201bf8b65), Main.lean prefix match -> exact match. For each module, the checker loads the module's imports from their `.olean` files and replays every declaration of that module through the kernel. The stock checker treats its argument as a module-name prefix and replays all matching modules in parallel, which runs out of memory on a root module, so it is run once per module with exact matching (the one-line patch is printed in [leanchecker.txt](leanchecker.txt)). The checker's own documentation describes it as a tool to detect environment hacking, not an independent external verifier; imported Mathlib and core declarations are trusted from their `.olean` files.

## Scope

The axiom result says the listed theorems are proved from Lean's standard axioms. It does not by itself say what the theorems mean; read the statements in the sources. Conditional theorems remain conditional on their hypotheses.

Full `#print axioms` output (verbatim from `axioms.txt`):

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
'FermatPlanes.Coord.z0.sizeOf_spec' does not depend on any axioms
'FermatPlanes.Coord.z1.sizeOf_spec' does not depend on any axioms
'FermatPlanes.Coord.z2.sizeOf_spec' does not depend on any axioms
'FermatPlanes.Coord.z3.sizeOf_spec' does not depend on any axioms
'FermatPlanes.Coord.z4.sizeOf_spec' does not depend on any axioms
'FermatPlanes.Coord.z5.sizeOf_spec' does not depend on any axioms
'FermatPlanes.LinearPlane.mk.inj' does not depend on any axioms
'FermatPlanes.LinearPlane.mk.injEq' depends on axioms: [propext]
'FermatPlanes.LinearPlane.mk.sizeOf_spec' does not depend on any axioms
'FermatPlanes.Pairing.mk.inj' does not depend on any axioms
'FermatPlanes.Pairing.mk.injEq' depends on axioms: [propext]
'FermatPlanes.Pairing.mk.sizeOf_spec' does not depend on any axioms
'FermatPlanes.pairing_count_formula' does not depend on any axioms
'FermatPlanes.fermat_mem_Z1' depends on axioms: [propext, Quot.sound]
'FermatPlanes.cofactor6.eq_1' does not depend on any axioms
'FermatPlanes.pair6_vanishing' depends on axioms: [propext, Quot.sound]
'FermatPlanes.pair6_with_remainder' depends on axioms: [propext, Quot.sound]
```

## Rebuild

```
git clone https://github.com/BenFrohman/FermatPlanes.git && cd FermatPlanes && git checkout eb8be76a39b58dd147b2c1d5d5143d395a713a6c && lake exe cache get && lake build && python3 certificates/tools/sorry_scan.py && python3 certificates/tools/gen_audit.py /tmp/KernelCertificateAudit.lean /tmp/modules.txt && lake env lean /tmp/KernelCertificateAudit.lean > /tmp/axioms.raw.txt && python3 certificates/tools/check_audit.py /tmp/axioms.raw.txt | tail -n 1
```
