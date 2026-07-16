# Discovery Call - Synthesized Summary

- Date: 25 June 2026 (per the Otter.ai note timestamp; the client shared it during this engagement)
- Parties: the client (Nexdigm, HR/Finance leadership) and BetaCraft (delivery vendor)
- Source: Otter.ai auto-transcript. It is rough (mis-heard names and Hindi phrases); the verbatim file is 2026-06-25_discovery-call_TRANSCRIPT.md. Quotes here are lightly cleaned for legibility, never for meaning.
- Filed: 2026-07-16 into comms/meeting-notes/ per FILING-GUIDE.md and CONVENTIONS.md (summary + verbatim transcript).

## Purpose of the call
An early scoping conversation about replacing the client's annual compensation (increment/bonus) exercise with a purpose-built application, plus a wider relationship and HR-roadmap discussion.

## Key points

Context and history. The client built an in-house appraisal/increment calculation engine that "never took off" over three years - poor UI, errors, and an inability to UAT it because compensation data is confidential. They run the cycle once a year: simulation from December for budgeting, live activity in March, then payouts. They have decided not to reuse the old system.

Scope and nature of the tool. The client frames it as small: "a very simple tool," "not rocket science," "it's all arithmetic," and "shouldn't take more than a month" for a capable developer. Delivery was floated at mid-August to early-September. Whether to attempt it for the current cycle is conditional on speed ("could consider even for this year").

What the tool does. It is the calculation engine, not an appraisal tool. Performance reviews happen in DarwinBox (the HRMS); the outcome is a performance rating (described as 1 to 5). The tool consumes that rating and computes increments and bonuses. Appraisal/feedback collection is explicitly out of scope.

Ideal workflow. From the HRMS, ratings and promotion recommendations come in; the exercise is finalized on the platform; computation runs; output goes back to the HRMS for payroll. DarwinBox has pull/push APIs. Scale is ~1,500 people, once a year. Year 1 runs on upload; full API integration is the future ideal.

Platform. DarwinBox is their HRMS (they consider it best-in-class in India, six to seven years with them). Login should be Azure SSO. Deployment is undecided - hosted in the client's instance vs hosted by BetaCraft with a code-base transfer. Confidential-data testing is a central concern; BetaCraft being a neutral third party is pitched as the safe way to UAT.

Design. A basic UI existed; the client has a "freeze PDF" of screenshots (not yet shared). Open question: design fresh vs match the old tool, since some users value familiarity.

Commercial and strategic. The client is open to a subscription model (covering enhancements) and would move on after two cycles if it does not work; open to one-time as well. Off-the-shelf platforms were rejected as too expensive for the headcount. BetaCraft intends to productize HR offerings and go to market. A broader HR roadmap was floated for later - internal chatbot on SOPs/policies, query handling, sentiment analysis and early-warning signals, time-to-hire, learning effectiveness analytics, and recruitment budgeting - explicitly future, not part of this tool.

## Immediate next steps agreed
- The client will combine BRD v1, v2, and enhancements into one document and send it, along with contact details.
- BetaCraft to prepare a quick proposal (budget and scope) so the increment tool can be kicked off, starting with the increment piece.

## Where this fed
This transcript, with the client's requirement document (architecture/external/), is a source for our submitted BRD (architecture/specs/BRD_nexdigm-hr-tool.md). The reconciliation of the two client inputs, and the coverage of our BRD against them, are in architecture/analysis/.
