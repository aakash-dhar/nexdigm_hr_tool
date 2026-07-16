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
