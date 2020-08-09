---
title: "Kms"
date: 2020-05-19T02:15:46Z
draft: true
---

## AWS Key Management Service (KMS)

AWS KMS enables encryption of data and provides centralised encryption key storage, management, and auditing. The data may be encrypted for use with applications or to encrypt data stored on AWS.

**Key Facts** about KMS

-   Keys may be generated in KMS in an AWS CloudHSM hardware cluster, or you may import keys from your own encryption key service
-   Data is submitted directly to KMS for encryption/decryption using the master keys
-   KMS integrates with other AWS services, including
    -   S3 and Glacier
    -   Storage Gateway
    -   EBS and RDS
    -   DynamoDB
    -   SNS
    -   CloudTrail

For a comprehensive list of services that integrate with KMS visit the [KMS Service Integration](https://aws.amazon.com/kms/features/#AWS_Service_Integration) page.
