# Getting Started with CloudFormation

## Introduction

This hands-on lab provides a gentle introduction to CloudFormation, using it to create and update a number of S3 buckets.

By the end of this hands-on lab, you will be comfortable using CloudFormation and can begin experimenting with your own templates.

## Solution

Log in to the live AWS environment using the credentials provided, and make sure you are in the `us-east-1` (N. Virginia) region.

The CloudFormation templates and other hands-on lab files can be [found here](https://github.com/linuxacademy/content-aws-csa2019/tree/master/lab_files/01_aws_sa_fundamentals/getting_started_with_cfn).

A list of AWS resources and what happens when updates occur can be [found here](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html).

### Create CloudFormation Stack

1. Download the [**createstack.json** file](https://raw.githubusercontent.com/linuxacademy/content-aws-csa2019/master/lab_files/01_aws_sa_fundamentals/getting_started_with_cfn/createstack.json) by right-clicking and selecting **Save As** functionality.
2. In the AWS console, navigate to CloudFormation.
3. Click **Create stack** > **With new resources (standard)**.
4. Select **Template is ready**.
5. Choose to **Upload a template** and **Choose file**.
6. Locate `createstack.json` in the AWS browser window that popped up. Click **Open** once it's selected, then click **Next**.
7. Name the stack "cfnlab".
8. Click **Next** > **Next**.
9. Accept the remaining defaults, and click **Create stack**.
10. Refresh the page to watch the progress.
11. Navigate to S3. We didn't specify a name in the `json` file for this bucket, so AWS names it with the **[STACKNAME]-[LOGICAL_VOLUME_NAME]-[RANDOM_STRING]** format.

### Update CloudFormation Stack

1. Save the [**updatestack1.json**](https://raw.githubusercontent.com/linuxacademy/content-aws-csa2019/master/lab_files/01_aws_sa_fundamentals/getting_started_with_cfn/updatestack1.json) and [**updatestack2.json**](https://raw.githubusercontent.com/linuxacademy/content-aws-csa2019/master/lab_files/01_aws_sa_fundamentals/getting_started_with_cfn/updatestack2.json) files like we did for `createstack.json`.

#### Update #1

1. Navigate to CloudFormation.
2. Select the `cfnlab` stack, and click **Update**.
3. Select **Replace current template** and **Upload a template file**.
4. Click **Choose file**, select `updatestack1.json`, and click **Open**.
5. Click **Next** > **Next** > **Next**.
6. Click **Update stack**.
7. Once it's finished updating, navigate to S3. We should see the new `dogpics` bucket.

#### Remove the Update

1. Navigate back to CloudFormation.
2. Select the `cfnlab` stack, and click **Update**.
3. Select **Replace current template** and **Upload a template file**.
4. Click **Choose file**, select `createstack.json` again, and click **Open**.
5. Click **Next** > **Next** > **Next**.
6. Click **Update stack**.
7. Once it's finished updating, navigate to S3. We should see the `dogpics` bucket is now gone.

#### Update #2

1. Open the `updatestack2.json` file, and change the **123** characters in **catsareawesome123** to something unique (e.g., your birthday and today's date).
2. Save the file.
3. In the CloudFormation console, select the `cfnlab` stack, and click **Update**.
4. Select **Replace current template** and **Upload a template file**.
5. Click **Choose file**, select `updatestack2.json`, and click **Open**.
6. Click **Next** > **Next** > **Next**.
7. Click **Update stack**.
8. Once it's finished updating, navigate to S3. We should see two changes: The `dogpics` bucket is back, and our bucket name is updated to the new value.

### Create More CloudFormation Stacks

#### Create a Stack with `updatestack2.json`

1. Navigate to CloudFormation.
2. Click **Create stack** > **With new resources (standard)**.
3. Select **Template is ready**.
4. Choose to **Upload a template** and **Choose file**.
5. Select `updatestack2.json`, and click **Open**.
6. Click **Next**.
7. Name the stack "cfnlab2".
8. Click **Next** > **Next**.
9. Accept the remaining defaults, and click **Create stack**.
10. Refresh the page to watch the progress.
11. Note it eventually fails — we can't have another S3 bucket with the same name.

#### Create a Stack with `updatestack1.json`

1. Navigate to CloudFormation.
2. Click **Create stack** > **With new resources (standard)**.
3. Select **Template is ready**.
4. Choose to **Upload a template** and **Choose file**.
5. Select `updatestack1.json`, and click **Open**.
6. Click **Next**.
7. Name the stack "cfnlab3".
8. Click **Next** > **Next**.
9. Accept the remaining defaults, and click **Create stack**.
10. Refresh the page to watch the progress.
11. Once it's complete, navigate to S3, where we should see two new buckets: `cfnlab3-catpics-` and `cfnlab3-dogpics-`.

### Delete Stacks

1. Navigate to CloudFormation.
2. Click `cfnlab`.
3. Click **Delete**.
4. In the dialog, click **Delete stack**.
5. Click the **Events** tab to see the resources being deleted.
6. Select `cfnlab2`.
7. Click **Delete**.
8. In the dialog, click **Delete stack**.
9. Select `cfnlab3`.
10. Click **Delete**.
11. In the dialog, click **Delete stack**.
12. Click the **Events** tab to see the resources being deleted.
13. Once it's all done, navigate to S3. We should see all the `cfnlab` buckets are gone, as well as our `catsareawesome` bucket.

## Conclusion

We've managed to use templates to create stacks and related resources, as we were able to get things cleaned up when we were done with them in pretty short order. Congratulations!
