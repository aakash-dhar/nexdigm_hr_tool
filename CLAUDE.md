# CLAUDE.md - Project Context and Session Rules

## Project
The Nexdigm Annual Increment Processing Application is a controlled web application, built by BetaCraft (Soni Technologies LLC) for Nexdigm HR & Finance, that replaces the spreadsheet-driven annual compensation exercise for ~1,500 employees across India, Poland, the US and the UAE. Performance ratings originate in DarwinBox; the app runs the increment, promotion, correction and bonus cycle through a governed Practice Leader to Practice Head to HR to Managing Committee approval chain, then exports final numbers to payroll. The requirements are captured as 23 items (AI01 to AI23) in architecture/specs/BRD_nexdigm-hr-tool.md.

## Before doing any work
- git pull origin main
- Read this file, OWNERS.md, and your workspace SESSION-LOG.md
- Read shared/DECISIONS.md (single source of truth for locked decisions)

## Critical rules
- Never use em-dashes in any output. Use a regular hyphen (-) if needed.
- Ground every requirement claim in the BRD understanding doc or a discovery-call source. Do not invent scope, figures, grids, thresholds, or dates.
- shared/ is merger-owned. Propose changes via your workspace rather than editing shared/ directly (see OWNERS.md).

## Terminology
- AIxx - a requirement ID (AI01 to AI23), grouped A to F.
- Roles - Super Admin, HR Admin (tiers Admin-1 / Admin-2), Practice Leader (PL), Practice Head (PH), Finance, Managing Committee (MC).
- DarwinBox - the client HRMS. Source of performance ratings and the payroll target. Integration is Phase 2.
- Kitty - a practice's budget pool that funds increments, corrections and bonus.
- Promotion credits - 0.5 within-band / 1 outside-band / 2 skip-level.
- V1 - the manual upload/export release. Phase 2 - by change order (DarwinBox API, retention/clawback, full multi-currency, advanced analytics).
- Scope-watch - priced levers that materially move the estimate.

## Current project state
- Phase: requirements confirmation, pre-scope-freeze.
- Source of record filed 2026-07-16: architecture/specs/BRD_nexdigm-hr-tool.md (plus summary).
- Awaiting client confirmation of 84 points (15 amber assumptions, 14 data items, 8 scope decisions, plus IT/vendor items). The two biggest number-movers are the currency model (AI12) and the authoritative grids (AI08).
- 7 decisions locked so far - see shared/DECISIONS.md.
