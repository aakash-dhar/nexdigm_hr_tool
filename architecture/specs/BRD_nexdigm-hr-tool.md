# BRD - Annual Increment Processing Application (Nexdigm)

> Source of record. This is the full verbatim capture of the BetaCraft "Our Understanding of Your BRD" document for the Nexdigm Annual Increment Processing tool, scraped from the gated site on 2026-07-16.
>
> Provenance: https://betacraft.github.io/nexdigm-hr-increment-tool/ (password gated).
> Normalization: the source uses em-dashes and en-dashes as separators. Per repo convention (no em-dashes) these have been rendered as regular hyphens. No wording was changed. All figures, formulas, and symbols (divide, multiply, minus, arrow) are preserved as in the source.

## Document metadata (from page header)

- Banner: BetaCraft x Nexdigm
- Eyebrow: OUR UNDERSTANDING OF YOUR BRD - FOR CONFIRMATION
- Title: Annual Increment Processing Application - what we understood you need
- Intro: This is our detailed restatement of your Business Requirements Document, built directly from your BRD and the discovery call. It exists so your team can confirm, in one place, that we have understood every requirement correctly before we lock scope and build.
- PREPARED FOR: Nexdigm - HR & Finance
- PREPARED BY: BetaCraft (Soni Technologies LLC)
- SOURCE: BRD + discovery call
- REQUIREMENTS: 23 - six groups
- DATE: 14 July 2026

Page footer (provenance): BetaCraft (BETACRAFT PVT. LTD. / Soni Technologies LLC) - Our understanding of the Annual Increment Processing Application BRD - 14 July 2026 - for confirmation by your team. Unlock Growth through Custom Software - betacraft.io - mayuresh@betacraft.io

---

## How to read this - and what we're asking

You asked us to review the Requirement Document and confirm our understanding covers everything. This document is that check. Each requirement card shows a one-line statement, our understanding in plain language, and a status chip; the Full detail panel opens the business acceptance criteria, the source & cross-source check, and the questions to resolve before freeze.

What we'd love from your team. Skim each requirement. Where our understanding matches, no action. Where it's off or incomplete, tell us - that's exactly what this is for. The 84 points to confirm are surfaced per card and summarised in Cross-check & status.

Built from source, not from a summary. To avoid drift, every requirement here was re-derived from your BRD and the discovery-call transcript, then interrogated across 16 structured review lenses. Detailed test cases and the full engineering spec come in the next phase, once these items are confirmed and scope is frozen.

### Legend

- MVP - in V1
- PHASE 2 - deferred
- LOGIC CAPTURED - deep logic extracted
- COMPLIANCE - regulated / audit
- scope-watch - priced lever

## How to read the sources

This understanding is built from the two documents you shared - your BRD (Word) and the discovery-call transcript (25 Jun). Every item cites which document and the exact step, table or field it comes from, so you can find it. (Any UI designs / the prior tool's "freeze PDF" mentioned on the call are not yet with us; where a card depends on them, that is flagged.)

## The end-to-end process we understood

A controlled web application that replaces the spreadsheet-driven annual compensation exercise for ~1,500 employees across four countries. Performance ratings continue to originate in DarwinBox; this application consumes them, runs the exercise, and hands final numbers back for payroll.

### The twelve stages

1. Define cycle
2. Eligibility & exceptions
3. Collect employee data
4. Promotion recommendations
5. Budget simulation
6. Correction rules
7. Increment processing
8. Budget monitoring
9. MC approval
10. Closure & letters
11. Payroll input
12. Special awards

### Post-launch features (Phase 2 - by change order)

These sit on top of the V1 platform rather than changing its core, so they can be added cleanly later; we'll scope, price and schedule each as a change order when you're ready.

- DarwinBox bi-directional API integration (pull ratings & promotion recommendations; push final numbers to payroll).
- Year-round retention & clawback tracking across future cycles (if not taken as a V1 option).
- Full multi-currency consolidation with live FX (if V1 runs single-currency / per-country silos).
- Advanced analytics dashboards beyond the core management reports.

## Scope-watch - items that could expand V1 beyond the fixed-price baseline

These are the items that materially move the estimate. Rather than bury each in an assumption, we price it as an option or phase so the number flexes with your choice - and the timeline and cost stay predictable. Each is flagged on its card.

- AI07 - Simulation module: A full scenario engine (whole-org pseudo-calc, save/compare, multi-dimension roll-ups). In V1 or a later phase?
- AI12 - Multi-currency depth: Single-country vs full multi-country with a consolidation currency + FX - the biggest single swing in the number.
- AI17 - Increment letters: Templated bulk letter generation across four countries - in V1 or later?
- AI19 - MC award module: The post-closure nomination workflow - this release or a later one?
- AI04/AI11 - Retention & clawback tracking: Track lock periods and recover amounts on early exit across future cycles, or just record the clause on the letter?
- AI16 - Screen scope: All Section-10 screens/dashboards in V1, or a core set first?
- AI23 - Design approach: Design fresh vs match the old UI - affects effort and adoption risk.

## Cross-source check & status

We re-derived every requirement across 16 review lenses, then triaged what we can build as proposed versus what we need from you. Of 151 points examined across 23 requirements:

- 72 - build as proposed (routine assumptions)
- 15 - material assumptions to confirm
- 14 - data / values we need
- 8 - scope decisions (priced levers)
- 13 - for your IT / DarwinBox vendor
- 14 - already-known / design-phase detail

None of this implies the BRD is wrong - it was written at one moment and simply needs one confirmation pass to nominate a single canonical reading per item.

---

## The 23 requirements - our understanding

Grouped by function. Open Full detail on any card for acceptance criteria, source, fields and the points to confirm.

## Group A - Setup, Masters & Access

The cycle, the master data, the people who use it, and who can see what.

### AI01 - Annual Review Cycle Setup

Chips: MVP. Status: 4 open.

One-line: HR opens the increment cycle and sets the governing dates.

Confirmed (supersedes the reading below where they differ): Review dates are as stated in your BRD: review period 1 Jan - 31 Dec, active-as-on 31 Dec, salary reference = CTC as on 31 Dec, eligibility cut-off 30 Jun.

Our understanding:
- A cycle is created with those dates; one global cycle runs at a time in V1, with the operational timeline running Oct -> Apr around the review period.
- All cycle parameters are configurable by HR at the start of each year.

Business acceptance criteria:
- HR can create a cycle, set every governing date, and no calculation can run until the cycle is defined.
- Changing a cycle date before processing re-derives dependent values consistently.

Source & cross-source check: BRD Step 1 (review-cycle dates); Table 1 (Oct-Apr timeline).

What we'll build unless you flag it - assumptions (2):
- We assume the 1 Jan - 31 Dec review period and the Oct -> Apr operational timeline are the same cycle, just offset in timing.
- We assume V1 runs a single global cycle at a time, not concurrent per-country cycles.

Decisions we need from you (2):
- DATA: What is the precedence order of the cycle dates, and which calculation does each one drive?
- DATA: What are the salary effective date and the payroll-push deadline? (The BRD marks 'Last Increment Effective Date' as N/A.)

Counts: 0 fields, 2 acceptance, 2 assumptions, 2 questions.

### AI02 - Masters - Bands, Grades, Designations, Ratings

Chips: MVP, LOGIC CAPTURED. Status: 3 open.

One-line: The reference data every calculation and promotion rule depends on.

Our understanding:
- Designation -> Band/Grade mapping, the band/grade ladder, locations, entities, countries and ratings are all HR-owned configurable masters.
- A mid-cycle master change is versioned and does not silently re-compute already-frozen records.

Business acceptance criteria:
- An admin can create/edit every master; a promotion or grid lookup resolves only against the current master version.
- Changing a designation's band mid-cycle does not retroactively alter a frozen record.

Key fields:

| Field | Type | Mandatory |
|-------|------|-----------|
| Designation | Text | Y |
| Band | Text | Y |
| Grade | Text | Y |
| Country / Entity | Text | Y |
| Rating code | Text | Y |

Source & cross-source check: BRD Step 4 (band ladder 6B->...->2A); Step 5 (grids configurable); Table 4 (Masters screen).

What we'll build unless you flag it - assumptions (1):
- We assume every master (band/grade ladder, designation mapping, ratings, locations, entities, countries) is HR-owned and configurable, and a mid-cycle master change is versioned rather than silently re-computing already-frozen records.

Decisions we need from you (2):
- DATA: Can you provide the complete Band/Grade lattice and the authoritative within-band / outside-band / skip-level classification rule? The BRD's own examples are internally inconsistent - the ladder ends at 2A and omits Band 1.
- DATA: Which rating scale is authoritative - the grid's CE / M+ / ME / M- / MM, or the '1-5' referred to on the call?

Counts: 5 fields, 2 acceptance, 1 assumptions, 2 questions.

### AI03 - Employee Data Intake

Chips: MVP. Status: 5 open.

One-line: Year-one employee data is loaded and each employee is mapped to a Practice Head.

Confirmed (supersedes the reading below where they differ): Year 1 runs on a data upload (as your BRD states); DarwinBox integration is a later phase.

Our understanding:
- A template-based bulk upload of ~1,500 employees x ~70 fields; invalid rows are rejected with an error report and valid rows proceed.
- Practice-Head mapping is maintained at individual-employee level, with a department default HR can override per employee.

Business acceptance criteria:
- A ~1,500-row upload validates and loads in one pass, listing every rejected row and why.
- Every employee resolves to exactly one Practice Head; HR can reassign at the individual level.

Key fields:

| Field | Type | Mandatory |
|-------|------|-----------|
| Employee key | Text | Y - TBC |
| Name / Designation / Dept | Text | Y |
| Fixed CTC (P.A.) | Number | Y |
| Ratings (LY / mid / CY) | Text | Y |
| Practice Head | Text | Y |

Source & cross-source check: BRD Table 0 ('Year 1 - historic data will be uploaded'); Step 7 (per-employee PH mapping); Table 2 (~70 fields).

What we'll build unless you flag it - assumptions (2):
- We assume the bulk upload rejects invalid rows with an error report and loads the valid rows in the same pass.
- We assume Practice-Head mapping is maintained per employee, with a department default HR can override individually.

Decisions we need from you (3):
- DATA: Can you provide the corrected ~70-field data dictionary? Many rows are blank/NA yet several feed outputs.
- DATA: What is the unique employee key that ties a person across DarwinBox, uploads, transfers and rehires? The field list shows Name but no ID.
- DATA: Can you share the year-1 upload template and a real (masked) sample file?

Counts: 5 fields, 2 acceptance, 2 assumptions, 3 questions.

### AI04 - Eligibility & Committed Cases

Chips: MVP. Status: 3 open.

One-line: Who participates in the cycle, including exceptions and prior commitments.

Confirmed (supersedes the reading below where they differ): Performance ratings originate in DarwinBox and appraisal/feedback collection is out of scope (from the call) - this app consumes the rating.

Our understanding:
- Eligible = permanent, active employees who joined before the cut-off; fixed-term->permanent conversions count from the conversion date; first-time appraisees prorate from date of joining.
- Interns, contractors and consultants are excluded; post-cut-off joiners can be admitted by exception with approval.

Business acceptance criteria:
- An ineligible employee never appears in a calculation; a first-timer's amount is prorated from DOJ.
- A committed case surfaces with its committed value visible to the reviewer.

Source & cross-source check: BRD Step 2 (eligibility, conversions, committed cases); Section 9 (proration success criteria).

What we'll build unless you flag it - assumptions (2):
- We assume the three proration triggers - fixed-term->permanent conversion date, first-time appraisee, and approved late joiner - are as described.
- We assume interns, contractors and consultants are fully excluded from the cycle.

Decisions we need from you (1):
- DATA: How do 'committed cases' enter the system, and does a commitment override, add to, or set a floor under the standard calculation?

Counts: 0 fields, 2 acceptance, 2 assumptions, 1 questions.

### AI05 - Roles, Access & the Leadership-Data Wall

Chips: MVP, COMPLIANCE. Status: 5 open.

One-line: Six roles, role- and field-level access, and confidential leadership pay walled off.

Confirmed (supersedes the reading below where they differ): Login is via Azure AD SSO (from the call).

Our understanding:
- Six roles (Super Admin, HR Admin, Practice Leader, Practice Head, Finance, Managing Committee), each with their own screens, derived into one role->screen->action matrix.
- Two HR admin tiers (Admin-1 / Admin-2) so leadership compensation is visible only to a designated group; visibility is enforced at row (span-of-control) and field (hide pay) level, not just screen level.
- A reviewer cannot act on their own record (recusal).

Business acceptance criteria:
- A Practice Head sees only their span; leadership rows are invisible to everyone outside the designated group, including in exports.
- No user can both propose and approve the same record.

Source & cross-source check: BRD Step 7 (leadership restriction, Admin-1/Admin-2); Tables 0 & 4 (roles/screens); call (Azure SSO).

What we'll build unless you flag it - assumptions (3):
- We assume a PL/PH/MC member who is themselves an appraisee cannot act on their own record (recusal enforced).
- We assume visibility is enforced at row (span-of-control) and field (hide pay) level, not just at screen level.
- We assume role permissions include negative constraints - Finance sees aggregates only, the Managing Committee approves only.

Decisions we need from you (2):
- DATA: Precisely who counts as 'leadership' for the data wall - which bands / designations, or a named list - and which roles may see them?
- SCOPE DECISION: BRD field 70 'Co-CEO Remarks' implies a Co-CEO review touchpoint, but Co-CEO is not one of the six modelled roles (Super Admin, HR Admin, PL, PH, Finance, MC). Is Co-CEO a seventh role/approver - and if so, at which stage are their remarks entered and by whom?

Counts: 0 fields, 2 acceptance, 3 assumptions, 2 questions.

## Group B - Promotion & Budget Simulation

Promotions and their credit system, and the simulation that sets the budgets.

### AI06 - Promotion Recommendation & Credits

Chips: MVP, LOGIC CAPTURED. Status: 10 open.

One-line: Practice Leaders recommend promotions, governed by a credit system and an approval chain.

Our understanding:
- Each promotion is auto-classified as within-band (0.5 credit), outside-band (1) or skip-level (2) from the current vs proposed band/grade.
- Credits are tracked per practice; over-limit and skip-level cases are flagged for extra approval; recommendations route PL -> PH -> HR -> MC, then the promotion list is frozen.

Business acceptance criteria:
- The system classifies every promotion correctly and blocks/flags a practice that exceeds its credits.
- A skip-level promotion cannot be finalised without the designated extra approval.

Source & cross-source check: BRD Step 4 (credits 0.5/1/2, classification, PL->PH->HR->MC, freeze).

What we'll build unless you flag it - assumptions (6):
- We assume each promotion is auto-classified as within-band (0.5 credit), outside-band (1) or skip-level (2) from the current vs proposed band/grade, and routes PL -> PH -> HR -> MC before the promotion list is frozen.
- We assume a Practice Leader can also recommend a redesignation without promotion - the title is revised with the promotion flag = 'No' and no band/level movement, consuming no promotion credit; the new designation still flows to the masters, the increment letter and payroll.
- We assume the Practice Head can not only approve / reject / modify / send-back, but also add additional employees for consideration or remove existing recommendations by updating the promotion-recommendation status.
- We assume 'Manager-and-above' promotions capture an extra narrative sub-form (BRD fields 65-69: Current Role - primary & secondary, Key Achievements, Key Development Areas, Additional Responsibilities in the new role, and HR Remarks), shown only for those cases.
- We assume 'Learning Hours Achieved - Current Year' (BRD field 14) is surfaced on the promotion-recommendation screen as a criterion the reviewer sees, not just a stored data field.
- We assume the promotion category (within-band / outside-band / skip-level) is displayed on promotion reports and approval screens for audit and governance.

Decisions we need from you (4):
- DATA: Who are the designated approver(s) for skip-level and 'Manager-and-above' promotions?
- DATA: What is the promotion-credit percentage (per practice, of headcount), and is over-limit behaviour a hard block or a flag?
- DATA: What are the promotion-increment % values, and what approved ranges may Practice Heads select from?
- SCOPE DECISION: For a redesignation without promotion, does it follow the same PL -> PH -> HR -> MC path, and is it strictly title-only or can it also carry a pay change?

Counts: 0 fields, 2 acceptance, 6 assumptions, 4 questions.

### AI07 - Budget Simulation

Chips: MVP, scope-watch. Status: 2 open.

One-line: HR and Finance model increment / bonus / promotion / correction budgets before the live run.

Our understanding:
- A scenario engine runs a pseudo-calculation across the whole organisation, varying rating-wise increment and bonus percentages by department, location, band, country and entity.
- Scenarios are saved and compared; the Managing Committee approves the final framework, which becomes the governing grid for the live run.

Business acceptance criteria:
- HR can define a scenario, see org- and employee-level cost impact across all dimensions, and save/compare multiple scenarios.
- Approving a scenario publishes the grid the live run consumes.

Source & cross-source check: BRD Step 5 (simulation, save/compare, impact by dept/band/location/entity/country).

What we'll build unless you flag it - assumptions (1):
- We assume approving a scenario formally locks the grids the live run consumes.

Decisions we need from you (1):
- SCOPE DECISION: Is the simulation module in V1, and to what depth? It is effectively a second calculation engine, so it is a priced scope lever.

Counts: 0 fields, 2 acceptance, 1 assumptions, 1 questions.

### AI08 - Grids & Rules Configuration

Chips: MVP, LOGIC CAPTURED. Status: 3 open.

One-line: The rating grids, promotion percentages and correction rules that drive every number.

Our understanding:
- Rating-wise increment and bonus grids are fully configurable and may vary by country, band, department, entity and tenure.
- Promotion % and correction rules are admin-configured, not hardcoded.

Business acceptance criteria:
- A change to a grid value flows into every dependent calculation and is version-controlled.
- The reproduced worked examples match the client's own figures exactly (to the rupee).

Source & cross-source check: BRD Step 5 (grids configurable by many dimensions); Table 3 (illustrative grid); Step 6 (correction rules).

What we'll build unless you flag it - assumptions (1):
- We assume all rating grids, promotion percentages and correction rules are admin-configured and version-controlled rather than hardcoded, and may vary by country, band, department, entity and tenure.

Decisions we need from you (2):
- DATA: Can you provide the authoritative rating grids (increment & bonus % per country / band / entity)? Table 3 is illustrative and its US/UAE columns appear transposed.
- DATA: What are the correction-rule threshold values - % eligible for correction/reduction, per-individual hike/reduction caps, tenure ceiling, rating threshold, and the small-team headcount definition?

Counts: 0 fields, 2 acceptance, 1 assumptions, 2 questions.

## Group C - Increment & Bonus Processing

The calculation engine, corrections, the budget kitty, and how money moves.

### AI09 - Calculation Engine

Chips: MVP, LOGIC CAPTURED. Status: 5 open.

One-line: Standard increment, promotion increment, correction and bonus - the arithmetic.

Our understanding:
- Standard increment = (CTC / total appraisal days) x base appraisal days x standard %; only the standard increment prorates by days.
- Promotion, standard and correction increments stack additively; Total Increase % is read as (Revised / Existing - 1) x 100; amounts round to the nearest whole unit (half-up) on the final figure.
- Boundary cases (empty/unmatched rating, zero/negative CTC, DOJ after cut-off) have defined safe defaults.

Business acceptance criteria:
- Every formula reproduces the client's worked examples exactly, including rounding and proration.
- A promoted employee receives standard + promotion + correction, not one in place of another.

Source & cross-source check: BRD Table 2 (formulas, fields 32/33/35/37/38/46); Section 9 (proration).

What we'll build unless you flag it - assumptions (4):
- We assume standard increment = (CTC / total appraisal days) x base appraisal days x standard %, and that only the standard increment prorates by days - promotion and correction increments do not.
- We assume all amounts round to the nearest whole unit (half-up), applied on the final figure.
- We assume promotion, standard and correction increments stack additively, and Total Increase % = (Revised / Existing - 1) x 100.
- We assume bonus is calculated on full CTC and is not prorated for a part-year.

Decisions we need from you (1):
- SCOPE DECISION: When a revised CTC exceeds the band maximum, what should the system do - block it, flag it, or allow it?

Counts: 0 fields, 2 acceptance, 4 assumptions, 1 questions.

### AI10 - Correction, Bonus & Kitty

Chips: MVP. Status: 5 open.

One-line: Governed corrections and bonuses drawn from a practice budget kitty.

Our understanding:
- Correction increments are on-screen inputs within the practice's correction kitty and rules; standard bonus comes from the grid, with governed additions/reductions.
- Reducing a standard increment or bonus returns the amount to the kitty; resigned/inactive employees follow the specific add-back rules in the BRD.

Business acceptance criteria:
- Every add-back / no-add-back case behaves exactly as the BRD Step 8 rules specify.
- A Practice Head can only draw corrections within the practice's kitty.

Source & cross-source check: BRD Step 6 (correction rules), Step 8 (kitty add-back, resigned/inactive), Section 9.

What we'll build unless you flag it - assumptions (2):
- We assume the kitty add-back rules are: a reduction returns to the kitty; an inactive employee triggers no return; a resigned employee's increment goes to nil while the bonus remains editable.
- We assume 'Special Bonus' is a distinct Practice-Leader-recommended bonus raised during the increment run - gated by the per-employee 'Eligibility for Special Bonus' flag (BRD field 60) and capped by the approved bonus guidelines - separate from the grid-driven standard bonus and from the post-closure MC awards (AI19).

Decisions we need from you (3):
- DATA: What is the budget-pool structure, and at what org level is each pool held?
- DATA: What is the Monthly / 'BPM' fixed-monthly-bonus calculation rule? It is referenced but undefined in the BRD.
- DATA: What are the Special Bonus guidelines and caps, which budget / kitty funds it, and does it route through the same PL -> PH -> HR -> MC chain?

Counts: 0 fields, 2 acceptance, 2 assumptions, 3 questions.

### AI11 - Budget Monitoring & the Over-Budget Rule

Chips: MVP. Status: 3 open.

One-line: Live kitty balances, and what happens when someone tries to exceed budget.

Our understanding:
- Budgets decrement live as amounts are added and return as they are reduced; balances are visible throughout.
- PROPOSED: an over-budget change is hard-blocked by default; specific fields can be admin-enabled to allow an 'Exception - Pending Approval' instead.
- A mid-cycle grid/rule change does not retro-recompute frozen records.

Business acceptance criteria:
- The kitty balance is always correct and visible; an over-budget action follows the confirmed rule every time.
- Reducing an amount returns exactly that amount to the correct pool.

Source & cross-source check: BRD Step 7 ('if out of budget - it should not allow') vs Step 8 ('Exception - Pending Approval') - a contradiction to resolve.

What we'll build unless you flag it - assumptions (2):
- We assume an over-budget change is hard-blocked by default, with specific fields admin-enabled to allow an 'Exception - Pending Approval' instead - our proposed reconciliation of the BRD, which states both behaviours.
- We assume a mid-cycle grid or rule change does not retroactively recompute already-frozen records.

Decisions we need from you (1):
- SCOPE DECISION: The BRD lists 'budget utilisation through the year (conversion / retention)'. Retention is already a Phase-2 lever; is mid-year fixed-term->permanent conversion increment processing - drawing on the budget outside the annual cycle window - in V1 scope, or also deferred to a later phase?

Counts: 0 fields, 2 acceptance, 2 assumptions, 1 questions.

### AI12 - Currency & Multi-Country Model

Chips: MVP, scope-watch. Status: 2 open.

One-line: Four countries, four currencies - how money is held, converted and rolled up.

Our understanding:
- The organisation spans India, Poland, the US and the UAE, but the BRD prices only in INR and stores every amount as a bare number with no currency.
- This is the single biggest driver of the estimate and cannot be assumed - see the decision below.

Business acceptance criteria:
- Amounts never mix currencies in a single total; any org-level roll-up uses one defined reporting currency and rate.
- A cross-country practice's kitty math stays currency-consistent.

Source & cross-source check: BRD Table 3 (4 countries), Step 8 (INR-only budget example), Step 5 (cost by country) - currency handling absent.

Decisions we need from you (2):
- DATA: What is the currency model - is each amount held in local currency, and is there one reporting currency for org-level roll-ups? If so, which currency, which FX rate source, and fixed as of when?
- SCOPE DECISION: Do budget kitties ever span currencies (e.g. a cross-country Practice Head)? This is the priced depth lever.

Counts: 0 fields, 2 acceptance, 0 assumptions, 2 questions.

### AI13 - Exception Handling

Chips: MVP. Status: 4 open.

One-line: Out-of-rule cases flagged, justified, and routed for approval.

Our understanding:
- Exceptions are flagged and stay visible up the chain; a mandatory justification is required; exception capability is admin-configurable per field.
- Super-Admin / HR-Admin overrides are permitted but every one is logged (old -> new, user, reason).

Business acceptance criteria:
- An out-of-rule value is always flagged and cannot be finalised without approval + justification.
- No override escapes the audit log.

Source & cross-source check: BRD Section 7 (exception examples), Step 8 (configurable exceptions), Table 4 (Exception screens).

What we'll build unless you flag it - assumptions (1):
- We assume a mandatory justification is required for every exception, exceptions stay visible up the chain, and a cycle cannot freeze while any exception is open.

Decisions we need from you (3):
- DATA: Can you provide the complete exception catalogue? The BRD's list is illustrative.
- DATA: Which fields can be exception-enabled, and what is the default on/off set?
- SCOPE DECISION: Do exceptions follow the main approval chain, or a separate approval track?

Counts: 0 fields, 2 acceptance, 1 assumptions, 3 questions.

## Group D - Approvals & Workflow

The multi-level approval chain, the freeze points, and reopening.

### AI14 - Approval Workflow

Chips: MVP. Status: 5 open.

One-line: Recommendations flow Practice Leader -> Practice Head -> HR -> Managing Committee.

Our understanding:
- Two workflows run in sequence - promotion (Dec) then increment (Mar) - each with defined states and transitions.
- The Practice-Leader stage is optional and can be skipped per department; bulk approve/reject/return is supported; send-backs return to the prior stage; HR is a validation gate; the MC is the final authority.

Business acceptance criteria:
- A record can only move through allowed transitions; a skipped PL stage never drops a mandatory action.
- An approver can action many records at once and see clear status at every stage.

Source & cross-source check: BRD Steps 4 & 7 (PL->PH->HR->MC, PL optional, send-backs); Table 1 (Dec/Mar timeline).

What we'll build unless you flag it - assumptions (2):
- We assume promotion (Dec) and increment (Mar) are two separate workflows run in sequence, not a single one.
- We assume the flow runs in parallel per practice, supports bulk approve/reject/return, HR acts as a validation gate, and the Managing Committee is the final authority.

Decisions we need from you (3):
- DATA: What is the full list of record states and their allowed transitions (the state machine)?
- DATA: When the Practice-Leader stage is skipped, who performs its mandatory actions, and how is the skip configured per department?
- SCOPE DECISION: How does the Managing Committee act as a body - a single approver, a quorum, or named members?

Counts: 0 fields, 2 acceptance, 2 assumptions, 3 questions.

### AI15 - Freeze, Reopen & Read-Only

Chips: MVP. Status: 2 open.

One-line: When records lock, and the narrow paths to reopen them.

Our understanding:
- There are two freeze points (promotion list; final compensation); after MC approval records become read-only.
- PROPOSED: a post-freeze resignation/inactivation may still set the value to nil, fully audited - reconciling the Step-7 read-only freeze with the Step-8 status rules.

Business acceptance criteria:
- A frozen record cannot be edited except through the confirmed reopen path, and every reopen is audited.
- A resignation after freeze produces the correct payroll figure.

Source & cross-source check: BRD Step 4 (promotion freeze/reopen), Step 7 (read-only) vs Step 8 (status -> nil) - a contradiction to resolve.

What we'll build unless you flag it - assumptions (1):
- We assume a post-freeze resignation or inactivation may still set a frozen record's value to nil, fully audited - our proposed reconciliation of the Step-7 read-only freeze with the Step-8 status rules.

Decisions we need from you (1):
- DATA: What is the increment reopen path, and who authorises a reopen?

Counts: 0 fields, 2 acceptance, 1 assumptions, 1 questions.

## Group E - Closure, Outputs & Awards

Reports, increment letters, the audit trail, special awards and the payroll hand-off.

### AI16 - Reports & Dashboards

Chips: MVP. Status: 5 open.

One-line: Role dashboards and management reports with dynamic slice-and-dice.

Our understanding:
- Per-role dashboards plus practice-wise utilisation, consolidated management reports, exception reports and the audit trail, at org / department / sub-department / practice levels.
- Data slices by band, location, department, sub-department, entity and country; exports (Excel/PDF) enforce the same access rules; reports are reproducible as-of the freeze.

Business acceptance criteria:
- Every report respects the leadership wall and span-of-control, including on export.
- A report can be reproduced as-of the freeze, distinct from the live simulation view.

Source & cross-source check: BRD Section 8 (outputs), Step 10 (org/dept/practice reports), Section 10 (slice-and-dice), Table 4 (dashboards).

What we'll build unless you flag it - assumptions (1):
- We assume exports (Excel/PDF) enforce the same access rules as on-screen views - including the leadership wall and span-of-control - and reports are reproducible as-of the freeze.

Decisions we need from you (4):
- DATA: What is the complete report catalogue, and what columns does each report carry?
- DATA: What is the finite list of slice / filter dimensions?
- DATA: What widgets and metrics does each role dashboard show?
- SCOPE DECISION: The Section-10 screen list names a Practice-Leader 'Status Tracker' screen. Is that a distinct PL-facing screen in V1, beyond approval status being visible within the workflow?

Counts: 0 fields, 2 acceptance, 1 assumptions, 4 questions.

### AI17 - Increment Letters

Chips: MVP, scope-watch. Status: 4 open.

One-line: System-generated communication letters for each employee.

Our understanding:
- Templated letters generated in bulk as PDFs, downloaded by HR; retention clauses and exceptional cases applied at letter time.

Business acceptance criteria:
- A single run produces a correct letter for every eligible employee, with the right per-entity template.
- Each letter carries the employee's final figures, effective date and any retention clause.

Source & cross-source check: BRD Section 8 (increment letters), Step 10 (closure), Table 2 field 57 (Entity).

What we'll build unless you flag it - assumptions (1):
- We assume increment letters are generated in bulk as PDFs and downloaded by HR, with per-entity templates and any retention clause applied at letter time.

Decisions we need from you (3):
- SCOPE DECISION: What is the letter distribution channel - HR download, portal, or email - and is e-signature required?
- DATA: How many letter templates are needed (per country / entity), and in which languages?
- SCOPE DECISION: Is increment-letter generation in V1 at all? It is a discrete document-generation workstream, so a priced scope lever.

Counts: 0 fields, 2 acceptance, 1 assumptions, 3 questions.

### AI18 - Audit Trail

Chips: MVP, COMPLIANCE. Status: 2 open.

One-line: Every decision traceable to a user and a justification.

Our understanding:
- An immutable log captures who / when / old -> new value / justification on every change, including post-freeze changes.

Business acceptance criteria:
- Any figure can be traced back to the user, timestamp and justification that produced it.
- The log cannot be edited and is retained for the agreed period.

Source & cross-source check: BRD Section 8/9 (audit trail, traceability), Step 4/7 (post-freeze tracking), Table 4 (Audit screen).

What we'll build unless you flag it - assumptions (1):
- We assume the audit log captures who, when, old -> new value and justification on every change - including post-freeze changes - and is immutable and non-editable.

Decisions we need from you (1):
- DATA: What is the required retention period for the audit log and historic cycles?

Counts: 0 fields, 2 acceptance, 1 assumptions, 1 questions.

### AI19 - MC Award Nominations

Chips: MVP, scope-watch. Status: 3 open.

One-line: Post-closure special-award nominations with fixed payouts.

Our understanding:
- Practice Heads nominate a fixed number of employees; HR reviews; the Managing Committee approves; a fixed amount is populated and pushed to the HRMS for payout.

Business acceptance criteria:
- A Practice Head can nominate only up to the defined number; approved awards carry the fixed amount to payroll.

Source & cross-source check: BRD Step 12 (special-award nominations, fixed amounts, HRMS push).

What we'll build unless you flag it - assumptions (1):
- We assume Practice Heads nominate up to a fixed number of employees, HR reviews, the Managing Committee approves, and a fixed amount is pushed to the HRMS for payout.

Decisions we need from you (2):
- DATA: Which budget or pool funds the MC-award payouts?
- SCOPE DECISION: Is the MC-award module in this release? It is a separate mini-workflow, so a priced scope lever.

Counts: 0 fields, 1 acceptance, 1 assumptions, 2 questions.

### AI20 - Payroll Input

Chips: MVP, PHASE 2. Status: 3 open.

One-line: Final numbers handed to DarwinBox for payroll.

Confirmed (supersedes the reading below where they differ): V1 hands off via a structured export; live API push to DarwinBox is Phase 2.

Our understanding:
- The export carries revised salary, new designation and total bonus for payroll processing.

Business acceptance criteria:
- The hand-off file contains exactly the fields payroll needs, for every finalised employee.

Source & cross-source check: BRD Step 11 (payroll input to HRMS), Step 12 (award payout to HRMS).

What we'll build unless you flag it - assumptions (1):
- We assume V1 hands off to payroll via a structured export carrying revised salary, new designation and total bonus, with a live DarwinBox API push deferred to Phase 2.

Decisions we need from you (2):
- DATA: What salary effective date governs the payroll timing? (Linked to AI01.)
- IT / VENDOR: What is the precise per-country payroll-input format DarwinBox expects?

Counts: 0 fields, 1 acceptance, 1 assumptions, 2 questions.

## Group F - Platform & Delivery

Integration, non-functional behaviour, and how we test and host it.

### AI21 - DarwinBox Integration

Chips: PHASE 2. Status: 2 open.

One-line: Bi-directional integration with the HRMS - deferred to a later phase.

Confirmed (supersedes the reading below where they differ): Confirmed as Phase 2; V1 runs on manual upload/export.

Our understanding:
- The ideal state (pull ratings & promotion recommendations, push final numbers to payroll) is a defined Phase-2 integration.

Business acceptance criteria:
- V1 is fully usable on upload alone; the Phase-2 integration is additive and does not re-architect V1.

Source & cross-source check: Call (ideal bi-directional API); BRD Step 11 (payroll push).

What we'll build unless you flag it - assumptions (1):
- We assume year 1 runs on manual upload/export, with the bi-directional DarwinBox integration delivered as a separate later phase.

Decisions we need from you (1):
- IT / VENDOR: For the Phase-2 integration: what are the API objects, auth model, sandbox, rate limits and field mappings - and who secures and pays for DarwinBox API access?

Counts: 0 fields, 1 acceptance, 1 assumptions, 1 questions.

### AI22 - Non-Functional

Chips: MVP. Status: 2 open.

One-line: Volume, concurrency, availability and localisation.

Confirmed (supersedes the reading below where they differ): ~1,500 employees (from the call).

Our understanding:
- Desktop-first web app; seasonal usage (heavy Dec-Mar); standard managed backups.
- Performance targets, DR/RTO-RPO, browser/mobile and accessibility carry sensible defaults and are finalised in design.

Business acceptance criteria:
- The system handles the full ~1,500-employee run and the March review peak comfortably.

Source & cross-source check: Call (~1,500, once a year); BRD Section 9 (good UI). NFRs otherwise absent - carried as defaults.

What we'll build unless you flag it - assumptions (1):
- We assume a desktop-first web app with seasonal peak usage (Dec-Mar), standard managed backups, and sensible defaults for performance, DR/RTO-RPO and accessibility, finalised during design.

Decisions we need from you (1):
- DATA: What is the user count and role distribution, and the expected peak concurrency in the March window?

Counts: 0 fields, 1 acceptance, 1 assumptions, 1 questions.

### AI23 - Deployment, Hosting & Confidential-Data UAT

Chips: MVP, COMPLIANCE. Status: 2 open.

One-line: Where it runs, and how we validate it without exposing real pay data.

Our understanding:
- Hosting model and the commercial structure are a linked decision (see the internal proposal).
- Validating with confidential compensation data is the single biggest delivery risk - it is what stalled the predecessor build.

Business acceptance criteria:
- UAT can run on data safe to expose, with our access scoped down as agreed.
- The confirmed hosting model satisfies any data-residency requirement.

Source & cross-source check: Call (deployment undecided; confidential-data test constraint; predecessor failure).

Decisions we need from you (2):
- SCOPE DECISION: What is the confidential-data UAT approach - masked data, synthetic data, or a restricted client-only test environment? (To be decided together with your IT/security.)
- SCOPE DECISION: Do we design fresh or match the familiar old-tool UI, and who signs off the design?

Counts: 0 fields, 2 acceptance, 0 assumptions, 2 questions.

---

## Cross-cutting rules & non-functional requirements

These span every module. Our proposed answers can be confirmed in one pass; the decisions route to your IT / compliance owners.

### Our proposed answers - please confirm

- Med - Rounding & number presentation (Finance): We propose whole-number rounding to the nearest currency unit (half-up) on final amounts, shown consistently across screens, outputs and the upload template.
- Med - Notifications (HR / Process): We propose email + in-app notifications on submission, send-back, approval and freeze, with reminders on stalled stages.
- Med - Historic data depth (HR): We propose loading the current cycle plus one prior year for comparison; deeper history is additional.

### Decisions we need from you

- High - Currency & FX model (org-wide) (Finance / IT): The reporting-currency + FX policy that every budget roll-up and report inherits. The single biggest unpriced unknown.
- High - Data residency (IT / Legal): Where data must physically live given Poland/EU-GDPR vs India / US / UAE - this constrains the hosting region.
- High - Audit-trail retention (HR / Compliance): How long the immutable audit log and historic cycles must be retained.

## Key numbers we're holding

The constants and structural facts every module inherits. Where a value is your data we don't yet hold, it is flagged as awaiting authoritative input.

- Review period = 1 Jan - 31 Dec
- Eligibility cut-off = 30 Jun
- Salary reference = CTC as on 31 Dec
- Operational timeline = Oct -> Apr
- Promotion credits = 0.5 / 1 / 2 (within / outside / skip)
- Retention lock = 1 yr (in-rule) / 2 yr (out-of-rule)
- ~1,500 employees
- 4 countries (IN / PL / US / UAE)
- Rating grid = illustrative only - awaiting authoritative
- Login = Azure AD SSO
- Year 1 = template upload; integration = Phase 2

## How we'd like to get these answered - the process

The fastest path to a locked scope. We've kept the asks to a minimum and made each quick to action. Our default posture: unless an item is marked red, we build to the scope exactly as understood here; the amber items are built as proposed unless you tell us otherwise.

- Skim each card. Where our understanding matches, no action; where it's off, a one-line correction is all we need.
- Confirm the amber items. These carry our proposed answer - a quick confirm or a one-line correction.
- The red items need you. They split into data/values only you hold (the grids, band lattice, correction thresholds, currency model, effective date, who is 'leadership') and scope decisions we price as options (simulation, integration, retention tracking, letters, awards, screens, design).
- Routed to one owner. Each item is tagged HR / Finance / MC / IT so each person answers only their subset. We suggest one time-boxed round plus a short working call for the calculation and currency items, tracked in a decision log that flows straight into the build spec.
- The two answers that move the number most: the currency model (AI12) and the authoritative grids (AI08). Nail those and we can firm the estimate; everything else can trail into the build.

## How we verified this - so you can trust it

This understanding was not paraphrased from the BRD prose. We re-derived every requirement directly from your Requirement Document and the discovery-call transcript into a structured registry, interrogated it across 16 review lenses (scope, data model, business rules, workflow, roles, dates, money, integration, security, reporting, non-functional, deployment, exceptions, edge cases, commercial and silences), then reconciled and de-duplicated the findings. Where your file contains a genuine ambiguity - the over-budget rule stated two ways, the band ladder that doesn't reconcile, the rating scale that differs from the call - we did not guess silently; we built to the reading we believe is intended and surfaced it here in Questions to resolve.
