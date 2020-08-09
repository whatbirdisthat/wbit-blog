---
layout: post
title:  "!00% Coverage is only the beginning"
date:   2016-07-15 14:20:55 +1000
categories: quality, devops
---
# 100% Coverage is only the beginning
### Code coverage gives us a solid foundation for delivery confidence, but it's not the only way to boost delivery confidence.

## Confidence: the goal of a quality-focused delivery team.

**Code confidence** is attained through rigorous and frequently repeated testing of the system against
a raft of behavioural expectations.

These expectations form the specifications of the system and in fact document the system:
both the functioning system, and the desires of the business that commissioned the system.

### What it says on the tin

_When our product or service is pitched by the sales team, we want them to be say amazing things
about what we do - we also really want them to be telling the *truth*. They, on the other hand,
really want this thing *to work* - reputation is key to churn reduction._

To adequately provide *Confidence* to our client (the business) that they are getting what they paid for,
we run a series of _user acceptance tests_ around the system
to prove the functioning system meets the needs of the client.

### But if it's past its date?
Experience has taught us, however, that automated acceptance test suites frequently
fall short of covering adequately the full set of operational conditions and as a result
we have bugs, or worse - outages.

Preventing the business from taking money is the worst kind of failure so we should take steps to ensure that
we have tried `really really hard` to prevent this outcome; to ensure `the system works`.

### Sedimentation
Unit Testing is a way for the developers to provide confidence to the client (*and to themselves*)
that their code is functioning as desired, and unit testing applied to any given feature
is the most effective way to document and explain why we are confident. As a by-product we are
documenting the extent to which we have tested the feature.

This `rigour-metric` is the single most important metric for a delivery team as it represents
the first indicator that when something goes wrong, and it will - that 'we took all necessary steps to mitigate the risk of failure'.

IIF we have 100% coverage, we have applied our minds to the task of
"checking our work" in a way that highlights all the paths each branch of logic can take,
how we handle exceptions, how we design for dependencies - achieving 100% coverage is how we ask ourselves,
"is this what I wanted to do?"

Once we have 100% coverage, we can turn our thoughts to the **real** question, `have we covered all the data permutations adequately`?
-
