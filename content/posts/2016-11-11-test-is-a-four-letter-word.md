---
layout: post
title:  "TEST is a four letter word."
date:   2016-11-11 18:20:00 +1000
categories: quality, devops
---
# 'Test' is a four letter word.

## These days it is so easy to tie ourselves up in knots with one simple word.

Testing is something that ought to be a part of the fabric of the delivery cycle,
the *skein* of the SDLC.

Analysts should be testing their requirements against both the business and
the delivery teams, frequently asking "is this what you want?" and "can you build this?"
so as to gain rapid feedback about the direction they are leading the software.

Developers should be writing tests against their units of work, in order to
prove that each unit complies with the requirements (specifications) gathered by
the analysts, and that it does not fail with implementation errors.

Quality Assurance analysts should be testing the features as presented by the devs
in order to provide confidence to the business that they are getting what they
have asked for.

Software engineers in test (SET or Automation Testers) should be testing the software
for behavioural and data integrity, to protect against regressions and defects
as the software nears the release point.

Acceptance testers (business users) should test the software against a set of
expectations that a user should be able to operate the software as designed,
documented and advertised.

The business itself should test the software against the assumption that it actually
solves a real-world problem, fills a niche, or just generally is worth selling.

All this is *Testing*. A miniature Bullmer stomps about on my blog-stage ranting, 
"Testing testing testing testing testing....." - because the word has become so
diluted as to be pretty much meaningless now.


## YES! We need to TEST!!

Now we have agreed that we need to test, the business asks that we undergo a 
transformation. Developers, please use TDD to develop your work.
But developer "X" says, "I'd prefer to use BDD for my work". Because we're all
petrified of making "X" uncomfortable (we don't push people out of their comfort
zone any more apparently) - we say "ok ... um how is that different from TDD?"

Developer "X" says, "I write Given When Then statements and run a cucumber script".

Oh! That's what the automation testers are doing!. Great! Does that mean you are
helping them to write the acceptance tests?

"No. It's different."

Developer "Y" says, "I use spock".
We groan. Why can't they see? Why don't they understand the stratification? Software
is layers of implementation - and each layer is ... "tested" using a slightly
different protocol.

## A rant...
    TDD, BDD, ATDD, CDD ... All these things exist because thought-leaders have found
    that they needed a slightly different pattern to provide confidence in the area
    they were working on at the time.
    
    TDD is for units. Bottom up. xUnit.
    BDD is for features. Top down. Cukes, Spock.
    ATDD is for Teams - cycles of BDD/TDD to provide completion insight. Scrum/XP.
    CDD is for integration proofing. Pact, Wiremock.

They aren't like hair-styles or OS - they are purpose-specific. The type of testing
you choose should be dependent on *what you are doing*.

## Ok where were we...

We inform the automation testers, "you are software engineers you know!" (they say
"wow! we've always been sneered at by the 'real' engineers!" - "so you need to 
write your acceptance tests using a TDD approach" ...

## "Oh - but why would you need to test the tests?"

At this point, the transformation coach must pause. It is tempting here to launch
into a long rant about how TDD is about providing self-checks, and how do you know
your code is working right? etc.

This is the moment where it becomes clear that they have not yet had the "ah-ha"
lightbulb that informs them why TDD is not "testing the tests".

And it is here where we realise that TEST is a four-letter-word.

## We need new words.

"Testing" is a shorthand way of describing the processes, controls and self-checks
each member of the team undergoes during the delivery cycle, something each member
does in a slightly different way - but which ultimately is, as they say, "Testing".




