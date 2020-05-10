---
layout: post
title:  Reliable, Evolving, Agile, Lean
date:   2016-07-21
categories:
  - devops
tags:
  - Learning
  - Continuous Integration
  - Continuous Delivery
author: David Walters
images:
excerpt:
  Great software will survive on its own.
---
```bash
./realblog
```

## `Reliable Evolving Agile Lean`
> *Warning: Star Wars Quotes*

<a title="Leo von Klenze [Public domain], via Wikimedia Commons" href="https://commons.wikimedia.org/wiki/File%3AAkropolis_by_Leo_von_Klenze.jpg"><img width="512" alt="Akropolis by Leo von Klenze" src="https://upload.wikimedia.org/wikipedia/commons/thumb/c/c4/Akropolis_by_Leo_von_Klenze.jpg/512px-Akropolis_by_Leo_von_Klenze.jpg"/></a>

# Software that survives.
A lot of software today is not given a chance to survive. It's written up, posted on the web, and taken down
all within days. This kind of code is 'firefly code' and sometimes that's what we need to get our message across.
We know it's only just barely working. We have factored that into our plan.

Sometimes, however, software is **sold** either as a service or system. If the business wishes to retain
consumers, one way to put downward pressure on churn rates is through-

### Reliability
> "Try not: *do* or *do not*, there is no try."

Software that is **Reliable** can be sold with **Confidence**. Confidence is one of those amazing fuels
which propel the software into the wider arena. When consumers of software are confident in the software,
their productivity is unimpeded by the software. When producers of the software are confident in the software,
the producers are able to make claims about the software which will attract more consumers to the software.

An organisation that offers reliability packaged into its array of products and services will attract
repeat business, and reputation will build for that organisation whose software is rigorously tested
before it is released onto the market. 

### Evolution
> "Be mindful of your surroundings"

Software that is evolving is malleable, responding to external pressure. It is the harnessing of this property
that allows producers of software to react to business forces.
A **[SOLID](https://en.wikipedia.org/wiki/SOLID_(object-oriented_design))** foundation will prepare
the software for continued malleability, allowing it to grow and change with the consumers of that software.

Evolution underpins the software's ability to remain relevant. To stay in use, software needs to add and remove
features and sometimes split or merge with other software. Business *systems* utilise software *ecosystems* and
the application of certain survival traits found in observed ecosystems will aid the software in its continued
survival.


### Agility
> "Feel, don't think"

Software Agility is found when application code follows a set of design principles which provide patterns for
first-commit implementations. Patterns like `Singleton`, `Active Record`, `Composite Object` and `Factory` can 
greatly improve a team's ability not only to develop applications quickly, but to **effectively communicate through
a shared lexicon**. 

Using a suite of unit tests to document application *design* bridges the gap between consumer and provider
design documentation. Using language that is shared across disciplines (such as `As, I, So`, and `Given, When, Then`)
for design feature descriptions, linking requirements to code using a bridging language like
[Gherkin](https://cucumber.io/docs/reference) to describe in detail the consumer scenarios the application
is required to perform facilitates the clarity of communication required to effectively produce software that
will not only survive, but *thrive*.

Using a common, portable design language from requirements through development to delivery is key to
controlling the inevitable variance (from idea to reality) encountered during the production of a 
software system. Those simple phrasings listed above can bind the vision to the reality in a way that
is not possible otherwise. Providing a set of automated proofs that each design statement
(or *acceptance criterion*) has been adequately met by the software gives all stakeholders confidence that
the software is meeting the needs of the consumer.


### Leanitude
> "Quicker, easier, more seductive the dark side is."

If we read our [scalable_architecture](./features/scalable_architecture.feature) feature we will find that
architectures that are implemented "because we might strike it lucky" actually just drain money from our bank
account, and don't provide us with any *value*.

[ ![Codeship Status for whatbirdisthat/realblog](https://codeship.com/projects/78745f10-2ee2-0134-93e4-5ebc8f268022/status?branch=master)](https://codeship.com/projects/163749)

The feature describes the behaviour of IT/OPS departments who over-provision their infrastructure
based on the idea that a one-time-spike in load might "bring down the site". As we can see from the 
[codeship](https://www.codeship.io) status - this fails to deliver on leanitude.

Maintaining a *Lean Attitude* throughout design and construction phase is key to providing an agile, evolving
and reliable system that has a high likelihood of survival. This kind of attitude informs the designers and
implementers as to the patterns they choose when developing the services representing the feature-set of both
the inward and outward interface to the application.

Leanitude gives construction and operations the freedom to question everything during maintenance of an
application: from how a message bus is implemented, to "do we even need a message bus?". In development,
importance is placed on *how to remove code* 
(using a combination of [YAGNI](https://en.wikipedia.org/wiki/You_aren%27t_gonna_need_it) and 
[DRY](https://en.wikipedia.org/wiki/Don%27t_repeat_yourself)).
In operations, this means using architectures highly tuned to the current load. Leanitude says,
"We don't overprovision, we scale".

## REAL software
> "When 900 years old you reach..."

REAL software is software that uses four key techniques from the real world, as observed in successful
inhabitants of planet Earth. These four techniques when combined with principles from DevOps, Scrum,
ATDD and LEAN can help spin up a quality product and keep it running. Apply a little thought to this formula:
```javascript
// some code (I'm told code in posts is cool)

var LEANITUDE = "COOL"
var COOL = "COOL"

describe("Leanitude"), function() {
    it("has a cool name", function() {
      expect(LEANITUDE).toBe(COOL);
    })
}

```

