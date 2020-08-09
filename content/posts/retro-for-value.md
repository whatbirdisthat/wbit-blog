---
title: "Retro for Value"
date: 2020-08-08T17:58:45+10:00
draft: false
---

## Retrospectives and the Tightest Possible Feedback Loop

Retrospectives that happen infrequently, say every 6 weeks are less effective primarily due to the amount of time spent "doing it wrong".

These habits become so ingrained and taken for granted that by the time retrospective comes around, the team is highly reluctant to change the way they are working and try to push back on any (now major) changes to the way of working that will cause a momentary stoppage in the flow of work.

It is this reluctance to take the time to re-evaluate the flow, to "slow down to speed up" that causes the inevitable spiral towards ever increasing velocity losses, build up of escaped bugs, bottlenecks and prioritisation errors characteristic of under-performing teams.

### Signals of imbalance

Teams which, on paper, are staffed with highly capable and well-respected individuals. It is no one-person's fault - it is the fault of an approach to team strategy and the failure to use appropriate metrics to signal corrections in course that will allow flow to return to expected velocities.

But how to identify these signals? By the time management recognises the failures of a given team to deliver value to the customer in a prompt, efficient and profitable way, it's easy to start apportioning blame. The problem lies with the vendor. The problem is with the iteration manager. The team is too immature. The product owner is stuffing too much work into the backlog. QA is failing to find bugs.

What if all of these things are true, but they are in fact not the **reason** the team is running so slowly? What if there was a way to compress the time spent _actually doing the work_ into manageable chunks of time, without interruption and with an appropriate division of work items that catered to the three pillars of value: Features, Risks, Debt.

Instead of the traditional trade-offs where the product owner (the business representative for the team) is forced to schedule defect-fixing over risk-reduction or technical debt before features - what if the strictest of adherence was paid to the balanced allocation of work items for the three pillars?

Instead of applying pressure to developers to ship code more quickly or to the QAs to verify newly released features, what if developers were encouraged to spend extra time to ensure their code was thoroughly, and _provably_ tested? What if QA was encouraged not only to automate the "usual" tests around a given feature, but encouraged to spend **extra time** to explore each item of work and apply creative, imaginative and rigorous techniques to break the build.

What if a broken build was a thing to be **celebrated**? What if the person who broke the build was given the time and space, support and attention to really know what it was that caused the broken build in the first place? And, if the person who broke the build was a QA - what if the development team developed a creative way to catch that in their unit tests, patternised it - **learned from it**?

Surely this sounds like a very bogged down process?

But what if this was the **only** process? What if **every work item had its own retrospective**?

This is the tightest feedback loop I can think of right now. It is these learnings that, once a week, are presented to the team for wider discussion and learning, incorporation into the way of working.

So the question remains, with all these ceremonies, is there any time for the actual work?

### No more meetings

Given the following iteration plan:

| Day | Actor | Activity                                                      |
| --- | ----- | ------------------------------------------------------------- |
| -1  | PO    | Selects one work item from each pillar, to commence on day 1  |
| 0   | ALL   | Retrospective, lightning talks, sprint goal, 3A organisation  |
| 0   | IM    | Assigns work items to 3-amigos for kickoff                    |
| 1   | 3A    | Work item kicks off, 3A in high-bandwidth collaboration       |
| 1+  | 3A    | Work item ships, retro                                        |
| 2+  | 3A    | Applies learnings, writes enablement code, pays debt          |
| 2++ | PO    | Selects one work item from the next pillar for each idle team |

With a standup at the earliest convenient time for the team each morning as the only collective touchpoint and all other "meetings" are actually 3 Amigos tactical squads who are pairing on code, clarifying requirements, feeding back to PO, communicating with dependencies (until all external dependencies are brought into the 3A organisation - one-big-team) and spending equal time working on the three-pillars' aspects to any given feature.

Applying all three pillars to every feature seems like wasteful recursion, but in fact it is this triple checking that ensures each feature is appropriately weighted with each of the value pillars before it ships.

What this does is _reduce_ the accumulation of Debt work items, and is a limiting factor on the Risk work items. The Big-Ticket work items are effectively sliced and grafted into every new feature, thus ensuring each of the three pillars is address from a macro and a micro perspective.

To make all of this work, a profound and breaking change to the way a team works is required. This is not capital-A Agile, this is not Devops, nor is it specifically Lean Thinking. It is a focused and tightly woven sequencing of play that takes each work item as a unit of flow, and applies the SERVICE_TEMPLATE pattern to it.

This has been inspired by the Flow Framework, and the three pillars of value are either stolen, misused or re-shaped from there.

### Making it work

The only way to get a team of any size adjusted to this kind of completely foreign construct is to spend some time in simulation.

Simulation is the playing of games. Games bring the element of sport, friendly competition and helpfulness that accompanies low-stakes activities.

Simulating the iteration plan outlined above is simple when applied to any number of traditional flow games.

Folding paper aeroplanes, the beer game, even the game from The Goal. These simple games with (the fewer the better) simple rules are easy to understand but difficult to master. It is with the application of the plan outlined above that the team will start to learn how to operate in this new way, and grow used to it without the pressure of production, the constant increase in the actual duration of a given item of work from its estimation.

### Single Piece Flow

It does not make sense to use estimation to plan a set of work items for a given "sprint". This turns the estimation into a deadline, no matter how it is framed. Once there is a deadline, pressure forms around the item of work. That pressure causes cracks to form in the veneer of quality and debt will accrue as less time is spent thinking about how the item of work would be designed for the future. Security is overlooked in favour of convenience, and bugs escape to production.

Instead, feeding items of work one at a time, allows the team to feel relaxed and valued. They are not being questioned about "how long" and "why is it not done yet" because no single item of work is resting on a single person's shoulders - it is the 3 Amigos construct that allows the responsibility to be shared and therefore each player is able to step in when another is starting to lose momentum (either tiredness, knowledge gap, screaming kids) and fire up fresh engines. This is made possible by all 3 Amigos being allowed to focus on a single item of work.
