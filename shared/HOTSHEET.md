# HOTSHEET - Blockers, Risks, Action Items

Seeded 2026-07-16 from the BRD understanding doc (architecture/specs/BRD_nexdigm-hr-tool.md). Priority order kept; source references in brackets.

## Blockers
- Scope is not yet frozen. 84 points await client confirmation before the engineering spec and test cases can be built. [Cross-source & status]
- Firm estimate is blocked on the two biggest number-movers: the currency/FX model (AI12) and the authoritative rating grids (AI08).

## Risks (register)
- R1 - Confidential-data UAT (High). Validating with real compensation data is the single biggest delivery risk and is what stalled the predecessor build. Mitigation to be agreed with client IT/security (masked, synthetic, or restricted client-only environment). [AI23]
- R2 - Currency and FX model undefined (High). The BRD prices only in INR and stores amounts as bare numbers, though the org spans four currencies. Biggest unpriced unknown. [AI12]
- R3 - Data residency (High). Poland/EU-GDPR vs India / US / UAE constrains the hosting region; undecided. [Cross-cutting]
- R4 - Band/grade ladder does not reconcile (Med). The BRD ladder ends at 2A and omits Band 1; the within/outside/skip classification rule is internally inconsistent. [AI02, AI06]
- R5 - Rating scale ambiguity (Med). The grid uses CE / M+ / ME / M- / MM; the call referenced a 1-5 scale. Authoritative scale to confirm. [AI02]
- R6 - Contradictory rules in the BRD (Med). Over-budget rule stated two ways (Step 7 hard block vs Step 8 "Exception - Pending Approval", AI11); freeze read-only vs status-to-nil (Step 7 vs Step 8, AI15). Proposed reconciliations pending confirmation.
- R7 - Unpriced scope levers (Med). Simulation module (AI07), increment letters (AI17), MC awards (AI19), screen scope (AI16), multi-currency depth (AI12) and retention/clawback (AI04/AI11) are priced options not yet chosen. [Scope-watch]

## Action Items
Open decisions routed to owners (from the BRD understanding doc):
- Currency and FX model - Finance / IT (High). [AI12]
- Authoritative rating, increment and bonus grids - Client (High). [AI08]
- Data residency - IT / Legal (High). [Cross-cutting]
- Audit-trail and historic-cycle retention period - HR / Compliance (High). [AI18]
- Complete Band/Grade lattice plus classification rule - Client. [AI02, AI06]
- Correction-rule thresholds and caps - Client. [AI08]
- Corrected ~70-field data dictionary, unique employee key, upload template and masked sample - Client. [AI03]
- Definition of 'leadership' for the data wall, and the Co-CEO role/touchpoint question - Client / HR. [AI05]
- Committed-cases mechanics (override, add, or floor) - Client. [AI04]
- Confirm the three amber proposed answers: rounding, notifications, historic data depth - HR / Finance. [Cross-cutting]
- DarwinBox Phase-2 API details (objects, auth, sandbox, rate limits, field mappings, who pays) - Client IT / vendor. [AI21, AI20]
