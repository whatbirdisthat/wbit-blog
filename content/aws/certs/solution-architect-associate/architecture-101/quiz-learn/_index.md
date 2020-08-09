---
title: "Architecture 101 - Quiz Learn"
date: 2020-05-21T00:06:53Z
draft: true
---

## Quiz ~~Leanr~~ Learn

> ### Which represents the difference between Fault-Tolerance and High-Availability?

|            |                                                                                                                                                                                      |
| ---------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| :elephant: | A **highly available architecture** may leave the user with **degraded system performance** but is still operational.                                                                |
| :elephant: | A **fault-tolerant architecture** aims to have **seamless performance** even in the event of a failure.                                                                              |
| :elephant: | A highly available architecture is available after a failure, but it might have performance degradation. Fault-tolerance indends for the user not to feel any impact from a failure. |

_High-Availability_ means the system will quickly recover from a failure event
and may _impact optimal performance_. Fault-tolerance means the system will
maintain _seamless user operation_ during a failure

---

> ## Which two terms describe how an application saves user session data?

|            |           |                                                                                                                                                                                                                                                                  |
| ---------- | --------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| :elephant: | Stateful  | When an application saves session information locally, it is known as stateful server.Additionally, if a stateful server is scaled up it will disrupt a user's session.                                                                                          |
| :elephant: | Stateless | When an application saves a user's session to an external source, it is known as stateless server. Additionally, if a stateless server is scaled up it will not disrupt a user's session because their session information is stored externally from the server. |

---

> What are the benefits of horizontal scaling?

-   [ ] Adds more memory to a single EC2 instance
-   [ ] Adds more CPUs to a single EC2 instance
-   [x] none of the size limitations of vertical scaling
-   [x] If a failure occurs only a small subset of users are affected
-   [ ] Scaling horizontally is easy to setup
-   [x] Cheaper than vertical scaling
-   [x] Parallel execution of workloads and distributing those across many
        different instances

-   Horizontal scaling is more challenging to set up than vertical scaling
-   Horizontal scaling suffers from none of the size limitations of vertical
    scaling
-   Having horizontal scaling means you can easily route traffic to another
    instance of a server, meaning there is no single point of failure for the
    overall system
-   Vertical scaling can be costly while horizontal scaling is cheaper
-   Heavy workloads can be distributed to other servers, to reduce the chances of
    a server reaching its capacity

---

> From a security perspective, what are examples of a principal?

-   [x] An authenticated user
-   [x] An application
-   [x] An anonymous user
-   [ ] An identity

-   An identity has established the data of a principal. A principal may be
    anonymous or they could authenticate to become an identity.
-   An authenticated user falls under the definition of a principal. Essential a
    principal is a person, application or a system that can make an authenticated
    or anonymous request to perform an action on a system.

---

> Which answer is true in the context of AWS responsibilities of the cloud?

-   [x] AWS maintains the security of their data servers
-   [x] AWS shares the responsibility of the cloud with its customers
-   [ ] AWS manages every aspect of the cloud
-   [ ] AWS is responsible for protecting all of a customer's data within their
        cloud

-   The security of data is the customer's responsibility
-   AWS's responsibility is to maintain the security of their data centres
-   AWS takes care of some cloud security while other aspects are the
    responsibility of the customers

---

> Four servers are needed to optimally run an application under normal and heavy
> operations. What architecture layout ensures **fault tolerance and cost
> efficiency** if an Availability Zone has a failure?

-   [ ] Deploy four servers to a single Availability Zone
-   [ ] Deploy four servers evenly across two Availability Zones
-   [ ] Deploy eight servers to a single Availability Zone
-   [x] Deploy eight servers evenly across two Availability Zones

-   By deploying four servers to each Availability Zone, should one have a
    failure, the remaining AZ would still have the optimal amount of servers to
    adhere to requests. This would be cost-efficient because it's necessary to
    have this much computing power to ensure fault-tolerance. Fault-tolerant
    architecture ensures that operations will continue **without any impact to
    users**.

---

> What entities are allowed to assume IAM Roles?

-   [ ] IAM Groups
    -   > IAM Groups are **not allowed** to assume IAM Roles
-   [x] IAM Users
    -   > IAM users are allowed to assume IAM Roles.
-   [x] External Accounts
    -   > External accounts are **allowed** to assume IAM roles. More details on
        > this are covered in the course's **ID Federation** section
-   [x] AWS services/resources
    -   > AWS services/resources, like EC2 instances and S3 Buckets, are allowed to
        > assume IAM Roles. IAM roles allow a resource to access other resources,
        > like when an EC2 needs permission to access data within S3.
-   [x] Applications
    -   > Application are allowed to assume IAM Roles. An application or a service
        > offered by AWS ( like Amazon EC2) can assume a role by requesting
        > temporary security credentials for a role.

---

> How can you grant access to a resource?

-   [x] Assign an individual IAM User to the resource
    -   > Individually assigning IAM users access is one method granting access to a
        > resource.
-   [x] Assign an inline IAM policy
    -   > This is a method for allocating access to a resource
-   [ ] Referencing access to a group in a resource policy
    -   > Groups _cannot_ be referenced in a resource policy (document policy) as
        > they are not true identiies.
-   [x] Assign IAM users access through an IAM role that permits them access to a
        resource
    -   > Assigning roles access allows for temporary access to a resource
-   [x] Assign IAM Group access by attaching an IAM policy
    -   > Assign IAM Group access by attaching an IAM policy is one method for
        > granting access.

---

> ## You've successfully created and linked an AWS member account to your master account by using AWS Organisations. You're logged in as an IAM user in the master account and you would like to role switch between accounts. What information will you be prompted to input in order to set up role switching functionality?

-   [x] `OrganisationAccountAccessRole` as the role
    -   > Typing the specific role allows you access to linked member accounts
-   [ ] ~~The IAM role needs to be created in the linked member account~~
-   [ ] A valid IAM user from the newly linked account
    -   > An IAM user from the other account is **not** necessary because the
        > **current IAM user** will be displayed in the member account and the
        > permissions are assumed via the member account's IAM role.
-   [x] Account ID of the member account
    -   > The account ID of the member account is needed when switching roles to the
        > linked account
-   [x] The display name of the role that will be seen in the linked account
    -   > The display name of the linked account will help you identify the account
        > you are in
-   [ ] ~~The password for your IAM user~~

> ## Which service control policy allows access to all AWS services within an attached member account?

-   [ ] ~~AccountOrganizationAccessRole~~
-   [ ] ~~OrganisationAccountAccessRole~~
-   [ ] AWSFullAccess
    -   > AWSFullAccess is **not** a service control policy that aoolws acces to all
        > AWS services within an attached member account
-   [x] FullAWSAccess
    -   > FullAWSAccess is a service control policy that allows users to access
        > services/resources on an attached account
