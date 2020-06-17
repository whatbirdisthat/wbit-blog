---
title: "Organisations and Billing"
date: 2020-05-19T03:13:04Z
draft: true
---

## AWS Organisations

AWS Organisations offers policy-based management for multiple AWS accounts. With Organisations, you can create groups of accounts and then apply policies to those groups. Organisations enables you to centrally manage policies across multiple accounts, without requiring custom scripts and manual processes. Using AWS Organisations, you can create Service Control Policies (SCPs) that centrally control AWS service use across multiple AWS accounts.You can also use Organisations to help automate the creation of new accounts through APIs. Organisations helps simplify the billing for multiple accounts by enabling you to set up a single payment method for all the accounts in your organisation through consolidated billing. AWS Organisations is available to all AWS customers at no additional charge.

### Main Features / Benefits

- Centrally manage access policies across multiple AWS accounts
- Control access to AWS services
- Automate AWS account creation and management
- Consolidate Billing across multiple AWS accounts

## What is Consolidated Billing

AWS Organisations enables you to se up a single payment method for all the AWS accounts in your organisation through consolidated billing. With consolidated billing, you can see a combined view of charges incurred by all your accounts, as well as take advantage of pricing benefits from aggregated usage, such as volume discounts for Amazon EC2 and Amazon S3.

### Main Benefits

- Central location to manage billing across all your AWS accounts
- Gain volume discounts for usage across all your AWS accounts

## AWS Pricing

[https://aws.amazon.com/tco-calculator/](https://aws.amazon.com/tco-calculator/)

[https://calculator.aws/#/](https://calculator.aws/#/)

[https://calculator.s3.amazonaws.com/index.html](https://calculator.s3.amazonaws.com/index.html)

[https://aws.amazon.com/aws-cost-management/aws-budgets/](https://aws.amazon.com/aws-cost-management/aws-budgets/)

## Trusted Advisor

Trusted Advisor analyses the AWS environment and provides best practice recommendations in five categories.

| Cost Optimisation                             | Performance                             | Security                             | Fault Tolerance                             | Service Limits                             |
| --------------------------------------------- | --------------------------------------- | ------------------------------------ | ------------------------------------------- | ------------------------------------------ |
| ![Cost Optimisation](2020-05-19-14-23-51.png) | ![Performance](2020-05-19-14-24-08.png) | ![Security](2020-05-19-14-24-23.png) | ![Fault Tolerance](2020-05-19-14-24-37.png) | ![Service Limits](2020-05-19-14-24-50.png) |

### The seven core checks

- S3 Bucket Permissions
- Security Groups: specific ports unrestricted
- IAM Use
- MFA on root account
- EBS Public Snapshots
- RDS Public Snapshots
