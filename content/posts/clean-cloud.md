---
title: "Clean Cloud"
date: 2020-06-29T22:22:51+10:00
draft: false
---

## A set of things that can be easily assimilated into an enterprise IT culture

#### Enterprise IT is rife with litter

* There are EC2 instances running for months, called `TEST001`.
* There are S3 buckets with no objects in them, that have no tags.
* There are _entire features_ without a single automated test.
* There are items of work that do not have adequate acceptance criteria.
* There are over-provisioned servers, long-running environments, bloated taxonomies ...

#### Our clouds are not clean

The Clean Cloud _foundation_ relies on three core things:

1. Test **everything** to provide **proof** that it **works** and is fit for purpose
2. Automate **everything** to provide healthy, right-sized infrastructure
3. Continuously search for, identify, and eliminate **waste**.

## On Point 1 - CONFIDENCE

The collaboration between the business and IT has been reported to be unhealthy time and again - the business does not trust IT, "IT should be the ENABLER", and this is truest when the business cannot act natively in the marketplace because their IT workloads are buggy, slow, unresponsive, expensive, unreliable - etc.

#### Build [confidence](../code-coverage) by providing rigorous, repeatable _proof_ to the business that the software they _want_ is the software they _got_

## On Point 2 - RISK

Variation and unpredictability are key components driving up operational and even profit risk all over enterprise IT. When automated processes fail - they fail as software, thus they can be fixed like software. The failure occurs, a test is written which proves the failure, then a fix is applied which passes the test. This method of _risk draining_ and _failure removal_ is guaranteed to produce dependable infrastructure from front-end widgets to entire Line Of Business stacks that eventually cover the vast majority of failure modes through the application of experience-driven evolution.

The pace of that eventuality is a decision to be made by the business, and by IT. The more attention paid to reducing risk, the more risk is removed using this method.

## On Point 3 - WASTE

This is key. Waste occurs everywhere in the enterprise. From the coders participating in the latest new features to the leadership making decisions without adequate or appropriate measures and monitoring. There are "types of waste", and every participant in the enterprise should be familiar with them, be vigilant for them and raise their identification of them at the earliest opportunity.

Retrospectives are one way the capital-A Agile people address waste. Education on how best to identify and eliminate waste is one of the most powerful tools available to the enterprise to reduce spend, increase velocity, and correct their strategic course.
