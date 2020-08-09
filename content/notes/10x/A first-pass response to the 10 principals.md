---
title: "A first-pass response to the 10 principals"
date: 2020-06-19T12:32:19+10:00
draft: false
sent: 2020-06-19T16:46:00+10:00
---

# 10 Global Principals

1. Accelerate business priorities

    > This is backwards. Priorities are to be _clarified_ and then focus must be maintained.
    > Acceleration is not something you "do" in enterprise. Mass is mass, it moves as it moves.
    > To give the appearance of "acceleration", mass must be reduced.
    > This is achieved by identifying waste - at all levels - and removing it.

2. decisions in context of whole enterprise and ruse where possible

    > Re-use is one of the most wasteful and demoralising goals an organisation can set.
    > Front end engineers are chastised when they don't write "re-useable" components
    > Build pipelines and architectural patterns are so frequently bent out of shape
    > and abstracted so heavily that making sense of what they are actually doing
    > is also demoralising and simply not worth the effort.

    > **Yes, patterns are good**. But solving problems that don't exist yet is another
    > form of waste.
    > Oh we really should make a library of re-useable front-end components --->
    > this becomes 90% engineering for re-use and 10% delivering value.

    > **Re-engineer for re-use** -- when pressure mounts to patternise a thing, the
    > devs are complaining about component x because it's not re-useable, and
    > there are **dozens** of re-use implementations of component x in the pipeline--
    > then _and only then_ does it make sense to invest up-front effort in reducing
    > overall repetitive constructions.

3. saas before build versus buy

    > COTS is a convenient way to have someone to sue when things go wrong.
    > SAAS will force the business to conform to the SAAS opinion of how to perform
    > the function. **Any deviation from that opinion** will be costly and untidy.
    > The classic example of changing the SAAS instead of _improving the business_
    > is everyone who changed JIRA because their business was "special" ... ah - no
    > **Customisation** is to be avoided AT ALL COSTS!!
    > In-house software, when built according to "clean architecture" principals
    > that is to say, hexagonal - will keep valueable business IP behind the firewall
    > and allow for connectivity / enhancement without any reliance on external
    > COTS experts or the like.
    > This is why "plugins" are good, or even better, SOA (Service Oriented Architecture)

4. adopt standards and minimise technical diversity

    > Use the **right tool for the job** and don't let dogma ruin the technical landscape.
    > Hire the **right people for the job** and let "Conway" guide the work

5. bias towards speed to market and change agility

    > Release low-risk, thoroughly and repeatably tested features, rapidly.
    > FIX_BUG before NEW_FEATURE

    > Seriously I have never seen a project where speed to market actually got
    > the project out to market quicker. All it did was introduce way more
    > bugs and burnt-out devs, and massive resentment.

    > As soon as it (a feature) works, release it. Make **Damn Sure** it works.
    > Organise your roadmap in a way that accommodates this methodology, where
    > it makes sense to release small pieces frequently, and customers will
    > get "extra", new functionality -- frequently!
    > This is actually a wow-factor. New stuff, often, think of all that seratonin man!!
    > but seriously, speed to market is an anti-pattern

    > SINGLE PIECE FLOW + FREQUENT RETROSPECTIVES
    > among other things, will unlock change agility and get you to market
    > at the **earliest appropriate time**

6. changes to third party vendor solutions by exception only

    > Never change anything, it never works, it always hurts, and it always costs
    > so much more than we thought it would.

7. Ensure processes are optimised before automation

    > Evolve your processes _through_ automation. The correct version of this point is:
    > **Document processes with automation code, then continuously improve the code**

8. build reusable services and robust apis

    > it makes sense to have one service for, say, getting customer data
    > but it makes sense to have a separate service for getting _sensitive customer data_
    > WTF does "robust api" mean anyway?
    > there's a TOGAF thing I like, where applying the strangler pattern around
    > internal services to form a FACADE - this becomes the business INTERFACE
    > as long as that doesn't change often, whatever is behind it can change
    > whenever or however it wants.
    > heh - maybe that's what robust means?
    > So - not MIDDLEWARE (I detest middleware)
    > this is the MIDDLE-TIER

9. architect for mult channel and multi device support

    > um, wow I have nothing to say about this platitudinous cliche
    > without more of the context behind this principal I can't rant and rave
    > too much ...
    > HOWEVER --- clearly define and formalise the channels, set in stone
    > Consult with engineering about where to draw the line with regard to
    > multi-device support ... for example, they will hate you if you
    > tell them we have to support IE9 and Opera on Android Kit Kat ...

10. always on trade and serve

    > This is now called
    > High-Availability and Fault Tolerance
    > Fault tolerance is a slider, the more fault-tolerant you want to be, the
    > more you're going to need to provision, and pay.
    > Fault tolerance is the ability of the system to recover from failures without
    > noticable degredation of service. BIIIIG \$\$\$\$ (but there are cloudy techniques that can
    > deliver pretty good RTO and low RPO using frequent snapshotting and CloudEndure will even give > you block-level replication which achieves near-zero RPO!! Costs money though)
    > High-Availability is similar, just means you need to wire up your cloud so it can grow
    > if you need it to.

    > In the good ole days, there was VERTICAL SCALING - add more ram, beef up the CPU, she'll be right
    > Then there was HORIZONTAL SCALING - but this meant radical changes to the design and architecture of systems before you could realise the benefits ... and you are paying for more
    > servers etc ... had to be pretty good at "guessing your load" and etc
    > Now there is ELASTIC SCALING which is where cost-optimisation meets customer experience.
    > If there are lots and lots of customers hammering the site, AWS auto-scaling will horizontally scale some more servers to handle the load (providing you've designed and architected the thing right of course)
    > Then - when things die down, there are fewer customers on the site - the auto-scaler will kill off as many instances as it can, to accommodate the current load
    > This is why it is called ELASTIC

    > I love elastic, but as a word, when reading AWS documentation, it appears EVERYWHERE!!!!
