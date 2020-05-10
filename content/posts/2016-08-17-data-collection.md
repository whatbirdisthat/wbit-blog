---
layout: post
title:  "Considerate Data Collection"
date:   2016-08-17 14:20:55 +1000
categories: site reliability, data collection
---

# Considerate Data Collection

## Isolating the task of collection.

Survey data has some interesting properties, when you look at it up close.
Survey data has a `.size` property, which is the (eventual?) size of the collection,
called a `population` or `sample`.
A population can be obtained from 1..n samples.

