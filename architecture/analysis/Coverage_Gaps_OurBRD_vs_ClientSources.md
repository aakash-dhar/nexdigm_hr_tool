# Coverage Gap Analysis - Client Sources vs Our Submitted BRD

Direction: client-shared inputs (the Requirement Document "Draft 2" + the 25 Jun call transcript) checked against the BRD we submitted (the "Our Understanding" website, filed at architecture/specs/BRD_nexdigm-hr-tool.md). Question answered: what did the client state that our BRD does not capture. Prepared 2026-07-16. Every finding is traceable to specific text.

## Verdict

Coverage is high. Our BRD re-derived all 12 process steps, all 6 roles, and every section of the client's document into 23 requirements (AI01-AI23), and it went further than the client's document on currency, non-functional requirements, deployment/UAT, the leadership data wall, and the audit trail. No entire client requirement is missing. The gaps below are of two kinds: (a) concrete detail the client already provided that our BRD collapsed into a single "lever" or asked for as if outstanding, and (b) a few points raised on the call that our BRD never surfaces. Several are intentional deferrals to the engineering-spec phase; those are listed separately at the end so they are not mistaken for oversights.

## Gaps in our submitted BRD

### COV-01 - The per-role screen inventory is collapsed into one lever - Major
- Client provided: Section 10, Table 5 enumerates 29 role-to-screen rows. For example HR Admin gets Review Cycle Setup, Employee & Rating Upload, Budget Setup, Grid Setup, Promotion Review, Increment Validation, Exception Management, Finalization, Reports; Practice Head gets Compensation Planning, Budget Tracker, Submission; Practice Leader gets Promotion Recommendation and Status Tracker; MC gets Promotion Approval, Increment Approval, Exception Approval; Finance gets Budget Dashboard and Cost Impact Analysis; Super Admin gets User Management, Masters, Audit Trail.
- Our BRD treats it as: a single priced lever (AI16 "Screen scope: All Section-10 screens/dashboards in V1, or a core set first?") and surfaces only the PL Status Tracker as a question.
- Why it matters: the client already gave an explicit screen map. Our BRD reads as if the screen set is open, when what is actually open is only the V1-vs-later cut. The screen inventory should be mirrored so the engineering spec builds from it.

### COV-02 - The field-level data dictionary is asked for rather than reflected - Major
- Client provided: Section 4 Step 3, Table 3 defines 70 fields with type, source, process, dropdown values, and explicit formulas (for example Standard Increment Amount, Promotion Increment Amount, Total Increment, Revised CTC, Total Bonus).
- Our BRD treats it as: outstanding - AI03 asks the client to "provide the corrected ~70-field data dictionary." It captures the headline formulas (AI09) but does not reflect several fields the client already defined, notably Bonus Type (Annual Bonus / Monthly Bonus / No Bonus, field 43), Actual Salary Drawn (field 42), the appraisal-day proration mechanics (fields 18 and 19), and the tenure formulas (fields 13 and 58).
- Why it matters: most of the dictionary already exists. The ask should be narrowed to correcting only the NA/blank fields (for example fields 21, 40, 41, 44, 51, 52, 54, 55, 56), not re-supplying the whole thing, and our BRD should carry the fields the client did define.

### COV-03 - Possible employee self-service view is not surfaced - Major
- Client stated (transcript): individual users logging in "to see what their performance ratings, increment," and "a login system when a user comes in." This hints at an employee-facing read-only view beyond the six admin/reviewer roles.
- Our BRD treats it as: absent - it models only the six roles (AI05) and never raises the question of an employee self-service login.
- Why it matters: if every one of ~1,500 employees gets a login to view their own outcome, the user base, screen set, and access model expand materially. It is genuinely ambiguous in the transcript (the same speaker also describes reviewer-span views), which is exactly why it should be an explicit open question - and today it is not in our BRD.

### COV-04 - Finance Admin's own screens are under-reflected - Minor
- Client provided: Finance gets dedicated screens (Budget Dashboard, Cost Impact Analysis, Section 10) and simulation participation (Step 5, roles table).
- Our BRD treats it as: light - AI05 notes "Finance sees aggregates only" and AI07 includes Finance in simulation, but the Finance-specific dashboards are not reflected.
- Why it matters: minor, but the Finance role has concrete screens in the client document that our BRD does not carry.

### COV-05 - The client's effort and timeline expectation is not recorded - Minor
- Client stated (transcript): "It's a very simple tool," "shouldn't take more than a month," "It's all arithmetic," and the conditional "could consider even for this year" if delivery is fast.
- Our BRD treats it as: absent - it discusses estimate levers and a scope-freeze process but never records the client's own effort expectation or the this-cycle question.
- Why it matters: this is the central expectation-vs-scope risk. Our BRD is the confirmation artifact; capturing the client's stated expectation (and the gap to the documented complexity) belongs in it.

### COV-06 - Code-base / IP transfer option is not captured - Minor
- Client stated (transcript): "deployed within your in-house ... or with us, code base ... transfer."
- Our BRD treats it as: partial - AI23 covers the hosting decision and links it to commercial structure, but does not explicitly capture the code-ownership / IP-handover option.
- Why it matters: minor, but code/IP handover is a distinct decision from hosting region and was raised directly on the call.

### COV-07 - The mandatory promotion-percentage action is not stated - Minor
- Client provided: Step 7 makes assigning the promotion increment percentage a mandatory action for every promoted employee, with the value carried from the promotion step.
- Our BRD treats it as: implied - AI06 covers promotion classification and routing but does not state the mandatory-action rule.
- Why it matters: minor completeness point in the increment-execution flow.

## Intentional deferrals (by design, not oversights)

Our BRD explicitly states that "detailed test cases and the full engineering spec come in the next phase." The following are therefore deferred on purpose and should not be read as gaps: the full 70-field data dictionary detail, the complete per-screen specifications, the authoritative rating grids and correction thresholds (correctly flagged as client data we need), detailed test cases, and the final state machine for the approval workflow. COV-01 and COV-02 above are noted as gaps only because the client had already provided that content, so our BRD could reflect it now rather than defer it.

## Recommendation

Two are worth folding into the BRD before it goes back to the client: COV-01 (mirror the client's Section-10 screen inventory rather than treating screens as one open lever) and COV-02 (carry the fields the client already defined and narrow the data-dictionary ask to only the NA/blank fields). Also add COV-03 as an explicit open question, since an employee self-service login would materially change scope and is currently unasked. COV-04 through COV-07 are minor and can be picked up in the same confirmation pass. Everything else the client stated is already covered in our BRD, and in several areas our BRD is more complete than the client's own document.

---

# VALIDATION REPORT (appended 2026-07-16)

This section is a quality-gate validation of the seven gaps above. Each gap was re-checked individually against the actual content of the two documents (client BRD in architecture/external/ plus the discovery-call transcript in comms/meeting-notes/, and our submitted BRD in architecture/specs/). No new gaps were introduced. Two prior findings are corrected with document-grounded evidence; corrections are noted explicitly.

## Validation Summary
- Total gaps reviewed: 7
- Real Gaps: 4 (COV-01, COV-02, COV-05, COV-07)
- False Positives: 1 (COV-04)
- Needs Clarification: 2 (COV-03, COV-06)

## Corrections to prior findings
- COV-02 is narrowed. Our BRD does acknowledge the dictionary exists (AI03 asks for the "corrected" dictionary and notes "many rows are blank/NA") and does reflect the appraisal-day proration mechanics (AI09). The prior finding's "asked for as if outstanding" and "appraisal-day mechanics not reflected" framing is therefore overstated; the residual genuine gap is a small set of specific defined fields.
- COV-04 is reclassified from a gap to a False Positive: the Finance functionality is present in AI07 and AI16, so it is not a distinct missing requirement.
- COV-06 is reclassified from a stated minor gap to Needs Clarification, because it cannot be resolved from the two documents alone (it depends on an internal proposal that is referenced but not provided).

## Gap Validation Table

| Gap ID | Gap Description | Source Document Reference | BRD Reference | Classification | Validation Reasoning |
|--------|-----------------|---------------------------|---------------|----------------|----------------------|
| COV-01 | Per-role screen inventory collapsed into one lever | Client BRD Section 10, Table 5 (29 role-screen rows) | Our BRD AI16 and the AI16 scope-watch lever | Real Gap | Our BRD reframes a client-specified screen set as an open "all Section-10 screens or a core set?" question and does not reproduce the role-to-screen mapping. Individual screen functions are covered functionally across cards (for example Grid Setup in AI08, Budget Tracker in AI11, Submission in AI14), which lowers severity, but the enumerated inventory and the scope-as-specified are materially not reflected. |
| COV-02 | Field-level data dictionary asked for rather than reflected | Client BRD Section 4, Table 3 (70 fields) | Our BRD AI03 (the ask), AI09 (formulas), AI10 (bonus) | Real Gap (narrowed) | Verified residual: specific defined fields are not reflected, notably Bonus Type (Annual/Monthly/No Bonus, field 43) and Actual Salary Drawn (field 42). Correction: our BRD does acknowledge the dictionary exists and asks only for the corrected version, and does reflect appraisal-day proration (AI09), so part of the original framing is overstated. The narrowed residual is a genuine, verifiable omission. |
| COV-03 | Possible employee self-service view not surfaced | Transcript (login "to see what their performance ratings, increment") | Our BRD AI05 (six roles, no self-service) | Needs Clarification | The transcript passage is internally ambiguous: it also says "Vinay looks at his entire vertical," which describes a reviewer-span view, not an individual self-view. Whether an employee self-service login is a real requirement cannot be determined from the documents alone, so whether its absence is a true gap is unresolved. |
| COV-04 | Finance Admin screens under-reflected | Client BRD Section 10 (Finance: Budget Dashboard, Cost Impact Analysis) | Our BRD AI05, AI07, AI16 | False Positive | Finance functionality is present: AI07 covers org- and employee-level cost-impact modelling, AI16 covers per-role dashboards and consolidated management reports, and AI05 sets Finance access ("aggregates only"). Only the screen names are not enumerated, which is the same enumeration point already captured by COV-01, not a distinct missing requirement. |
| COV-05 | Client effort and timeline expectation not recorded | Transcript ("very simple," "not more than a month," "could consider even for this year") | Our BRD (no timeline or constraint statement) | Real Gap | The client's conditional go-live signal ("even for this year") and effort expectation are stated in the source and absent from the BRD. The "one month" remark is an offhand estimate, but the this-cycle conditionality is a material scope-phasing constraint the BRD does not capture. |
| COV-06 | Code-base / IP transfer option not captured | Transcript ("deployed with us, code base transfer") | Our BRD AI23 ("hosting model and commercial structure are a linked decision; see the internal proposal") | Needs Clarification | AI23 flags a linked hosting-and-commercial-structure decision and references an internal proposal that is not provided here. Whether code/IP handover is already covered there or is a distinct uncaptured decision cannot be determined from the two documents alone. |
| COV-07 | Mandatory promotion-percentage action not stated | Client BRD Step 7 ("mandatory action for all promoted employees") | Our BRD AI06, AI09 | Real Gap | Our BRD covers promotion classification, routing, and that promotion increment stacks additively, but does not state the specific validation rule that assigning the promotion increment percentage is a mandatory action gating completion for every promoted employee. Minor but a distinct, verifiable omission. |

## Real Gaps - Detail

### COV-01
- Nature: insufficient detail. The enumerated screen inventory and the role-to-screen mapping are not reflected, and the specified set is reframed as an open scope question.
- Business risk: scoping and effort estimation may proceed as if the screen set is undecided when the client has specified it; the role-to-screen access mapping, which feeds the access-control model, is not consolidated.
- Recommended remediation: mirror the Section-10 screen inventory into the BRD or an annex, and reframe the AI16 "screen scope" lever as "confirm the specified set versus a phased subset" rather than an open set.

### COV-02
- Nature: insufficient detail. Specific client-defined fields are not carried into the BRD.
- Business risk: fields the client already defined (Bonus Type, Actual Salary Drawn) may be re-requested or overlooked; the three-way Bonus Type drives bonus logic and affects the calculation engine.
- Recommended remediation: carry the client-defined fields into the BRD and narrow the data-dictionary ask to only the NA/blank fields (21, 40, 41, 44, 51, 52, 54, 55, 56). Apply the corrections noted above.

### COV-05
- Nature: missing constraint/assumption. A stated client timing constraint is absent from the deliverable.
- Business risk: the deliverable does not record the client's conditional intent to target the current cycle, which determines whether scope must be phased to hit a December start.
- Recommended remediation: add a constraints/assumptions note capturing the timing conditionality and confirm the target cycle with the client. This may alternatively belong in the proposal or SOW rather than the BRD.

### COV-07
- Nature: missing requirement (a workflow validation rule).
- Business risk: if the rule is not stated, the build may not enforce mandatory promotion-percentage assignment, allowing a promoted employee to be finalized without a promotion increment.
- Recommended remediation: add the mandatory-action rule to the promotion and increment workflow requirements (AI06 and AI14).

## Clarification Items

### COV-03
- Question: Does every employee receive a login to view their own compensation outcome (an employee self-service view), or is login limited to the six admin/reviewer roles?
- Best placed to answer: client.

### COV-06
- Question: Does the referenced internal proposal / commercial structure already address code-base ownership and handover, or should the BRD surface code/IP transfer as a separate deployment decision?
- Best placed to answer: internal BA / product owner.
