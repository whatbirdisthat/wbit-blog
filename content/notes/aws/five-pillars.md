---
title: "Five Pillars"
date: 2020-05-15T07:26:54+10:00
draft: true
---

# Well-Architected Framework

This document is reading-and-typing: a word-for-word copy of the AWS blog post
by Derek Belt [here](https://aws.amazon.com/blogs/apn/the-5-pillars-of-the-aws-well-architected-framework/)
with transcriptions from the pillar whitepapers to add more detail.

## The Five Pillars of the Well-Architected Framework

Creating a software system is a lot like constructing a building. If the
foundation is not solid, structural problems can undermine the integrity and
function of the building.

When architecting technology solutions on Amazon Web Services (AWS), if you
neglect the five pillars of operational excellence, security, reliability,
performance efficiency and cost optimisation, it can become challenging to
build a system that delivers on your expectations and requirements.
Incorporating these pillars into your architecture helps produce stable and
efficient systems this allows you to focus on other aspects of the design, such
as functional requirements.

The [AWS Well-Architected Framework](https://aws.amazon.com/architecture/well-architected/)
helps cloud architects build the most secure, high-performing, resilient, and
efficient infrastructure possible for their applications. This framework
provides a consistent approach for customers and Amazon Partner Network (APN)
Partners to evaluate architectures, and provides guidance to implement designs
that scale with your application needs over time.

In this post, we provide an overview of the Well-Architected Framework's five
pillars and explore design principles and best practices. You can find more
details-- including definitions, FAQs, and resources-- in each pillar's
whitepaper we link to below.

[Read the full Well-Architected whitepaper](https://d1.awsstatic.com/whitepapers/architecture/AWS_Well-Architected_Framework.pdf)

### 1. Operational Excellence

The operational excellence pillar includes the ability to run and monitor
systems to deliver business value and to continually improve supporting
processes and procedures. You can find prescriptive guidance on implementation
in the [Operational Excellence Pillar whitepaper](https://d1.awsstatic.com/whitepapers/architecture/AWS-Operational-Excellence-Pillar.pdf)

#### Design Principles

1. Perform operations as code

   In the cloud, you can apply the same engineering discipline that you use for
   application code to your entire environment. You can define your entire
   workload (applications, infrastructure, etc) as code and update it with code.
   You can script your operations procedures and automate their execution by
   triggering them in response to events. By performing operations as code, you
   limit the human error and enable consistent responses to events.

2. Annotate documentation

   In an on-premises environment, documentation is created by hand, used by
   humans, and hard to keep in sync with the pace of change. In the cloud,
   you can automate the creation of annotated documentation after every build
   (or automatically annotate hand-crafted documentation). Automated
   documentation can be used by humans _and_ systems. Use annotations as an
   input to your operations code.

3. Make frequent, small, reversible changes

   Design workloads to allow components to be updated regularly tn increase
   the flow of beneficial changes into your workload. Make changes in small
   increments that can be reversed if they fail to aid in the identification
   and resolution of issues introduced to your environment (without
   affecting customers when possible).

4. Refine operations procedures frequently

   As you use operations procedures, look for opportunities to improve them.
   As you evolve your workload, evolve your procedures appropriately. Set up
   regular Game Days to review and validate that all procedures are effective
   and that teams are familiar with them.

5. Anticipate failure

   Perform "pre-mortem" exercises to identify potential sources of failure so
   that they can be removed or mitigated. Test your failure scenarios and
   validate your understanding of their impact. Test your response procedures
   to ensure they are effective and that teams are familiar with their
   execution. Set up regular Game Days to test workload and team responses to
   simulated events.

6. Learn from all operational failures.

   Drive improvement through lessons learned from all operational events and
   failures. _Share what is learned_ across teams and through the entire
   organisation.

#### Best Practices

Operations teams need to understand their business and customer needs so they can
support business outcomes. Ops creates and uses procedures to respond to
operational events, and validates their effectiveness to support business needs.
Ops also collects metrics that are used to measure the achievement of desired
business outcomes.

Everything continues to change -- your business context, business priorities,
customer needs, etc. It's important to design operations to support evolution
over time in response to change and to incorporate lessons learned through
their performance.

### 2. Security

The security pillar includes the ability to protect information, systems, and
assets while delivering business value through risk assessments and mitigation
strategies. You can find prescriptive guidance on implementation in the
[Security Pillar whitepaper](https://d1.awsstatic.com/whitepapers/architecture/AWS-Security-Pillar.pdf)

#### Design Principles

There are six design principles for security in the cloud:

- Implement a strong identity foundation
- Enable traceability
- Apply security at all layers
- Automate security best practices
- Protect data in transit and at rest
- Prepare for security events

#### Best Practices

Before you architect any system, you need to put in place practices that
influence security. You will want to control who can do what. In addition, you
want to be able to identify security incidents, protect your systems and services,
and maintain the confidentiality and integrity of data through data protection.

You should have a well-defined and practiced process for responding to security
incidents. These tools and techniques are important because they support
objectives such as preventing financial loss or complying with regulatory
obligations. The [AWS Shared Responsibility Model](https://aws.amazon.com/compliance/shared-responsibility-model/)
enables organisations to achieve security and compliance goals. Because AWS
physically secures the infrastructure that supports our cloud services, you can
focus on using services to accomplish your goals.

### 3. Reliability

The reliability pillar includes the ability of a system to recover from
infrastructure or service disruptions, dynamically acquire computing resources
to meet demand, and mitigate disruptions such as misconfigurations or transient
network issues. You can find prescriptive guidance on implementation in the
[Reliability Pillar whitepaper](https://d1.awsstatic.com/whitepapers/architecture/AWS-Reliability-Pillar.pdf)

#### Design Principles

There are five design principles for reliability in the cloud:

- Test recovery procedures
- Automatically recover from failure
- Scale horizontally to increase aggregate system availability
- Stop guessing capacity
- Manage change in automation

#### Best Practices

To achieve reliability, a system must have a well-planned foundation and
monitoring in place, with mechanisms for handling changes in demand or
requirements. The system should be designed to detect failure and
automatically heal itself.

Before architecting any system, foundational requirements that influence
reliability should be in place. For example, you must have sufficient
network bandwidth to your data centre. These requirements are sometimes
neglected (because are beyond a single project's scope). This neglect can have
a significant impact on the ability to deliver a reliable system. In an
on-premises environment, these requirements can cause long lead times due to
dependencies and therefore must be incorporated during initial planning.

With AWS, most of these foundational requirements are already incorporated or
may be addressed as needed. The cloud is designed to be essentially limitless,
so it is the responsibility of AWS to satisfy the requirement for sufficient
networking and compute capacity, while you are free to change resource size
and allocation, such as the size of storage devices, on demand.

### 4. Performance Efficiency

The performance efficiency pillar includes the ability to use computing
resources efficiently to meet system requirements and to maintain that
efficiency as demand changes and technologies evolve. You can find prescriptive
guidance on implementation in the [Performance Efficiency Pillar whitepaper](https://d1.awsstatic.com/whitepapers/architecture/AWS-Performance-Efficiency-Pillar.pdf)

#### Design Principles

There are five design principles for performance efficiency in the cloud:

- Democratise advanced technologies
- Go global in minutes
- Use serverless architectures
- Experiment more often
- Mechanical sympathy

#### Best Practices

Take a data-driven approach to selecting a high-performance architecture.
Gather data on all aspects of the architecture, from the high-level design to
the selection and configuration of resource types.

By reviewing your choices on a cyclical basis, you will ensure you are taking
advantage of the continually evolving AWS cloud. Monitoring will ensure you are
aware of any deviance from expected performance and can take action on it.

Finally, your architecture can make tradeoffs to improve performance, such as
using compression or caching, or relaxing consistency requirements.

The optimal solution for a particular system will vary based on the kind of
workload you have, often with multiple approaches combined. Well-architected
systems use multiple solutions and enable different features to improve performance.

### 5. Cost Optimisation

The cost optimisation pillar includes the ability to avoid or eliminate unneeded
cost or suboptimal resources. You can find prescriptive guidance on implementation
in the [Cost Optimisation Pillar whitepaper](https://d1.awsstatic.com/whitepapers/architecture/AWS-Cost-Optimization-Pillar.pdf)

#### Design Principles

There are five design principles for cost optimisation in the cloud:

- Adopt a consumption model
- Measure overall efficiency
- Stop spending money on data centre operations
- Analyse and attribute expenditure
- Use managed services to reduce cost of ownership

#### Best Practices

As with the other pillars, there are tradeoffs to consider. For example, do you
want to optimise for speed to market or for cost? In some cases, it's best to
optimise for speed-- going to market quickly, shipping new features, or simply
meeting a deadline-- rather than investing in upfront cost optimisation.

Design decisions are sometimes guided by haste as opposed to empirical data, as
the temptation always exists to overcompensate "just in case" rather than spend
time benchmarking for the most cost-optimal deployment. This often leads to
drastically over-provisioned and under-optimised deployments.

Using the appropriate instances and resources for your system is key to cost
savings. For example, a reporting process might take five hours to run on a
smaller server but one hour to run on a larger server that is twice as expensive.
Both servers give you the same outcome, but the smaller one will incur more cost
over time. A well-architected system will use the more cost-effective
resources, which can have a significant and positive economic impact.

## Conclusion

The [AWS Well-Architected Framework](https://aws.amazon.com/architecture/well-architected/)
provides architectural best practices across the five pillars for designing and
operating reliable, secure, efficient, and cost-effective systems in the cloud.
The framework provides a set of questions that allows you to review an existing
or proposed architecture. It also provides a set of AWS best practices for each
pillar.

Using the framework in your architecture helps you to produce stable and
efficient systems, which allows you to focus on functional requirements.
