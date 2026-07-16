# Requirements Audit - PRD vs Client Transcript

Nexdigm Annual Increment Processing Application. Two-lens reconciliation of the client PRD ("Annual Increment Process - Requirement Document Draft 2.docx") against the discovery-call transcript (Otter.ai, 25 Jun). Prepared 2026-07-16. Every finding is traceable to specific text in one or both sources; nothing is inferred beyond what is written or said.

Reference shorthand: PRD cites Section / Step / Table / field number. Transcript cites approximate position in the Otter.ai note.

---

## SECTION 1 - SYNC CHECK

Cross-document misalignments: where the PRD and the transcript describe the same requirement differently, diverge in intent, or contradict.

### SYNC-01 - Perceived simplicity and effort vs documented complexity
- What the PRD states: A system with a simulation engine (Step 5), a promotion credit accounting system of 0.5 / 1 / 2 credits (Step 4), correction "kitties" with add-back logic (Steps 6 and 8), a four-stage approval workflow with two freeze points and reopen paths (Steps 4 and 7), exception handling (Section 7), retention clawback recovery (Step 6), multi-country rating grids (Table 4), ~70 data fields (Table 3), role- and field-level access with a leadership data wall (Step 7), and a full audit trail (Section 8).
- What the transcript states: The client repeatedly frames it as a small tool - "It's a very simple tool," "not rocket science," "It's all arithmetic. Excel can do it," and "if a good developing company is there, it shouldn't take more than a month." The vendor echoes a mid-August / early-September delivery.
- Nature of the conflict: Divergence in perceived scope and effort. The client's mental model (a month of arithmetic) is materially smaller than the governance-heavy system the PRD documents.
- Severity: Critical

### SYNC-02 - Rating scale definition
- What the PRD states: The rating grid (Table 4) uses five named tiers - CE, M+, ME, M-, MM - each mapped to increment and bonus percentages per country.
- What the transcript states: The client describes ratings as numeric: "the outcome of that is a performance rating ... I'd say one to five."
- Nature of the conflict: Contradiction / same concept described differently. Which scale is authoritative (the five-code grid or a 1 to 5 scale) is unresolved, and the two do not obviously map onto each other.
- Severity: Major

### SYNC-03 - Origin of promotion recommendations
- What the PRD states: Promotion recommendations are created inside the application by the Practice Leader, who "may recommend an employee for promotion" within the tool, then routes them PL to PH to HR to MC (Step 4).
- What the transcript states: In the client's ideal workflow, "from the HRMS, the rating should come in, promotion recommendations should come in, finalized on this platform."
- Nature of the conflict: Divergence in intent about where promotion recommendations originate - authored in-app (PRD) vs ingested from DarwinBox (transcript ideal). The two can be reconciled by phasing, but the PRD does not acknowledge the HRMS-sourced path.
- Severity: Major

### SYNC-04 - The login / user universe
- What the PRD states: Six roles only - Super Admin, HR Admin, Practice Leader, Practice Head, Finance Admin, Managing Committee (Section 3 users table; Section 10 screens). There is no employee self-service role or screen.
- What the transcript states: "they still need a login box with a single login to see what their performance ratings, increment ...", and "a login system when a user comes in." This implies individual users logging in to view their own outcome.
- Nature of the conflict: Ambiguity. The transcript may mean only the reviewer roles (the same speaker later says "Vinay looks at his entire vertical," which is a Practice Leader view), or it may mean every employee gets a read-only self-view. The PRD supports only the former; the user base and screen count differ significantly depending on the answer.
- Severity: Major

### SYNC-05 - Integration status and phasing
- What the PRD states: The data dictionary lists "HRMS/Upload" as the source for most fields (Table 3) and the roles table says "Upload and validate (in case of integrations) ... For year 1 - historic data will be uploaded" - treating live integration as conditional/available.
- What the transcript states: Full bi-directional API integration ("HRMS has APIs ... pull and push") is framed as the "ideal" future state, with Year 1 clearly on manual upload.
- Nature of the conflict: Ambiguity / wording. Both agree Year 1 is upload, but the PRD's "HRMS/Upload in case of integrations" wording blurs what is Year-1 scope vs a later phase, where the transcript is explicit that the API is future.
- Severity: Minor

---

## SECTION 2 - GAP ANALYSIS

Gaps are grouped by where the evidence sits: raised in the transcript but absent from the PRD; present in the PRD but never grounded in the client conversation; or unaddressed in both.

### Missing from the PRD (raised in the transcript)

### GAP-01 - Confidential-data UAT / testing approach
- Description: How the system will be validated without exposing real compensation data is undefined in the PRD.
- Evidence: Transcript - "one of the challenges with this platform was testing it, because confidential information ... the ones who developed it did not test it," and the pitch that a neutral third party can safely test. The PRD has no UAT, test-data, or data-handling section.
- Why this is a gap: This is the failure mode that stalled the predecessor build, raised prominently in the call and entirely absent from the formal document. Left unresolved it repeats the exact reason the last attempt failed.
- Severity: Critical

### GAP-02 - Authentication (Azure SSO)
- Description: The PRD names no authentication mechanism.
- Evidence: Transcript - "login you want Azure SSO." PRD Section 10 lists dashboards and logins but never states an auth method.
- Why this is a gap: A stated technical requirement (Azure AD SSO, tied to the client's DarwinBox/Microsoft estate) exists only in the conversation. It affects identity, provisioning, and the access-control model the PRD does describe.
- Severity: Major

### GAP-03 - Deployment / hosting model and code-base transfer
- Description: Where the application runs, and who owns/holds the code, is undefined in the PRD.
- Evidence: Transcript - "Do you want this deployed within your in-house[?] ... You want it deployed with us[,] code base ... transfer[?]" Left open on the call. PRD is silent on hosting, environment, and IP handover.
- Why this is a gap: Hosting and code ownership drive architecture, the confidential-data test approach (GAP-01), data residency (GAP-15), and the commercial model. It is an open decision with downstream design consequences.
- Severity: Major

### GAP-04 - Headcount and non-functional requirements
- Description: The PRD states no user/employee volume, concurrency, availability, or peak-load expectation.
- Evidence: Transcript - "1500 people right now" and "you do this once a year. Yes." The PRD contains no headcount figure and no NFR section.
- Why this is a gap: Scale and the once-a-year, seasonal (Dec-Mar) usage profile are material to sizing, performance, and cost, and appear only in the conversation.
- Severity: Major

### GAP-05 - Design direction and existing UI assets
- Description: The PRD asks for "good UI and seamless walkthrough" (Section 9) but gives no design direction, and references no existing assets.
- Evidence: Transcript - "Basic UI was there ... we have the freeze PDF," plus the open question of designing fresh vs matching the old tool because "some people are very picky ... familiarity with the current tool." Those screenshots/"freeze PDF" have not been shared.
- Why this is a gap: UI was a stated reason the predecessor "never took off." Design approach (fresh vs familiar) is an unmade decision with adoption risk, and the referenced design artifacts are outstanding inputs.
- Severity: Major

### GAP-06 - Target go-live cycle and delivery timeline
- Description: The PRD gives the annual process timeline (Oct to April) but no build/delivery target or go-live cycle.
- Evidence: Transcript - "We may not move forward with it [this year] ... if the time taken can be lower, then definitely we could consider even for this year," and the vendor's mid-Aug / early-Sep estimate. The client's commitment to the current cycle is explicitly conditional.
- Why this is a gap: Whether V1 must be ready for the imminent December simulation window is unresolved, which changes scope triage and urgency.
- Severity: Major

### GAP-07 - Explicit scope boundary: appraisal/feedback collection excluded
- Description: The PRD never states what the system does not do; specifically, that appraisal and feedback collection are out of scope.
- Evidence: Transcript - "The performance reviews are happening on [DarwinBox], the HRMS ... the performance review is separate ... the calculation bit is what we had developed." PRD consumes ratings but never states the boundary.
- Why this is a gap: An unstated boundary invites scope creep. The interviewer explicitly floated a "separate tool that only does appraisal ... collection, feedback"; recording the exclusion prevents that being assumed in later.
- Severity: Minor

### GAP-08 - Commercial model
- Description: Subscription vs one-time licensing, and any productization intent, are absent from the PRD.
- Evidence: Transcript - "subscription model we can think, because then enhancements ... if this doesn't work for us after two cycles, then we are okay to move," plus the vendor's intent to "go to market with some of our HR offerings."
- Why this is a gap: Normally out of a BRD's remit, but a subscription/multi-tenant productization path would change architecture (tenancy, configurability) if decided early. Worth a conscious park rather than a silent omission.
- Severity: Minor

### Present in the PRD, no grounding in the client conversation

### GAP-09 - Promotion credit system
- Description: The 0.5 / 1 / 2 credit accounting per practice (Step 4) is never mentioned in the call.
- Evidence: PRD Step 4 in detail; transcript silent on any credit mechanism.
- Why this is a gap: A non-trivial governance feature appears to carry over from an earlier BRD without being reaffirmed against the client's current, simplicity-focused framing (see SYNC-01). It may be essential or may be legacy; it needs an explicit confirm.
- Severity: Major

### GAP-10 - Correction kitty rules and add-back logic
- Description: On-screen correction inputs bounded by a practice kitty, with reductions returning to the pool (Steps 6, 8; Section 9), are not discussed on the call.
- Evidence: PRD Steps 6 and 8; transcript silent.
- Why this is a gap: Core money-movement logic grounded only in the written document. The exact add-back rules also interact with the resigned/inactive edge cases and need client confirmation of intent, not just inheritance from a prior draft.
- Severity: Major

### GAP-11 - Retention lock and clawback recovery
- Description: Retention tenure (1 year in-rule / 2 years out-of-rule) with recovery of paid amounts on early exit (Step 6) is absent from the conversation.
- Evidence: PRD Step 6; transcript silent.
- Why this is a gap: Clawback recovery is legally and operationally heavy (cross-cycle tracking, payroll recovery) and materially larger than "a month of arithmetic." Its absence from the client's stated priorities makes its V1 status uncertain.
- Severity: Major

### GAP-12 - MC special-award nominations
- Description: The post-closure special-award nomination module with fixed payouts (Step 12) is not raised on the call.
- Evidence: PRD Step 12 and Section 2; transcript silent.
- Why this is a gap: A discrete additional workflow grounded only in the document; its V1 inclusion should be confirmed rather than assumed.
- Severity: Minor

### Unaddressed in both documents

### GAP-13 - Multi-country currency and FX model
- Description: The org spans four countries but currency handling is undefined; amounts are stored as bare numbers.
- Evidence: PRD Table 4 lists India, Poland, US and UAE; the only worked budget example (Step 8) is "Practice Budget = INR 10,00,000." No currency field appears in Table 3. The transcript does not address currency at all.
- Why this is a gap: With four currencies and no reporting-currency or FX policy, budget roll-ups and reports are undefined. This is the single largest unpriced unknown and is addressed by neither source.
- Severity: Critical

### GAP-14 - Unique employee identifier
- Description: No stable employee key exists in the data model.
- Evidence: PRD Table 3 field 1 is "Name of the Employee"; there is no employee ID/code field across the ~70 fields. The transcript does not raise it.
- Why this is a gap: Without a unique key, matching a person across the HRMS, uploads, transfers, and rehires is unreliable - foundational for both Year-1 upload and future integration, yet specified by neither.
- Severity: Major

### GAP-15 - Data residency for confidential compensation data
- Description: Where confidential pay data may physically reside is undefined, despite an EU jurisdiction being in scope.
- Evidence: Derived from stated facts only - PRD Table 4 includes Poland (EU) alongside India, US and UAE, and the transcript stresses the data is confidential. Neither document states any residency or jurisdiction constraint.
- Why this is a gap: Poland/EU data-protection obligations plus confidential comp data can constrain the hosting region (GAP-03). Flagged as derived from the countries listed and the confidentiality theme, not invented.
- Severity: Major

### GAP-16 - Over-budget rule is internally contradictory and ungrounded
- Description: The PRD states the over-budget behaviour two ways and the transcript never adjudicates it.
- Evidence: PRD Step 7 - "if out of budget - it should not allow to make changes" (hard block). PRD Step 8 - a PH exception is allowed and "marked 'Exception - Pending Approval,'" configurable per field by Admin. Transcript silent.
- Why this is a gap: A core budget-control rule that the document defines both as a hard block and as an approvable exception cannot be built until a single canonical behaviour is chosen; the client conversation offers no tiebreaker.
- Severity: Major

### GAP-17 - Freeze read-only vs post-freeze status change
- Description: The PRD both locks records after MC approval and allows post-freeze status changes to zero out amounts.
- Evidence: PRD Step 7 - after MC approval "employee records become read-only." PRD Step 8 - a resigned employee's "increment amount should automatically be set to Nil" and the bonus stays editable. Transcript silent.
- Why this is a gap: The read-only freeze and the resignation/inactivation adjustments are in tension and need a reconciled rule (for example, a narrow audited exception path); neither the document nor the call resolves it.
- Severity: Major

### GAP-18 - Band ladder and rating-grid internal inconsistencies
- Description: The band structure and the illustrative grid do not fully reconcile.
- Evidence: PRD Step 4 says "Bands are categorized as Band 1 ... Band 6," but the drawn ladder is "6B to 6A to 5B ... to 2A" - it omits Band 1 and ends at 2A. In Table 4 the US column (20% increment / 10% bonus) breaks the increment-below-bonus pattern of every other country, suggesting the US and UAE columns are transposed. The transcript does not touch either.
- Why this is a gap: The classification engine (within/outside/skip band) depends on an authoritative, self-consistent ladder, and the grid is labelled illustrative; both need corrected, authoritative data the conversation never provided.
- Severity: Minor

---

## SECTION 3 - SUMMARY

| ID | One-line description | Source | Severity |
|----|----------------------|--------|----------|
| SYNC-01 | Client's "simple, one month" framing vs the PRD's governance-heavy system | Both | Critical |
| SYNC-02 | Rating scale: 1 to 5 (call) vs CE/M+/ME/M-/MM grid (PRD) | Both | Major |
| SYNC-03 | Promotion recommendations authored in-app (PRD) vs ingested from HRMS (call) | Both | Major |
| SYNC-04 | Six admin/reviewer roles (PRD) vs implied per-user self-login (call) | Both | Major |
| SYNC-05 | Integration framed as conditional/live (PRD) vs future ideal (call) | Both | Minor |
| GAP-01 | Confidential-data UAT / test approach undefined | Transcript, missing from PRD | Critical |
| GAP-02 | Azure SSO authentication not in PRD | Transcript, missing from PRD | Major |
| GAP-03 | Hosting model and code-base transfer/IP undefined | Transcript, missing from PRD | Major |
| GAP-04 | Headcount (~1,500) and NFRs absent from PRD | Transcript, missing from PRD | Major |
| GAP-05 | Design direction and existing UI assets ("freeze PDF") | Transcript, missing from PRD | Major |
| GAP-06 | Target go-live cycle / delivery timeline undefined | Transcript, missing from PRD | Major |
| GAP-07 | Appraisal/feedback collection not stated as out of scope | Transcript, missing from PRD | Minor |
| GAP-08 | Commercial model (subscription vs one-time) and productization | Transcript, missing from PRD | Minor |
| GAP-09 | Promotion credit system never reaffirmed on the call | PRD, no transcript grounding | Major |
| GAP-10 | Correction kitty rules and add-back logic not discussed | PRD, no transcript grounding | Major |
| GAP-11 | Retention lock and clawback recovery not discussed | PRD, no transcript grounding | Major |
| GAP-12 | MC special-award module not discussed | PRD, no transcript grounding | Minor |
| GAP-13 | Multi-country currency / FX model undefined | Unaddressed in both | Critical |
| GAP-14 | No unique employee identifier in the data model | Unaddressed in both | Major |
| GAP-15 | Data residency for confidential pay data (Poland/EU) | Unaddressed in both (derived) | Major |
| GAP-16 | Over-budget rule stated two ways (hard block vs exception) | Unaddressed in both (PRD-internal) | Major |
| GAP-17 | Freeze read-only vs post-freeze status-to-nil | Unaddressed in both (PRD-internal) | Major |
| GAP-18 | Band ladder omits Band 1 / grid columns look transposed | Unaddressed in both (PRD-internal) | Minor |

### Recommended pre-delivery resolutions

Resolve the Critical findings with the client before any build commitment. First, close the expectation gap in SYNC-01: the client believes this is a month of arithmetic, while the PRD encodes a simulation engine, credit accounting, kitties, clawback recovery, multi-country grids and a multi-level workflow. Estimation and scope-freeze depend on aligning those two pictures, most cleanly by agreeing which of the heavier features (GAP-09 credits, GAP-11 retention clawback, GAP-13 currency depth, GAP-12 awards, the simulation module) are V1 versus later phases. Second, define the confidential-data UAT approach (GAP-01), since it is the specific reason the predecessor failed. Third, settle the currency and FX model (GAP-13), the largest unpriced unknown.

Alongside those, the Major items that gate a clean build are the two internal contradictions that must each collapse to one rule (GAP-16 over-budget, GAP-17 freeze vs status change), the authoritative rating scale and grid (SYNC-02, GAP-18), the origin and phasing of promotion recommendations and integration (SYNC-03, SYNC-05), the login/user universe (SYNC-04), and the platform decisions that were left open on the call - authentication (GAP-02), hosting and IP (GAP-03), headcount/NFRs (GAP-04), design direction (GAP-05), a unique employee key (GAP-14), and data residency (GAP-15). The Minor findings can be confirmed in the same pass but do not block progress. These map directly onto the open items already tracked in shared/HOTSHEET.md; this audit adds the client-conversation evidence behind each.
