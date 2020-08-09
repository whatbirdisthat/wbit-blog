---
layout: post
title: "Script the world"
date: 2016-07-22 14:20:55 +1000
categories: devops
draft: true
---

# Applied Devops

## `Script the world`

Software entities typically evolve through a common set of phases:

```
    1. Design
    2. Construct
    3. Race
    4. Crash
    5. Repair
    6. goto 3
```

Early devops used the scripting of infrastructure to propel software at low friction and low variance,
achieving unprecedented levels of control and reliability.

## Devops reaches further than just the infra team. It connects all disciplines

-   Devops thinking brought 'master == prod'.
-   Devops and chaos monkey are like the chicken and the egg.
-   It has been said that Devops is 'ops for the delivery machines'.

## Repeatability

Devops tells us to construct our environments using a set of scripts so we can repeatably build
the software in a number of configurations (dev, tester, pre-prod, prod) and in a way
that reports its health, calls home for event logging if it needs to, etc.

Those scripts, by their very nature, are software. That software, therefore, deserves to be tended
like to any other software: distributed scm, standard design patterns, clean code, test-driven development.

## Tests as documentation

The problem observed by Robert C Martin was

> All documentation is lies.

Well, that was _a_ problem observed by Uncle Bob, who writes that an application's design must be strong
enough that the implementation describes the intent. Self-documenting code.

This has from time to time been mis-quoted to

> good code documents itself, so I won't bother to write any documentation...

This of course leads to no documentation at all, which will never be out of sync at least.

We already have a synchroniser process built into the delivery pipeline. It's the unit tests and acceptance tests
that run to 'ensure the quality of the software'. We could load that process a little more
with a bit of documentation, the kind of documentation that is **bound to the software**.

This is of course **the tests** - and if the tests are written with a mind to proving the software,
they can be expanded to cover the documentary material for and set of features present in the software.

## Harnesses and rigging

The passing or failing of these tests provides a very detailed window into the patterns and complexities of
the software during the phases of its development. During initial build, sponsors can view the list of
failing tests as a guide to how far from 'done' a given delivery team is...

It is **precisely** because these tests are written in good old-fashioned code, under SCM, that the implementors
can alter them to document an entirely new design - thus we are still able to 'update the documentation'.

Development and build teams utilise the common 'rigging' test libraries for quick access to common actions
like 'provide a user object with randomised details' or 'start a server locally and listen on port 1138'.

The harnesses and rigging provide massive power to developers who want to quickly throw together a working
proof of a/how a feature is used and b/that it actually does work.

Then we trust the documentation is not out of date, because if the tests don't pass the software is broken.

## Update the documentation by `fixing the tests`

The tests must successfully run without error before the system assembly phase is even available to the pipeline.

The structure and content of a test suite will show, in guaranteed-to-work examples, every feature in
the system.

## Tests as source-of-truth for software design

If there is ever the question "what is it _supposed_ to be doing?" The tests will come in handy for
more than just 'making sure it works'.

The tests are also a highly effective tool for the presentation of value, usually modelled as collections of
specifications. These collections would provide a script for the times when the maintainers of the software
would 'run a regression'. Devops would script a regression.

## Continuous improvement

There are stories about legendary organisations where every member of staff, every day,
found something (no matter how small) to improve and improved it.

Devops provides a way to mount and inspect the software, using a rigging that is entirely
configurable in its own right. Know the software, improve the process with ease.

Designers can visualise the application in its own harness, in every way just like any physical product
prior to manufacture.

This unlocks the powerful ability to analyse and iterate on the implementation patterns
as viewed from a working rig - changing the implementation under the rig causes the **documentation** to
change too. If that documentation breaks, goes out of sync, then that failure has occurred far closer
to its point of origin due to the scaffold code wrapped around, both explaining the sponsor's vision for
this software, and how much of that vision currently functions.

## `import continuous.*;`

All of the above is vapourised when the coverage of the testing code (all automated testing) falls below a
critical threshold.

That threshold is 100%. If the code is not covered 100% reports on the intentions provided by the
software fail to deliver thorough documentation. When <100% the ability of the maintainers in the future
to read along and pick it up is impeded, and there are already so many tests that cannot be performed during
**data variation** that it is in fact trivial to implement 100% coverage of predetermined logic.

Elevating the **potential** in the software delivery pipeline allows for must less friction on the journey
from idea to reality. Automating steps in that journey such that "a commit to master is a deployment to prod"
can be said of the delivery team supporting a given software entity. A delivery team who deliver continuously
do not have to endure the severity of a three-months-in-the-making quarterly release, and all the checking that
requires. They only need to prove a few hours work.

1. Software in this case, is any collection of coded intentions. That's anything from a two line bash script
   to a fleet of servers running dozens of applications serving crowds of clients like all the time.
