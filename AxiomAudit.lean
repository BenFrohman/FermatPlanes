/-
Copyright (c) 2026 Benjamin Stanley Frohman. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Benjamin Stanley Frohman
-/

-- Axiom audit: prints the axioms of every theorem/lemma in the project.
-- CI fails unless each depends only on propext, Classical.choice, Quot.sound (or none).
import EasyArrow
import FermatDatum
import FermatIdentities
import FourFactorIdentity
import LinearPlanes
import Membership
import SexticPair

/-!
# AxiomAudit

Machine-checked Lean 4 module.
-/

#print axioms FermatPlanes.Z1_is_standard
#print axioms FermatPlanes.Z2_is_standard
#print axioms FermatPlanes.easyCl_eq_construct
#print axioms FermatPlanes.easyCl_is_section
#print axioms FermatPlanes.construct_id
#print axioms FermatPlanes.pair_vanishing
#print axioms FermatPlanes.pair_vanishing_neg
#print axioms FermatPlanes.pair_with_remainder
#print axioms FermatPlanes.quartic_in_Z1_factors
#print axioms FermatPlanes.quartic_in_Z2_factors
#print axioms FermatPlanes.four_factor_vanishing
#print axioms FermatPlanes.four_factor_with_remainder
#print axioms FermatPlanes.Coord.ofNat_toCtorIdx
#print axioms FermatPlanes.pairing_count_formula
#print axioms FermatPlanes.fermat_mem_Z1
#print axioms FermatPlanes.pair6_vanishing
#print axioms FermatPlanes.pair6_with_remainder
