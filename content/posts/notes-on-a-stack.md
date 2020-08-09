---
title: "Notes on a stack"
date: 2020-05-15T09:23:22+10:00
draft: true
description: a simple serverless stack
---

## Authorised Greeting

A simple "workload" for greeting "known" or "unknown" visitors to a site.

```plaintext
In order to enhance the personality of the public web site:

As the business
I want to greet unauthorised visitors formally
So that politeness is properly observed

As the business
I want to greet authorised visitors informally
So camaraderie is enriched
```

```gherkin

Scenario: users of the API are greeted

    Background:
    Given the API is available

    Given a visitor is <auth_level>
    * they request a greeting
    When they are greeted
    Then the greeting is <greeting>

    Examples:
    | auth_level    | greeting   |
    | unauthorised  | formal     |
    | authorised    | informal   |

```

## Notes for contemplating a simple serverless workload

This is a brain dump outlining the minimum required documentation of the
behaviour of the example workload. In this case, the example workload is a
simple "hello world" API, which returns a simple JSON object when queried.

If the request is 'authorised' the JSON contains some added, 'sensitive' information.

The example is developed, provisioned, and maintained using AWS tools such as

-   CodeCommit
-   CodeBuild
-   Cloudformation
-   Lambda
-   DynamoDB
-   S3
-   IAM
-   KMS

### A workload's maintenance cycle

```mermaid
sequenceDiagram
    Participant A as Automation
    Participant B as Integration
    Participant C as Production
    A ->> B: initiation - provision stacks
    B --> C: implementation - deploy 'workload' to stacks
    C --x A: iteration - improve infrastructure or application

```

### The example workload

```gherkin
As a visitor to the Public Web Site
I want to perform 'authenticated actions'
So I can interact with my account

Given an authenticated user
When they request the API 'hello'
Then the Public Web Site will execute that action
```

```mermaid
graph LR

    pws[Public Web Site]
    guest-only-actions[Guest Only Actions]

    Visitor --> pws
    pws --> Authentication
    Authentication --> Authenticated
    Authentication --> Unauthenticated
    Authenticated --> RBAC
    RBAC --> Action
    Unauthenticated --> RBAC
    RBAC --- guest-only-actions
    RBAC --> Audit
    Audit --> Logging
    Action --> Logging


```

```mermaid

sequenceDiagram
    DEV --> SEC: Collaboration to produce secure, reliable implementation
    SEC --> OPS: Collaboration to produce secure, reliable infrastructure
    DEV --> OPS: Feedback from operational readiness testing
    OPS --> DEV: Feedback from incidents, maintenance, logs

```

To ensure an effective and optimised workflow for maintaining the workload,
some things should be considered:

-   Evolve security in step with application code
-   Evolve infrastructure in step with application code
-   Including known and emergent security standards
-   Providing automated suites to ensure appropriate hardening
-   Including known and emergent performance standards
-   Respond to incidents with expanded testing

### Separation of duties for management of the workload

```mermaid
graph LR
    classDef lifecyclePhase fill:#737373

    log-events(Record events that occur throughout <br/>the life of the workload)

    subgraph OPS
    monitor-cost(Monitor the cost of the workload):::lifecyclePhase
    monitor-health(Monitor the operational health of the workload)
    respond-improve(Improve the implementation of the workload<br/> in response to incidents and analytics)
    end

    subgraph SEC
    log-audit(Record interactions <br/>with the workload's API)
    provide-security-tests(Provide an evolving set<br/> of tests to ensure the workload is<br/> secured according to policy)
    end

    subgraph DEV
    subgraph IMPLEMENT
    define(Define / Develop the workload)
    end
    subgraph MEASURE
    measure-performance(Measure the performance <br/> of the workload)
    end
    subgraph IMPROVE
    continuous-improvement(Evolve the workload<br/> and its infrastructure in step)
    end
    end

    log-audit --> continuous-improvement
    respond-improve --> continuous-improvement
    monitor-cost --> continuous-improvement
    monitor-health --> continuous-improvement


```
