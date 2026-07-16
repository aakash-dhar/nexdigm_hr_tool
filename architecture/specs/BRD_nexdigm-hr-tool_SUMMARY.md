# BRD Summary - Nexdigm Annual Increment Processing Application

Companion summary to BRD_nexdigm-hr-tool.md. This is a synthesized reading for orientation and planning; the verbatim file is the source of record. Captured 2026-07-16 from the BetaCraft "Our Understanding of Your BRD" page (password gated).

## What the product is

A controlled web application that replaces a spreadsheet-driven annual compensation exercise for about 1,500 employees across four countries (India, Poland, US, UAE). Performance ratings originate in DarwinBox; this app consumes them, runs the increment / promotion / bonus exercise, and hands final numbers back to payroll. The document is BetaCraft's restatement of Nexdigm's BRD plus a 25 June discovery call, produced so Nexdigm can confirm every requirement before scope is frozen. It is prepared by BetaCraft (Soni Technologies LLC) for Nexdigm HR & Finance, dated 14 July 2026.

## Scope shape (V1 vs Phase 2)

V1 runs on manual data upload and structured export, single global cycle at a time, desktop-first, Azure AD SSO login. Explicitly deferred to Phase 2 (by change order): DarwinBox bi-directional API integration, year-round retention/clawback tracking, full multi-currency consolidation with live FX, and advanced analytics dashboards.

## The end-to-end process (12 stages)

Define cycle; eligibility & exceptions; collect employee data; promotion recommendations; budget simulation; correction rules; increment processing; budget monitoring; MC approval; closure & letters; payroll input; special awards.

## The 23 requirements at a glance

Grouped into six functional areas:

- A - Setup, Masters & Access (AI01-AI05): cycle setup and governing dates; configurable masters (bands, grades, designations, ratings); year-one employee data intake (~1,500 x ~70 fields) with Practice-Head mapping; eligibility and committed cases; six roles with a leadership-data wall (row- and field-level access, recusal).
- B - Promotion & Budget Simulation (AI06-AI08): promotion recommendations governed by a credit system (0.5 / 1 / 2) and a PL to PH to HR to MC chain; budget simulation scenario engine; configurable rating grids, promotion percentages and correction rules.
- C - Increment & Bonus Processing (AI09-AI13): the calculation engine; corrections, bonus and the practice budget kitty; live budget monitoring and the over-budget rule; the currency / multi-country model; exception handling.
- D - Approvals & Workflow (AI14-AI15): the multi-level approval chain (two sequential workflows, promotion in Dec then increment in Mar); freeze, reopen and read-only behaviour.
- E - Closure, Outputs & Awards (AI16-AI20): reports and dashboards with slice-and-dice; increment letters; the immutable audit trail; MC award nominations; payroll input hand-off.
- F - Platform & Delivery (AI21-AI23): DarwinBox integration (Phase 2); non-functional requirements; deployment, hosting and confidential-data UAT.

## Confirmed anchor facts

- Review period = 1 Jan to 31 Dec; eligibility cut-off = 30 Jun; salary reference = CTC as on 31 Dec.
- Operational timeline = Oct to Apr.
- Promotion credits = 0.5 (within-band) / 1 (outside-band) / 2 (skip-level).
- Retention lock = 1 year (in-rule) / 2 years (out-of-rule).
- ~1,500 employees; 4 countries (IN / PL / US / UAE).
- Login = Azure AD SSO. Year 1 = template upload; DarwinBox integration = Phase 2.
- Standard increment = (CTC / total appraisal days) x base appraisal days x standard %; only the standard increment prorates by days. Increments stack additively; amounts round half-up on the final figure.

## Triage of the 151 review points

Across 23 requirements, 151 points were examined: 72 build as proposed (routine), 15 material assumptions to confirm, 14 data/values needed from the client, 8 scope decisions (priced levers), 13 for the client IT / DarwinBox vendor, 14 already-known / design-phase detail. There are 84 total points surfaced for confirmation.

## Priced scope levers (the "scope-watch" items)

These materially move the estimate and are each offered as an option or phase: AI07 simulation module, AI12 multi-currency depth (the single biggest swing), AI17 increment letters, AI19 MC award module, AI04/AI11 retention & clawback tracking, AI16 screen scope, AI23 design approach (fresh vs match old UI).

## Biggest open decisions

The two that move the number most are the currency & FX model (AI12) and the authoritative rating grids (AI08); nailing those firms the estimate. Cross-cutting high-priority decisions needed from Nexdigm: the org-wide currency & FX policy (Finance / IT), data residency given Poland/EU-GDPR vs India / US / UAE (IT / Legal), and audit-trail retention period (HR / Compliance).

## Notable ambiguities BetaCraft flagged in the source BRD

The BRD states the over-budget rule two ways (hard block in Step 7 vs "Exception - Pending Approval" in Step 8); the band/grade ladder does not fully reconcile (ends at 2A, omits Band 1); the rating scale differs between the grid (CE / M+ / ME / M- / MM) and the "1-5" mentioned on the call; the Step-7 read-only freeze conflicts with Step-8 status-to-nil rules; a "Co-CEO Remarks" field implies a seventh role not in the six modelled roles; and Table 3's US/UAE grid columns appear transposed. BetaCraft built to its proposed reading in each case and surfaced the question rather than guessing silently.

## Key risks called out

Validating with confidential compensation data is named as the single biggest delivery risk and is what stalled the predecessor build (AI23). The currency model is the single biggest unpriced unknown (AI12). Hosting model and commercial structure are a linked decision tied to data residency.
