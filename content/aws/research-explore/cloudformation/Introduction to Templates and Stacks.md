---
title: Introduction to Templates and Stacks
---

## Introduction

This hands-on lab explains templates and stacks in great detail. The management console is examined and all of its features are detailed. The lab uses three CloudFormation templates to build stacks and deploy resources. Three stacks will be built deploying a DynamoDB table, a VPC, and an S3 bucket.

## Solution

Log in with the credentials provided, and make sure you are in the `us-east-1` (N. Virginia) region.

Download the files needed for this lab (three JSON CloudFormation template files and one `index.html` file) [from GitHub](https://github.com/natonic/CloudFormation-Deep-Dive/tree/master/Labs/TemplatesAndStacks).

### Create a DynamoDB Table from a CloudFormation Template

1. Navigate to CloudFormation.
2. Click **Create stack**.
3. Select **Template is ready**.
4. Select **Upload a template file**, and **Choose file**.
5. Upload the `Lab1Dynamo.json` file.
6. Click **View in Designer**.
7. Click the checkbox at the top to validate it, and then click the cloud icon with the up arrow to create the stack.
8. Click **Next**.
9. On the stack details page, set the following values:
    - _Stack name_: **dynamoDemo**
    - _ReadCapacityUnits_: **10**
    - _WriteCapacityUnits_: **20**
10. Click **Next**.
11. On the stack options page, give it a "name" tag of "dynamo".
12. Click **Next**.
13. Click **Create stack**.

### Create a VPC from a CloudFormation Template

1. Click **Create stack**.
2. Select **Template is ready**.
3. Select **Upload a template file**, and **Choose file**.
4. Upload the `Lab1_VPC.json` file.
5. Click **View in Designer**.
6. Click the checkbox at the top to validate it, and then click the cloud icon with the up arrow to create the stack.
7. Click **Next**.
8. On the stack details page, give it a *Stack name* of "vpcDemo".
9. Click **Next**.
10. On the stack options page, set the *Key* as "name" and *Value* as "VPCDemo".
11. Click **Next**.
12. Click **Create stack**.

### Build a Stack Containing an S3 Bucket

1. Click **Create stack**.
2. Select **Template is ready**.
3. Select **Upload a template file**, and **Choose file**.
4. Upload the `Lab1_S3Retain.json` file.
5. Click **View in Designer**.
6. Click the checkbox at the top to validate it, and then click the cloud icon with the up arrow to create the stack.
7. Click **Next**.
8. On the stack details page, give it a *Stack name* of "S3Demo".
9. Click **Next**.
10. On the stack options page, set the *Key* as "name" and *Value* as "S3Demo".
11. Click **Next**.
12. Click **Create stack**.
13. Click the **Outputs** tab.
14. Open the website URL listed in a new browser tab, which should result in an error.
15. Back in the AWS console, navigate to S3.
16. Click to open the **s3demo-** bucket we created.
17. Click **Upload**, and upload the `index.html` file you downloaded at the beginning of the lab.
18. Accept the defaults on all screens, and click **Upload**.
19. Refresh the browser tab with the website URL we tried before — its status will now be *AccessDenied*.
20. In the S3 console, click to open the **index.html** file.
21. In the *Permissions* tab, select **Everyone** under *Public access*.
22. In the *Everyone* window, un-select **Write object permissions**, and click **Save**.
23. Refresh the browser tab with the website URL we tried before — it should now work and display a landing page.
24. In the CloudFormation stack console, select our **S3Demo** stack.
25. Click **Delete**, and then **Delete stack**.
26. In the *Events* tab, notice a status of *DELETE_SKIPPED* since the S3 bucket has a *DeletionPolicy* of *retain*.
27. In the S3 console, refresh the buckets table. You should see our bucket still exists, even though the stack was deleted.

## Conclusion

Congratulations on successfully completing this hands-on lab!
