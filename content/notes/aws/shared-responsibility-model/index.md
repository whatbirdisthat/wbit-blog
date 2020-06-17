---
title: "Shared Responsibility Model"
date: 2020-05-19T01:43:29Z
draft: true
---

## [Shared Responsibility Model](https://aws.amazon.com/compliance/shared-responsibility-model/)

Security and compliance is a shared responsibility between AWS and customer. This shared model can help relieve customers' operational burden as AWS operates, manages, and controls the components from the host operating system and virtualizaton layer down to the physical security of the facilities in which the service operates. The customer assumes responsibility and management of the guest operating system (including updates and security patches), other associated application software as well as the configuration of the AWS provided security group firewall.

![Shared Responsibility Model](Shared_Responsibility_Model_V2.59d1eccec334b366627e9295b304202faf7b899b.jpg)

### EC2 Example

_AWS_ is responsible for

-   The setup and maintenance of the phisical hardware located at each AWS data centre
-   The physical security of the data centres (locks, keys, security guards, etc)
-   The setup and maintenance of the host virtualisation software

**You** are responsible for

-   Network-level security (NACLs, security groups)
-   Operating system patches and updates
-   IAM user access management
-   Client- and server-side encryption

> In addition to the Shared Responsibility Model, DDoS protection is built-in/mitigated by many core AWS services. But what if you want to simulate an attack to test your application's security?

## DDoS and Penetration Testing

AWS customers are now welcome to carry out **security assessments or penetration tests** against some of their AWS infrastructure **without prior approval**. This applies to eight services.

-   Amazon EC2 instances, NAT Gateways and Elastic Load Balancers
-   Amazon RDS
-   Amazon CloudFront
-   Amazon Aurora
-   Amazon API Gateways
-   AWS Lambda and Lambda Edge functions
-   Amazon Lightsail resources
-   Amazon Elastic Beanstalk environments

### Prohibited Activities

These activities are **not** allowed at this time

-   DNS zone walking via Amazon Route 53 hosted zones
-   Denial of service (DoS), distributed denial of service (DDos), simulated DoS, simulated DDoS
-   Port flooding
-   Protocol flooding
-   Request flooding (login requrest flooding, API request flooding)

For more information about AWS Vulnerability and Penetration Testing, see
[https://aws.amazon.com/security/penetration-testing/](https://aws.amazon.com/security/penetration-testing/)

## Other AWS security-related services

-   AWS Organisations allows for centralised management of AWS accounts and billing, but it can also define policies that restrict, at the account level, what services and actions member accounts may take
-   Amazon GuardDuty is a threat detection service that provides a way to continuously monitor and protect AWS accounts and workloads. GuardDuty uses threat intelligence feeds to detect threats to the environment. GuardDuty is designed to actively protect the environment from threats.
-   Amazon Inspector analyses the VPC environment for potential security issues. Inspector uses a defined template and assesses the environment. It provides the findings and recommends steps to resolbe any potential security issues found.
-   AWS Shield provides managed DDoS protection. DDoS attacks happen when multiple compromised systems attempt to flood a target with traffic. That target could be DNS, a web application, or a network.
-   AWS Web Application Firewall (WAF) monitors web requests forwarded by an ELB, CloudFront, or API Gateway. WAF can allow or deny access to content based on specified conditions.
-   AWS Artifact is a portal that provides access to AWS's compliance documentation, such as Payment Card Industry (PCI) and ISO certifications, and System and Organisation Control (SOC) reports.
