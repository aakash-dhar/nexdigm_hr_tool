# Discovery Call - Verbatim Transcript

> Verbatim auto-transcript from Otter.ai, provided by the client. Speaker labels are "Unknown" and text is machine-transcribed (names and Hindi phrases are often mis-heard); reproduced as received, unedited, as the source of record. A synthesized, legible summary is in 2026-06-25_discovery-call_SUMMARY.md. Filed 2026-07-16 into comms/meeting-notes/.

---

Unknown 0:03
One really, there are two documents, basically. There was an original BRD, which we started, and then we had incremental updates request, also. But I can share later on.

Unknown 0:15
See, one is that, which is basically appraisal computation engine.

Unknown 0:21
Typically, at the air end you will have your ratings going in, you'll have calibration that are done, and then an output is there of increments and bonuses that need to be paid, along with certain calculations or probation based on data running, etc.

Unknown 0:35
So that's the engine which we developed in house, but it never took off for multiple reasons, UI was not great, errors were there, UAT Mitchell, production manager, and all those issues. So that's one life requirement that we have this year. We may not move forward with it, so we usually require it from December to March. That's the period in order to start going in December, because we run a simulation first, which helps us in budgeting exercise, and then live activity happens in March, and then the payouts also happen this year. We've decided we will not use that system, because three years we tried, and we decided, let's start it now. Let's create something else. Having said that, we decided not to do so because of our understanding of the time taken to develop a system. Okay, now if the time taken can be lower, then definitely we could consider even for this year.

Unknown 1:36
We moved from Excel, so this year and December this year, so we move from Excel to this, it's like going back to Excel, but

Unknown 1:48
so that's one of the key requirements.

Unknown 1:55
It's a very simple tool.

Unknown 1:58
The thing that we expect of the tool is also not rocket science. Absolutely, if good developing company is there, it shouldn't take more than a month. Month is circular penny to prepare them. It's all arithmetic. Excel can do it to so much if

Unknown 2:17
it is. If Apna Excel,

Unknown 2:22
Neha.

Unknown 2:39
nonsense is there with Excel and senior time, because of confidential data, even if a junior person can do it, we cannot give it to a junior person, correct? Plus, platform will also have its own workflows, right? So user profile

Unknown 2:59
and apnea, ideally Darwin box,

Unknown 3:10
which is a very good platform, best in India right now.

Unknown 3:15
We are end to end on Darwin boxes, including people, so

Unknown 3:22
SharePoint, we

Unknown 3:22
technology under the wraps, I think now SharePoint is created somehow, and login you want Azure SSO

Unknown 3:41
and users, so I'm assuming the tool will be like some forms that you have to answer login system when a user comes in, correct, and then you will have an admin which is assigning managers to each user because review the manager login answer key will probably basically information, and there will be rules set already in the system. And what is the simulation that you run? Simulation is the same platform where we run it internally between finance and HR, right? So we put certain assumptions in the system and simulated to show what is going to be the increment and bonus outflow,

Unknown 4:29
so what I understand is not what you're saying, so they are using it currently only for calculations, so they are using it for both. So I just want to understand, so when you're doing an appraisal for somebody, so is there some feedback that is taken from managers or peers that go into the system, which is used to calculate this, or that is not there, or that's not how you do it. The performance reviews are happening on Dartmouth, the HRMS, okay? Right, and the outcome of that is a performance rating.

Unknown 4:58
Now that performance rating, I'd say one to five, depending on whether it's four five will throughout the incremented bonus percentage, where which is arranged to agreed at the back end, so the performance review is separate. Yeah, and the calculation bit is what we had developed.

Unknown 5:14
But why do you need a login system then? Yeah, no, they still need a login box with a single login to see what their performance ratings, so increment decay, increment decay, kata. They can also make changes within the rules that we set in the system, for example, in the users that we assigned in the platform. So, for example, Vinay looks at his entire vertical, okay, and then

Unknown 5:51
then we are in the world of magic right now, which is AI, so you can build this out pretty quickly, pretty confident about it, obviously. If you have designs or BRD, will help, and I can, I can

Unknown 6:07
create a quick proposal and send it your way, so that you have budget and everything that is required. And then we can kick it off, so even if you, even if we say we kick it off, let's say 15th of July, if it takes 15 days for you to do all the decision making approvals, and everything. We should edit you by 15th of August, or worst case, first

Unknown 6:32
of September.

Unknown 6:37
How we are building as a philosophy is that we're building harnesses that build the tool, so color tool ko kuch na ya feature ad karna ya ad karna. It's very fast because you're you've spent most of your time creating the process to build the tool. So tomorrow changes, nehabi, let's go and start doing something else or add another feature to it. If it comes, then it's very fast. Also, and typically, how do you manage the admin bit? And do you deploy it in our instance, or how do you manage that? So it depends on the COE team.

Unknown 7:18
Do you want this deployed within your in-house.

Unknown 7:22
You want it deployed with us code base set of transfer.

Unknown 7:28
One of the challenges with this platform was testing it, because confidential information. So, testing, I mean, the ones who developed it did not test it, so to say, but the lucky part is that we are a third party with no vested interest. So, if we tested confidential information, it's the safest thing for your call. I can give it to anybody. If you want to test it, only you guys need to test it. Then we'll give you access only to that, you know. I suppose there's more,

Unknown 8:05
so maybe I'll put stitch the two BRDs together, version one and then version two, all enhancement, and give you one document, and then you come back. Yeah, and what about design and all? Was it already designed? Basic UI

Unknown 8:22
was there. Absolutely, but we would have some speed shots design wise.

Unknown 8:31
We have the freezer PDF.

Unknown 8:39
Do

Unknown 8:42
you want to do a design with us, or we'll just do whatever the best

Unknown 8:53
functional.

Unknown 8:58
Just talking, there are some people who are very picky and choosy about

Unknown 9:04
familiarity with the current tool that they're using, they're not using any association with that

Unknown 9:13
tool, it

Unknown 9:18
might be a good option to at least it and no, I also do. We like the fact that from your HRMS, like you get an output, and then you just want to plug that into the system for calculations, or do you want a separate tool that only does appraise it, like right from your collection, like as so like the feedback that you give for me, the managers, the peers, versus my own feedback for myself. Based on that, there is a solid building the good to have things in the BRD, so I have some workflow in my mind. Ideally, from the HRMS, the rating should come in promotion recommendations should come in finalized on this platform. It runs the computation, and then the output goes back to the HRMS for payroll processing. That's an ideal system. HRMS has APIs, which is good, pull and push.

Unknown 10:17
So that's an ideal scenario where I'm not doing anything outside 1500 people right now,

Unknown 10:28
and you do this

Unknown 10:32
once a year. Yes,

Unknown 10:37
but we

Unknown 10:46
require requirement, they were not able to deliver the way you wanted, was it a problem of your BRD? Then that is going to be starting point anyway.

Unknown 10:56
So that I plan to now combine both BRD one and two, that will make sense for them

Unknown 11:03
too, and plus some of the teachers that I just actually want.

Unknown 11:10
Send me the BRD. I'm happy to do. I think both of them will be more involved. I'll be there, obviously. You can always reach out to me, and then we'll have one developer, essentially building this out. We should be able to do this.

Unknown 11:32
I think Ride BRD will make the job quick,

Unknown 11:40
something that they need to deliver in three to four weeks, so it helped them quite a lot.

Unknown 11:53
Maybe they got to know the BRD for the UAE

Unknown 12:02
has to be, if you all have a template of a BRD, do share at least the sections that need to feature draft.

Unknown 12:13
If you give me a draft, then we'll have to have two, three calls to refine it by refine

Unknown 12:25
on point with the BRD.

Unknown 12:28
Indie is

Unknown 12:32
signed already.

Unknown 12:34
The more the details in there, it will just help us. Whatever you can put in there confidence is BRD really has everything that we want

Unknown 12:49
now. See, and you can send this as a word tailored to the capability of development. So I'm saying, from now till the time you enhance it, don't wait, give what you have enhanced

Unknown 13:08
version.

Unknown 13:09
So you are saying b1 B R d1 B R e2 and enhancement combined one document is what I will give. Just to let you all know, I have looked at systems off the shelf, which ones will be you can tell them

Unknown 13:24
box he integrated platforms held to his partner's head, and why you're not choosing? They were too expensive for us, for the headcount, for the need that we have didn't make sense subscription model.

Unknown 13:40
Control

Unknown 13:44
subscription model, so out of curiosity, How much

Unknown 13:51
subscription model we can think because then enhancements, then that gets covered in the subscription, and if this doesn't work for us after two cycles, then we are okay to move to something else. Otherwise, on one time, cause you all propose, no, whatever.

Unknown 14:09
I'm okay to consider. In fact, just to share, we are gonna go to market with some of our HR offerings also.

Unknown 14:18
Okay, so this is a need for many organizations, this

Unknown 14:30
we can take it to market. We'll

Unknown 14:37
think about that once we get the more details, the better, sure.

Unknown 14:47
And maybe we will challenge this.

Unknown 14:50
I'll just show you what's on my mind as well. HR roadmap is concerned, mr.

Unknown 15:02
a few pointers that we put together,

Unknown 15:07
so on the administration side, on the

Unknown 15:14
administration side, day to day, the chatbot agent internally, so we have our SOPs policies and all of that, which is which will aid the team,

Unknown 15:27
good processing, maybe good aspects here, which are still very manual, right? So we could look at automation there and align to that would be again the query handling, which could extend to the employees as well, while the inbox has something, but thinking of something different on the insight side, insights and reporting analytics would go hand in glove, I think.

Unknown 15:51
So, sentiment analysis, early warning signals, improving time to hire based on the data, and lastly, learning effectiveness, so all of this has the HRMS on the learning effectiveness. We have an LMS disperse, so data is there, information is available. How do we just about analytics on top? Yes. Okay.

Unknown 16:18
Early morning signal is so all of this is in Darwin Box extension.

Unknown 16:26
I just want to understand, how much are we paying for Darwin box right now?

Unknown 16:29
If you're okay sharing,

Unknown 16:34
I can let you know later. Excuse me, I don't recall.

Unknown 16:37
We are with them for almost six seven years now, because of our legacy relationship, the rate is in check. Okay, so pretty expensive. If we can build it on top of crafters, is what I was thinking.

Unknown 16:55
Let's first, let's give them the confidence that we can do it, because a lot of our clients, what they're doing, so one of our biggest clients has $100,000 Salesforce license.

Unknown 17:07
Salesforce, they use only 10% of the features, so they've given us the contract counter to our Salesforce. Whatever we are doing in Salesforce, we build it ground up, and we want to replace Salesforce. So, but those are later conversations. First, you build a small tool, you'll get how we work, you get a test of our team, go get them, the sky's the limit.

Unknown 17:28
Agreed,

Unknown 17:31
that's good real time to explain. And then, for budgeting and processing, we spoke about increments just now, and then on manpower, more of recruitment, right. We have certain budgets that are set for the year. Then, how are those indents or mandates progressing? Utilization of budgets. So, this is like a high-level roadmap that I've created. Prioritization may, because I don't have a tool right now for this, and it takes time. I'm starting with this, and for all these, like the chatbot and all these things, you have the documents. No, I'm going to create those for sentiment analysis. I created something, and time to hire also.

Unknown 18:11
So we're talking to Mukesh, you might have interacted.

Unknown 18:14
I've done a workshop with him on these two areas

Unknown 18:21
again, the speed that we can move with is as long as everything is in place. A lot of time goes in the finalizing things, making the documents are in place, that takes most of the time. Then we can move with, so let's start with the increment bit. I will come back to you in a couple of days. Send me the PRD, and you have my email.

Unknown 18:40
Okay, let's start with the increment bit. I will come back to you in a couple of days. Send me the PRD, and you have my email.

Unknown 18:51
just send me a phone number,

Unknown 18:55
double zero,

Unknown 18:59
triple 71373 triple 71373

Unknown 19:06
India me double 08 double 08

Unknown 19:15
double 07 triple 71373 of Okay,

Unknown 19:34
I'll send you

Unknown 19:37
a word.

Unknown 19:41
Likewise, give me the.

Transcribed by https://otter.ai
