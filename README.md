# FermatPlanes

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.23652978.svg)](https://doi.org/10.5281/zenodo.23652978) [![License: Apache-2.0](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](LICENSE)

**Author:** Benjamin Stanley Frohman (@BenFrohman)
**Copyright:** (c) 2026 Benjamin Stanley Frohman.
**License:** Apache-2.0. See `LICENSE` and `COPYRIGHT`.

Easy-arrow planes on the Fermat quartic fourfold

    X : z₀^4 + ⋯ + z₅^4 = 0 ⊂ ℙ^5

with ζ^4 = -1. Remainder identity

    z^4 + w^4 = (z − ζ w)(cubic) + (1+ζ^4) w^4

vanishes on the locus ζ^4 = -1. This is **not** the Hodge conjecture
and **not** a global constructor.

## Sister repositories

- [HODGE](https://github.com/BenFrohman/HODGE) — fourfold Hodge sentence; CycleSection on named hosts; `general_fourfold` open
- [NoetherLefschetz](https://github.com/BenFrohman/NoetherLefschetz) — very general high-degree hosts; no extra classes
- [CubicFourfold](https://github.com/BenFrohman/CubicFourfold) — cubic Hodge numbers; Zucker cited
- [StandardConjectures](https://github.com/BenFrohman/StandardConjectures) — A/B/C/D skeleton
- [TateConjecture](https://github.com/BenFrohman/TateConjecture) — Tate sentence only
- [DerivedCategories](https://github.com/BenFrohman/DerivedCategories) — D^b notes
- [HODGE-DISPROOF](https://github.com/BenFrohman/HODGE-DISPROOF) — disproof *type*, not a disproof

Copies remain under `Hodge/Attempt/` in HODGE. They are not imported by `Hodge.lean`.

---
## Archival DOI & Cryptographic Provenance

- **Dedicated 1-to-1 Zenodo DOI:** [10.5281/zenodo.23652978](https://doi.org/10.5281/zenodo.23652978)
- **Author:** Benjamin Stanley Frohman (ORCID: [0009-0006-7068-3718](https://orcid.org/0009-0006-7068-3718))
- **License:** Apache License, Version 2.0 (`Copyright (c) 2026 Benjamin Stanley Frohman`)
- **Earliest Commit Provenance:** `0efda24706acd35a568d2e95141ac406b2a3de1d` (2026-09-21 04:30:49 AM CDT (UTC-5))
- **SealGuard SHA-256 Merkle Root:** `624fb43b93b4d4a1a40b36ac4226fc6c79475b179143c8b396df77bfa5484b76` (`PROVENANCE_MERKLE_ROOT.json`)
- **Titan Audit Certificate:** `audit/TITAN_AUDIT_CERTIFICATE.json` (Ed25519 key `b428fb72676f1c52`)
- **Scope & Scientific Boundary:** Proves the 'easy arrow' (explicit linear planes define algebraic cycles and therefore rational Hodge classes) and associated polynomial identities in Lean 4. Explicitly does not claim the converse Hodge Conjecture.
