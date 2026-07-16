# FILING-GUIDE.md - Where each type of document goes

Routing guide for this repo: every document type has one home. This complements PROJECT_INDEX.md (which lists the actual current documents), CONVENTIONS.md (naming and style), and OWNERS.md (who may write where). When in doubt, match the document to the closest row below; if nothing fits, park it in your workspace and raise it.

| Document type | Folder | Notes and examples |
|---------------|--------|--------------------|
| Governance and session rules | repo root | CLAUDE.md, README.md, OWNERS.md, CONVENTIONS.md, PROPOSAL-TEMPLATES.md, this FILING-GUIDE.md |
| Single source of truth (decisions, blockers/risks/actions, strategy, doc map, merge conflicts) | shared/ | DECISIONS.md, HOTSHEET.md, PROJECT_STRATEGY.md, PROJECT_INDEX.md, MERGE-REVIEW.md. Merger-owned - others propose via their workspace, do not edit directly |
| Our requirement and spec documents | architecture/specs/ | The BRD we produce, phase specs, the engineering spec. Example: BRD_nexdigm-hr-tool.md |
| Internal technical architecture | architecture/technical/ | System design, data model, API design, security design |
| Our internal analysis and reviews | architecture/analysis/ | Gap analyses, requirement audits, source-reconciliations, traceability. Examples: BRD_vs_Transcript_Audit.md, Coverage_Gaps_OurBRD_vs_ClientSources.md |
| Client and vendor source documents | architecture/external/ | The client's own requirement document, vendor specs, DarwinBox API docs. Example: the client "Requirement Document Draft 2" |
| Client emails | comms/emails/ | Naming: NN_YYYY-MM-DD_kebab-subject.md (incrementing sequence) |
| Meeting notes and call transcripts | comms/meeting-notes/ | A verbatim NAME_TRANSCRIPT.md plus a synthesized summary. Example: the 25 Jun discovery-call transcript |
| Slack / chat exports | comms/slack/ | |
| Raw attachments as received | comms/attachments/ | Unprocessed inbound files, before they are filed properly |
| Contracts and signed agreements | contracts/ | SOWs and agreements; one subfolder per phase as needed (e.g. phase-2.1/) |
| External documents taken into the record | reference/ | Standards, third-party reports, papers formally adopted - each with a companion _NOTES.md |
| Research and background | research/ | Papers, competitive analyses, background material |
| Client-facing dashboard | docs/ | index.html plus versioned snapshots in dashboard-versions/ |
| Demo scripts and walkthroughs | demo/ | |
| Personal working files | workspaces/<you>/ | Drafts, session logs, open questions, and proposed-*.md files. Copy _template/ to start. Proposals here feed shared/ |
| Archived / superseded material | _legacy/ | Kept for provenance; nothing here is current |

## Quick decision aid

- Did the client or a vendor write it? -> architecture/external/ (a core requirement or spec) or reference/ (a standard/report taken into the record). A call transcript or meeting note -> comms/meeting-notes/.
- Did we write it as the deliverable spec? -> architecture/specs/.
- Did we write it as analysis about the specs or sources? -> architecture/analysis/.
- Is it a locked decision, risk, or the strategy? -> propose it into shared/ (merger lands it).
- Is it a draft, note, or in-progress proposal? -> workspaces/<you>/.

## The one rule that overrides folder choice

shared/ is merger-owned. Anyone can read it, but changes are proposed from workspaces/<you>/proposed-*.md and the merger lands them. Everywhere else under architecture/, comms/, and contracts/ is append-only shared space: add new files, do not rewrite others' files. See OWNERS.md.
