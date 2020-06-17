---
title: "Five Pillars (2017)"
date: 2017-05-06T12:08:55Z
draft: true
---

## The Five Pillars of the Well-Architected Framework

### Security

>The ability to protect information, systems, and assets while delivering business value through risk assessments and mitigation strategies.

* Apply security at all layers
* Enable traceability
* Implement a principle of least privilege
* Focus on securing your system
* Automate security best practices
    * Identity and Access Management
        * IAM, MFA
    * Detective Controls
        * CloudTrail, Config, CloudWatch
    * Infrastructure Protection
        * VPC
    * Data protection
        * ELB, EBS, S3, RDS
        * KMS
    * Incident Response
        * IAM, CloudFormation


### Reliability

>The ability of a system to recover from infrastructure or service failures, dynamically acquire computing resources to meet demand, and mitigate disruptions such as misconfigurations or transient network issues.

* Test recovery procedures
* Automatically recover from failure
* Scale horizontally to increase aggregate system availability
* Stop guessing capacity
* Manage change in automation
    * Foundations
    * Change management
    * Failure management


Performance Efficiency
---
>The ability to use computing resources efficiently to meet system requirements, and to maintain that efficiency as demand changes and technologies evolve.

* Democtratise advanced technologies
* Go global in minutes
* Use serverless architectures
* Experiment more often
* Mechanical sympathy
    * Selection
      * compute - Instances, Containers, Functions
      * storage
          * access method - block, file, object
          * patterns of access - random or sequential
          * frequency of access - online, offline, archival
          * frequency of update - WORM, dynamic
          * availability - s3 99.999999999% durability
          * hdd, ssd, hot-swap virtual drives between instances
      * database
          * RDS - scale with no downtime
          * DynamoDB - NoSQL, single digit millisecond latency at any scale
          * Redshift - petabyte-scale data warehouse
      * network
          * High network instance types
          * EBS optimised instances
          * S3 transfer acceleration
          * dynamic Amazon CloudFront
          * Route53 latency routing
          * VPC endpoints
          * DirectConnect
  * Review
> How do you ensure that you continue to have the most appropriate resource type as the new resource types and features are introduced?
  * Monitoring
      * CloudWatch
      * Kinesis
      * SQS
      * Lambda
      * Plan for game days to simulate and test alarming solution
  * Tradeoffs
      * Consistency, durability space vs time, latency
  * Key AWS Services
      * Compute: auto-scaling
      * Storage: EBS, PIOPS, S3 - Serverless transfer acceleration
      * Database: RDS (PIOPS, read replicas), DynamoDB (<10ms latency at any scale)
      * Network: Route53 (latency-based routing), VPC endpoints and DirectConnect (reduce distance or jitter)
      * Review: AWS Blog
      * Monitoring: CloudWatch, Lambda
      * Tradeoff: Elasticache, CloudFront, Snowball, RDS Read Replicas to scale read-heavy workloads


Cost Optimisation
---
>The ability to avoid or eliminate unneeded cost or suboptimal resources.

* Adopt a consumption model
* Benefit from economies of scale
* Stop spending money on data centre operations
* Analyse and attribute expenditure
* Use managed services to reduce cost of ownership
      * Cost-effective resources
          * Reserved instances, Trusted Advisor
      * Matching supply and demand
          * Auto scaling
      * Expenditure awareness
          * Cloudwatch, SNS
      * Optimising over time
          * AWS Blog

Operational Excellence
---
>The ability to run and monitor systems to deliver business value anad to continually improve supporting processes and procedures.

* Perform operations with code
* Align operations processes to business objectives
* Make regular, small, incremental changes
* Test for responses to unexpected events
* Learn from operational events and failures
* Keep operations procedures current
    * Preparation
        * Runbooks
	* Playbooks
	* Track and learn from failures
	* Track change to configuration
    * Operations
        * Standardised
	* Small frequent changes
	* Regular QA testing
	* Track, audit, roll back, review
	* No downtime
	* Monitor for anomalies not just failures
	* Avoid manual processes
    * Responses
        * Automate mitigation, remediation, rollback and recovery
* Key AWS Services
    * Preparation: Config, Service Catalog, Auto Scaling, SQS
    * Operations: CodeCommit, CodeDeploy, CodePipeline, SDKs, CloudTrail
    * Responses: CloudWatch alarms, events, automated response triggers
