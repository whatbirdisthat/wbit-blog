# Working with CloudFormation Condition Functions

## Introduction

This hands-on lab allows the student to create a condition function in a CloudFormation template. The condition function will determine if the VPC deployed by the template will be configured with default or dedicated tenancy. The student can either take the challenge of completing the lab without looking at the solution template, or they follow along with the solution offered in the second video.

## Solution

1. Before beginning the lab, download the **.json** files described on the lab page.

2. Log in to the AWS Management Console using the credentials provided on the lab instructions page. Make sure you're using the `us-east-1` region.

### Create a Dedicated VPC

1. Click **CloudFormation**.

2. Click **Create stack** in the **Stacks** box.

3. Under **Specify template**, select **Upload a template file**.

4. Click **Choose file**.

5. Navigate to the `Lab1_VPC.json` file previously downloaded and select it.

6. Click **View in Designer**.

7. Click the cloud button at the top to launch the stack wizard.

8. Click **Next**.

9. Under *Stack name*, enter "vpcdedicated".

10. Click **Next**.

11. Click **Next**.

12. Click **Create stack**.

13. Open a new tab and click **Services** at the top. Select **VPC**.

14. Verify that you created a second VPC with dedicated tenancy.

### Create a Dedicated VPC with a Conditional Parameter

1. Go back to your original tab and click **View in Designer**.

2. Add a parameter by adding the following text above the `Resources` section.
   
   ```bash
   "Parameters": {
      "Tenancy": {
      "Description": "Set up VPC Tenancy",
      "Type": "String",
      "Default": "default",
      "AllowedValues" : ["default", "dedicated"]
      }
   },
   ```

3. Add a condition by adding the following text below the `Parameters` section.
   
   ```bash
   "Conditions" : {
      "VPCTenancy" : {"Fn::Equals" : [{"Ref" : "Tenancy"}, "dedicated"]}
   },
   ```

4. Replace the `InstanceTenancy : "dedicated",` line under `Resources` with the following.
   
   ```bash
   "InstanceTenancy" : {
      "Fn::If" : [
          "VPCTenancy",
          "dedicated",
          "default"
      ]},
   ```

5. Click the checkmark at the top to verify the template.

6. Click the cloud button at the top to launch the stack wizard.

7. Click **Next**.

8. Under *Stack name*, enter "conditionDemo".

9. Under *Tenancy*, select **dedicated** from the combo box.

10. Click **Next**.

11. Click **Next**.

12. Click **Create stack**.

13. Refresh the other tab viewing the VPCs.

14. Verify that you created a third VPC with dedicated tenancy. In the original tab, you can click the **Resources** tab to get the ID for the VPC. Use that to verify the new VPC with dedicated tenancy.

### Create a VPC with Default Tenancy Using the Conditional Template

1. Click the **template** tab.

2. Click **View in Designer**.

3. Click the **YAML** option to view the template in YAML.

4. Click the checkmark at the top to verify the template.

5. Click the cloud button at the top to launch the stack wizard.

6. Click **Next**.

7. Under *Stack name*, enter "conditionDemo2".

8. Under *Tenancy*, make sure **default** is selected in the combo box.

9. Click **Next**.

10. Click **Next**.

11. Click **Create stack**.

12. Refresh the other tab viewing the VPCs.

13. Verify that you created a fourth VPC with default tenancy. In the original tab, you can click the **Resources** tab to get the ID for the VPC. Use that to verify the new VPC with default tenancy.

## Conclusion

Congratulations — you've completed this hands-on lab!
