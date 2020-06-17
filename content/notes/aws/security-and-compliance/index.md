---
title: "Security and Compliance"
date: 2020-05-19T02:21:39Z
draft: true
---

## AWS Security and Compliance

[https://aws.amazon.com/compliance/](https://aws.amazon.com/compliance/)

### Shared Responsibility Model

-   The Shared Responsibility Model outlines what AWS is responsible for (the security **of** the cloud) and what the customer is responsible for (security **in** the cloud).

### DDoS and Penetration Testing

-   Distributed denial of Service (DDoS) attacks attempt to flood and overwhelm a server/services in an attempt to cripple or crash the service
-   Services such as CloudFront and Route53 may be used together to expand the attack surface and minimise the effect of a DDoS attack

### Other AWS Security Services

-   AWS Artifact provides access to security and compliance reports on the AWS infrastructure
-   AWS Inspector proactively monitors the infrastructure for vulnerabilities and deviations from best practices
-   AWS Shield provides managed protection against DDoS attacks
-   AWS WAF (Web Application Firewall) works with services such as EC2 and ELB, monitors web requests, and can filter traffic based on specified conditions
-   Amazon GuardDuty is a threat detection service that provides a way to continuously monitor and protect AWS accounts
-   AWS Organisations can be used to restrict access to various services from the account level
-   KMS is a service that manages encryption key storage. KMS integrates with several services, including S3 and Storage Gateway
