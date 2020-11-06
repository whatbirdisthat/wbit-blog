---
title: "Tributaries to Delta"
date: 2020-11-05T23:03:48+11:00
draft: false
---
# Tributaries to Delta

A view of deployment that models the flow of work as a river system.

## One Code Change

One code change transpires and thus condensation forms on the v-moments of the change capture surface.

Groups of these changes merge to become something with enough gravity to cause a moment of pressure.

A developer writes _n_ changes to the codebase (change capture surface) and a droplet is formed.

The developer's Pull Request is that droplet.

When the droplet is released from its stasis by acceptance of the pull request (some force is applied) a rivulet is formed, and the droplet of change moves toward the nearest-lowest point. The Rule of Vs tells us that liquids when connected by gravity (their own mass the determinant) to the earth will react to the effect of the earth's gravity and _flow_ toward that point.

Landscapers and farmers use this rule to collect water in dams, permaculture designers (for example) will optimise for not only z-index but the capturing capacity of a given plot's topology when choosing flora.

## The Change Pool

Distributed source code manangement tools have been optimised specifically as a v-moment, a dam, a test tube. Individual change droplets can be scrutinised by a fleet of rules engines, to ensure the droplet does not contain any contaminants.

Much the same as one might collect rain water in a test tube and analyse its content. In the case of a public pool - where water has been specifically channelled, using forces other than gravity - the water is _continuously_ streamed through the pool and into an array of filtration devices, samples diverted to any number of chemical analysis tools.

In the case of the formation of a code tributary, the _stream_ of changes produced by the developer will be _pushed_ (using force) into the "array of filtration devices and analysis tools".

## It's Raining Change

A business typically wants to make a significant change. The magnitude of a change may be several developers writing streams of change for some months, in this example.

When we introduce the **Continuous Delivery** concept we are modelling the behaviour of our change agents on the precipation of droplets. Those droplets can be analysed, scrutinised, executed and harrassed by a surprising number of freely available, open source, industry-approved tools.

Where the river system analogy starts to coalesce is when we consider that we must take what is effectively liquid, and optimise both the placement of the _pumps_ and the _filters_.

The developer is the first pump- _pushing_ their changes to source control.

CI-enhanced source control allows us to treat the droplets as they are pushed. SCM triggers CI - CI is the next pumping station which performs a raft of analysis on the droplets before it will fire - creating a dam.

## Why Dams Are The Thing

Consider that a business has a comprehensive change stream (a rain cloud) involving multiple applications, channels, systems, image.

The capture surface for each class of change must be optimised to carry that stream of change with the least resistance, like corrugations on a tin roof, or the downpipes indeed - the first time we have mentioned pipelines. Pipelines is a nice analogy but adding gravity as a dimension aids in visualising potential improvements to the capture surface.

When there are many tributaries running to the main river, many initiatives delivering many features delivering many change sets delivering many commits (to use developer jargon) - revisions, change events. V-moments.

## Collect and release

Where cost meets risk, is the example of the delivery team given the task of making a set of changes to the public web site and decide that because they are not _continuously streaming their change_ they must collect a large amount of change into a dam, and periodically use force to give momentum to their stream.

This force in fact comprises a great deal of risk. The easy visual here is "opening the flood gates".

Unless you have absolute certainty that the force exuded by the release of so much effort/revision/change into the river will cause no damage downstream the chances of actually releasing something defective (polluting the river system) are known as the compound risk principle.

1 droplet will have, on average, a 10% chance of being in some way defective.
2 droplets: 10% of 90%
3 droplets: 10% of 81%
4...

## We Release Once Every Two Weeks

This is a vast improvement on cycle times in the months or years. Yet, the risk is so high that a sensible decision is to _prepare for it_ (or sadly, handball it) rather than simply preventing the accumulation of the risk itself.

It is the team that is using their SCM/CI as a dam with too much capacity that risks releasing "algae into the river" when they open their flood gates. This is a localised optimisation that actually prevents the stream of change from moving cleanly and worse, requires the use of so much more force to operate.

Consider the amount of effort (we all know I mean dollars here) spent "fighting fires", fixing minor defects, responding to incidents, things that (although yes, it provides work and thereofore jobs) are essentially performing CPU-steal on the people who are in fact, already busy or worse again - could be actually building the things to realise an initiative.

## Light Weight Code Forge

The light weight code forge uses the energy already provided by the change, to propel the change as soon as possible to the change stream. Once the change is in the stream, the risk is being paid down by automated tests, code analysis tools, etc - to quote Ghostbusters (1984) "Light is Green, Trap is Clean".

## We collect five jira tickets onto a feature branch and release that

Immediately. Continuously.

There is certainly less risk involved in releasing a small batch of change, say a new screen for the web site that calculates something for the viewer.

When we accumulate several such screens, APIs, systems - v-moments - we are stressing the system with a large amount of gravity (risk) and unless the system is powerfully robust something is likely, statistically likely, to break.

## Reduce Force With Automation

Automation in the build forge is a powerful enabler when enhanced with deployment capability. Deployment capability when performed by humans requires large sequences of risky tasks. When integrated with the _inherently present_ risk of the change stream itself, automating a deployment is far less prone to error and is itself, subject to continuous improvement.

When build is code, that code then becomes a simple stream of droplets which form a tributary to the value stream as does the application code, the testing and analysis configurations etc.

When used in this way, the force is applied _strengthening_ the system, rather than _fixing_ the system.

## Deployment Pipelines and the Value Stream

Considering the behaviours exhibited by contributors to change, the flow of that change toward "Production" it's easy to visualise the PRE-PROD (UAT) environment as the delta of a river system, where the streams of change are flowing (mixing?) out to sea. At the river delta, we can wade around and sample the waters, one last time, to ensure our contribtion to the ocean of PROD is non-polluting.

By removing the "does this thing actually work" from the UAT moment, we can genuinely allow the commissioners of the change stream to _see it_, _use it_, even _experiment with it_.

## So what is the right size for a delivery to PROD

Considering the nature of the change, the architecture of the system and the maturity of the value stream, the methods and principles chosen by contributors will determine ultimately the minimum-achievable delivery increment.

## What about Big Bang campaigns?

In a sufficiently scaffolded system, it is not inconcievable to hold UAT streams that will go live at any point (days, months, years?) in the future.

## Rivers, Streams, Continuously.

That's the new thing. How much force are we applying at each stage of our delivery cycle? And can we convert that cycle into a stream, applying force to divert rather than pump the droplets as they form tributaries to the value stream.
