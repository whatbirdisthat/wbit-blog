---
title: "Creating a User with Encrypt/Decrypt policy permissions (2017)"
date: 2017-05-29T08:04:13Z
draft: false
description: create a user for encrypting / decrypting data using KMS
---

# Creating a user with ENCRYPT / DECRYPT policy permissions

AWS KMS requires that a user be explicitly granted permissions to
ENCRYPT / DECRYPT using either _any data key_ or a specific data key.

Interestingly, and due to AWS being all-ways configurable - an IAM user
with CREATE_KEY permissions, who can CREATE the key, does not have permissions to actually use the key unless specifically granted.

## Objective

> To create a user for testing KMS,
> with permissions to create keys and use them.

## Create an appropriate policy document

We want a policy document that we can attach a group which we can use to grant permissions to encrypt and decrypt using KMS.

### `crypto-policy.json`

```json
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": ["kms:Encrypt", "kms:Decrypt"],
      "Resource": "*"
    }
  ]
}
```

## Create a policy in AWS world using the JSON above

```bash
export POLICY_ARN=$(aws iam create-policy \
  --policy-name 'kms-demo-crypter-policy' \
  --policy-document file://crypto-policy.json \
  --output text \
  --query 'Policy.Arn')
```

## Create an IAM group which we can attach the policy to

```bash
export GROUP_NAME=$(aws iam create-group \
  --group-name 'kms-demo-crypters'
  --output text
  --query 'Group.GroupName')
```

## Attach the policy to the group

```bash
aws iam attach-group-policy \
  --group-name $GROUP_NAME \
  --policy-arn $POLICY_ARN
```

Now that the group has the policy attached, we create an IAM user that we can add to the group, thereby granting permissions to encrypt and decrypt using KMS.

## Create a user

```bash
export USER_NAME=$(aws iam create-user \
  --user-name 'kms-demo-user-one' \
  --output text
  --query 'User.UserName')
```

---

At this point the user _cannot_ use kms to encrypt or decrypt anything - in fact the user cannot do _anything_ at all.

Let's prove this:

```bash
aws iam create-access-key --user-name $USER_NAME
```

Take the `AccessKeyId` and `SecretAccessKey` values and add them to a new
profile section in `~/.aws/credentials` and copy a new config section for
that profile in `~/.aws/config` - the profile for this demo has been named
'kms-demo-user-one'.

Proving that the user can currently do nothing:

```bash
aws kms encrypt --profile kms-demo-user-one --region ap-southeast-2 \
  --key-id alias/clouderz \
  --plaintext file://$(pwd)/plaintext.txt
```

AWS returns the following error message:

```bash
An error occurred (AccessDeniedException) when calling the Encrypt operation: User: arn:aws:iam::650150604467:user/kms-demo-user-one is not authorized to perform: kms:Encrypt on resource: arn:aws:kms:ap-southeast-2:650150604467:key/76d65a85-6ea0-47cf-ab73-8b2ab522bbde

```

---

## Add the user to the group

```bash
aws iam add-user-to-group \
  --user-name $USER_NAME \
  --group-name $GROUP_NAME
```

The user is now a part of the group, inheriting all the permissions assigned to that group.

To prove that this is actually the case, jump to [README.md](README.md) to continue with the KMS exercise.

---
