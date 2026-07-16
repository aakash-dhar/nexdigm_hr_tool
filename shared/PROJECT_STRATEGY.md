# PROJECT_STRATEGY.md

High-level strategy, phases, and goals. Updated deliberately, rarely.

## Objective
Replace the spreadsheet-driven annual compensation exercise with a controlled web application for ~1,500 employees across India, Poland, the US and the UAE. Performance ratings originate in DarwinBox; the application runs the increment, promotion, correction and bonus exercise through a governed multi-level approval chain and hands final numbers back for payroll.

## Delivery approach (phases)
1. Requirements confirmation (current). BetaCraft has re-derived the BRD and the 25 Jun discovery call into 23 requirements and surfaced 84 points for the client to confirm. See architecture/specs/BRD_nexdigm-hr-tool.md.
2. Scope freeze. Confirm the amber proposed answers, resolve the red data/decision items, and choose the priced scope levers.
3. Engineering spec and test cases.
4. Build V1.
5. Phase 2, delivered by change order.

## V1 scope
- Manual template upload for employee data; structured export to payroll.
- Single global cycle at a time; desktop-first web app; Azure AD SSO login.
- 23 requirements across 6 groups: Setup/Masters/Access; Promotion & Budget Simulation; Increment & Bonus Processing; Approvals & Workflow; Closure/Outputs/Awards; Platform & Delivery.
- Six roles with a leadership-data wall (row- and field-level access) and a full immutable audit trail.

## Phase 2 (by change order)
- DarwinBox bi-directional API integration (pull ratings and promotion recommendations; push final numbers to payroll).
- Year-round retention and clawback tracking across future cycles.
- Full multi-currency consolidation with live FX.
- Advanced analytics dashboards beyond the core management reports.

## The two decisions that move the number most
- Currency and FX model (AI12) - the single biggest unpriced unknown.
- Authoritative rating grids (AI08) - increment and bonus percentages per country / band / entity.

## Primary delivery risk
Validating with confidential compensation data (AI23) - the constraint that stalled the predecessor build. Hosting model and commercial structure are a linked decision tied to data residency.
