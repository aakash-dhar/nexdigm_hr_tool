# Companion Notes - Client BRD (Annual Increment Process, Draft 2)

## Provenance
- Document: "Annual Increment Process - Requirement Document Draft 2.docx", authored by the client (Nexdigm).
- Received: from the client during this engagement; the original .docx is preserved in this folder as the source of record, with a markdown rendering alongside it for readability and diffing.
- Filed: 2026-07-16, into architecture/external/ per FILING-GUIDE.md (client and vendor source documents).

## Authority
- This is a client-authored source document. It is one of the two client inputs (with the 25 Jun discovery-call transcript in comms/meeting-notes/) from which our submitted BRD (architecture/specs/BRD_nexdigm-hr-tool.md) was derived.
- It is "Draft 2". On the call the client indicated they would combine an earlier BRD, a second version, and enhancements into one document, so later revisions may supersede this.
- Where this document and a locked decision in shared/DECISIONS.md differ, DECISIONS.md governs; raise the conflict rather than editing either in place.

## Structure at a glance
Ten sections plus five tables: business objective; current process; desired future process (with the 6-role users table); the end-to-end flow (12 steps); a 70-field data dictionary (Table 3); an illustrative rating grid across four countries (Table 4); correction rules and retention; budget monitoring; closure and payroll; special awards; exception handling; final outputs; success criteria; and a 29-row user-wise screen inventory (Table 5).

## Known issues in this source (carried into our analysis)
These are documented in full in architecture/analysis/ and shared/HOTSHEET.md; summarized here so a reader of the source is warned:
- Step numbering differs between the timeline table (11 steps) and the detailed write-ups (12 steps).
- The band ladder is drawn 6B to 2A, which omits Band 1 though the text says "Band 1 to Band 6".
- The rating grid (Table 4) is illustrative; the US column appears transposed with UAE.
- Field 38 "Total Increase %" is written as Revised / Existing * 100 (which yields ~110%, not a ~10% increase).
- The over-budget rule is stated two ways: Step 7 hard block ("should not allow") vs Step 8 "Exception - Pending Approval".
- Step 7 makes records read-only after freeze, while Step 8 still zeroes amounts for resigned/inactive employees.
- No unique employee identifier appears in the 70-field dictionary (Name is present, no ID).
- Currency handling is absent: four countries are listed but the only budget example is in INR and amounts are stored as bare numbers.

## Related documents
- Our submitted BRD: architecture/specs/BRD_nexdigm-hr-tool.md (and _SUMMARY.md).
- Discovery-call transcript and summary: comms/meeting-notes/2026-06-25_discovery-call_*.
- Audits: architecture/analysis/BRD_vs_Transcript_Audit.md and Coverage_Gaps_OurBRD_vs_ClientSources.md.
