---
title: "Planning Poker Considered Harmful"
date: 2020-09-13T16:06:18+10:00
draft: true
---

## Why do we need to ask developers how long their tickets will take?

Work items, especially in the world of digital, are basically all variants of these three primitives:

1. Make a screen to capture some form data
2. Call an API to populate a widget
3. Change one of the above things

When items of work are not appropriately broken down into their component activities we find that ticket titles become vague, acceptance criteria are hard to interpret (or missing entirely) and it's not easy to unpack what it is we are supposed to build, or how we are to test it.

When tickets like these are sprinkled throughout the backlog, planning and estimation will suffer. A lot.

#### In a team with structure...

It is not a **builder's** job to carefully prepare and present the requirements as a set of instructions to compose a group of business objects and actions into an experience.

A **builder's** job is to take a set of instructions, and build to those instructions.

It is a **definer's** job to discover the requirements of the business, and work with **testers** to put together a set of acceptance criteria which will bridge the gap between business and technology.

When transitioning the value from Business to Development, the requirements of the experiment are transformed into a set of build instructions - unpacked into a clear set of objectives, and a definition of done.

### Identifying waste in the "delivery" value stream segment

#### If you added up all the time people spent:

1. Deciding HOW LONG a story point is
2. Arguing about the MINIMUM story unit
3. Ranting to their team mates about how wrong their IM/SM/etc is about their story points
4. Vehemently lobbying for complexity not time
5. Energetically advocating time-based points instead of complexity-based points
6. Ranting about how their team mate is SO WRONG to be arguing for complexity-based points
7. Ranting about how their team mate is SO MISGUIDED for choosing time-based points
8. Trying to justify their position on the above
9. Trying to convince other teams they are DOING IT WRONG
10. TRYING TO ESTIMATE THEIR ACTUAL STORY then defending it over and over during planning poker
11. SITTING THROUGH HOURS watching other people defend their estimate in planning poker
12. Secretly wanting to be swallowed up in a hole as their PO says "cmon mate, you can make that a 3 can't you?"
13. Beating themselves up because they didn't make done
14. Re-calibrating themselves to try and get their estimates right
15. Arguing about how their team mate has messed up the team's velocity because they are always getting their estimate wrong
16. Complaining about their PO because they keep turning an estimate into a deadline
17. Complaining about their PO because IT TAKES AS LONG AS IT TAKES MAN!
18. Wishing they were better at their job because everyone else chose lower than they did at planning poker
19. Feeling like a total loser because they always choose higher than other people in planning poker
20. Secretly pitying / resenting that loser who always takes longer than they said they would
21. Secretly resenting that rock star who always delivers to their estimate
22. Explaining to the management people that estimates and story points are really just a guide

#### We could have delivered the sprint by now!

Jira has the Control Chart where we can see how long the average ticket takes to run through the team - cycle time. Cycle time is a nice little metric we can use to make a reasonable prediction of how long things will take so we don't overload the team for any given sprint. If we make sure the tickets are nice and clear, unpacked and kicked off, with a high degree of coverage in the acceptance criteria then the regression across a time series can tell us how long things usually take.

We can even **retro** the outliers, find out why the didn't fit into the first stdev or whatever, and y'know -- IMPROVE! Dear me, we might even see a few less "TEAMWORK :heart: " tickets on the lean coffee board because finally, people are seeing and understanding how kaisen can be applied to software delivery instead of frantically scratching their heads to think of something -- anything! -- to write on a lean coffee ticket and coming up with, "Great week". :fire:

> :timer_clock: Don't waste developers' time by asking them to provide estimates :timer_clock:

The harm these estimation rituals do is so ugly, and so insipid. Developers should be thinking about WHAT they are doing, and NEVER thinking about how long it will take. This is the most obvious example of waste in this whole broken system! Hey, IM! Stop getting your developers to do your freaking homework for you!!!
