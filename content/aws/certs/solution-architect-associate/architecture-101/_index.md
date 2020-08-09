---
title: "Architecture 101"
date: 2020-05-20T10:48:00Z
draft: false
chapter: true
---

## Architecture 101

### Access Management Basics

#### Principal

A person or application that can mak an **authenticated** or **anonymous** request to perform an action on a system.

#### Authentication

The process of authenticating a principal against an identity. This could be via username and password or API keys.

#### Identity

Objects that require **authentication** and are **authorised** to access resources.

#### Authorisation

The process of checking and **allowing** or **denying** access to a resource for an identity.

---

## Regions

Regions contain multiple Availability Zones (AZs) which are separated and isolated networks. A failure in one AZ _generally_ won't impact another.

### Availability Zones

AZs in the same region are connected with **redundant, high-speed, low-latency** network connections.

Most AWS services run within AZs. Some services operate from one AZ, while others replicate between AZs. Some services allow you to choose the AZ to use, and some don't.

### Edge Locations

**Edge Locations** are small pockets of AWS compute, storage and networking close to major populations and are generally used for **edge computing** and **content delivery**.

## Scaling

### Vertical

Traditional systems use **vertical scaling**. An attempt is made to forecast demand and purchase servers **ideally before** demand passes current capacity. Purchase too **early** and capacity is **wasted**. Purchase too **late** and performance is **impacted**.

![Vertical Scaling](2020-05-21-11-42-39.png)

### Horizontal

When horizontal scaling is used (more, smaller servers), capacity can be maintained closer to demand. There is less waste because servers are smaller and there is less risk of performance impact as each increase is less expensive, so it generally requires less approval.

![Horizontal Scaling](2020-05-21-11-44-55.png)

### Elasticity

Elasticity, or elastic scaling, is where automation and horizontal scalling are used in conjunction to match capacity with demand. Demand is rarely so linuear -- it can increase or decrease, often in a rapid and sudden way. An efficient platform should scale OUT and IN, matching demands on that system.

![Elasticity](2020-05-21-11-47-35.png)

## Commonly Used Terms

### Cost efficient and Cost effective

Implementing a solution within AWS using products or product features that provide the required service for as little initial and ongoing cost as possible. Using your funds effectively and knowing if product X is better or worse than product Y for a given solution.

### Secure

In a systems architecture context, implementing a given solution that secures data and operations as much as possible from an internal or external attack.

### Application Session State

Data that represents what a customer is doing, what they have chosen, or what they have configured. Examples include items and quantities in a shopping cart, notes on an X-ray, and 3D position of a real-time heart scan. Session state can be stored on a server (stateful server) or externally to a server (stateless server).

### Undifferentiated heavy lifting

A part of an application, system, or platform that is not specific to your business. Allowing a vendor (AWS) to handle this part frees your staff to work on adding direct value to your customers.

## AWS Product Introduction

### S3

#### Exam Facts and Figures - S3

-   Bucket names must be **globally unique**
-   Minimum or three and **maximum of 63** characters, **no uppercase** and **no underscores**
-   Must start with a **lowercase letter** or **number** and cannot be formatted as an IP address (1.1.1.1)
-   Default **100 buckets per account** and a hard limit of **1000 buckets** (via support request)
-   Unlimited objects can be stored in buckets
-   **Unlimited total capacity** for a bucket
-   An object's **key** is its **name**
-   An object's **value** is its **data**
-   An object's size can be between **0 bytes** and **5 TB**

#### Exam Facts and Figures - CloudFormation Fundamentals

A CloudFormation (CFN/cfn) template is used to initially create a CFN stack. A stack **creates, updates** and **deletes** physical AWS resources based on its **logical resources**, which are based on the contents of a **template**.

-   A CFN template is written in JSON or YAML
-   A template can create up to 200 resources
-   If a **stack** is **deleted**, then, by default, any **resources** it has created are also **deleted**
-   A stack can be **updated** by uploading a **new version** of a template
-   **New** logical resources cause **new** physical resources
-   **Removed** logical resources cause the stack to **delete** physical resources
-   **Changed** logical resources **update** with **some disruption** or **replace** physical resources

#### Exam Tips - IAM Policies

-   If a request isn't explicitly allowed, it's implicitly _denied_
-   If a request is explicitly denied, it _overrides everything else_
-   If a request is explicitly allowed, it's allowed _unless denied by a specific deny_
-   Remember: DENY --> ALLOW --> DENY
-   Only attached policies have any impact
-   When evaluating policies, all applicable policies are merged:
    -   All identity (user, group, role) and any resource policies
-   Managed policies allow the same policy to impact many identities
-   Inline policies allow exceptions to be applied to identities
-   AWS-managed policies are low overhead but lack flexibility
-   Customer-managed policies are flexible but require administration
-   Inline and managed policies can apply to users, groups and roles

#### Exam Facts and Figures: IAM Users

-   Hard limit of 5000 users per account - this is _important_ as it can affect architecture
-   10 group memberships per IAM user
-   Default maximum of 10 managed policies per user
-   No inline limit, but you cannot exceed _2048_ characters for _all_ inline policies for an IAM user
-   1 MFA per user
-   2 access keys per user

#### Exam Facts and Figures: IAM Groups

-   Groups are an admin feature to group IAM users
-   Groups can contain IAM users, and users can be in many groups
-   IAM inline policies can be added to IAM groups -- and these flow on to IAM users who are members
-   Managed IAM policies can be attached and flow on to IAM users who are members
-   Groups are not "true" identities, and they cannot be referenced from resource policies
-   Groups have _no credentials_

#### Exam Facts and Figures: IAM Roles

-   IAM roles have no long-term credentials
-   They are `sts::AssumeRole` by another identity
    -   IAM users
    -   AWS services
    -   External accounts
    -   Web identities
-   Temporary security credentials are generated by Security Token Service (STS)
-   **Trust** policy controls which identities can assume the role
-   **Permissions** policy defines the permissions provided
-   Temporary credentials expire
-   Example scenarios
    -   Company merger
    -   AWS service access
    -   "Break-glass" style extra access
    -   Cross-account access
    -   Web identity federation

### Organisations

-   A standard account will become the **Master Account** when 'Create Organisation' is actioned from within that account.
-   All accounts in the organisation (except the Master Account) are 'Member Accounts'
-   When creating an organisation **Service Control Policies** are applied in a 'reverse tree' structure. Any policy applied to the 'root' (not the Master Account) -- they flow down to member accounts (Organisational Units - OUs)

![Nodes in an AWS Organisation Tree](2020-05-23-15-21-44.png)

-   An OU can only have 2 accounts unless a Support Case is created for increasing the limit
-   OUs are organised into a tree using the organisations API (or console)
-   A **Service Control Policy** can be applied at the ROOT level, the OU level or the ACCOUNT level
