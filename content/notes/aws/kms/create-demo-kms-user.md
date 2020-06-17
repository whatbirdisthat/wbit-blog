---
title: "Create Demo KMS User using awscli (2017)"
date: 2017-05-27T22:59:41Z
draft: false
description: a bash script that creates a user with KMS policy permissions
---

# A script to showcase all the KMS

```bash
#!/bin/bash
#set -xe

DEMO_KEY_DESCRIPTION='KMS Demo Key'
DEMO_POLICY_NAME='kms-demo-policy'
DEMO_USER_NAME='kms-demo-user'
DEMO_GROUP_NAME='kms-demo-group'

KEY_ARN=$(aws kms create-key \
  --description "${DEMO_KEY_DESCRIPTION}" \
  --output text \
  --query 'KeyMetadata.Arn')

echo "KEY ARN: ${KEY_ARN}"

POLICY_ARN=$(aws iam create-policy \
  --policy-name "${DEMO_POLICY_NAME}" \
  --output text \
  --query 'Policy.Arn' \
  --policy-document \
  '{"Version":"2012-10-17","Statement":[{"Effect":"Allow","Action":["kms:Encrypt","kms:Decrypt"],"Resource":"'$KEY_ARN'"}]}')

GROUP_NAME=$(aws iam create-group \
  --group-name "${DEMO_GROUP_NAME}" \
  --output text \
  --query 'Group.GroupName')

aws iam attach-group-policy \
  --group-name $GROUP_NAME \
  --policy-arn $POLICY_ARN

USER_NAME=$(aws iam create-user \
  --user-name "${DEMO_USER_NAME}" \
  --output text \
  --query 'User.UserName')

aws iam add-user-to-group \
  --user-name "${USER_NAME}" \
  --group-name "${GROUP_NAME}"

echo '['${DEMO_USER_NAME}']' >> ~/.aws/credentials
echo 'aws_secret_access_key='$(aws iam create-access-key \
  --user-name "${USER_NAME}" \
  --output text \
  --query 'AccessKey.SecretAccessKey') >> ~/.aws/credentials

ACCESS_KEY_ID=$(aws iam list-access-keys \
  --user-name "${USER_NAME}" \
  --output text \
  --query 'AccessKeyMetadata[0].AccessKeyId')
echo 'aws_access_key_id='${ACCESS_KEY_ID} >> ~/.aws/credentials

echo '#!/bin/bash' >try-to-encrypt-${DEMO_USER_NAME}.sh
echo 'aws kms encrypt --profile '${DEMO_USER_NAME}' --key-id '${KEY_ARN}' --plaintext '"'this is a test'" >>try-to-encrypt-${DEMO_USER_NAME}.sh
chmod u+x try-to-encrypt-${DEMO_USER_NAME}.sh

echo '#!/bin/bash' >cleanup-${DEMO_USER_NAME}.sh
echo '#set -xe' >>cleanup-${DEMO_USER_NAME}.sh
echo 'echo CLEAN UP '${DEMO_USER_NAME} >>cleanup-${DEMO_USER_NAME}.sh
echo '# REMOVE EVERYTHING WE JUST CREATED:' >>cleanup-${DEMO_USER_NAME}.sh
echo 'aws iam remove-user-from-group --user-name '${USER_NAME}' --group-name '${GROUP_NAME} >>cleanup-${DEMO_USER_NAME}.sh
echo 'aws iam detach-group-policy --group-name '${GROUP_NAME}' --policy-arn '${POLICY_ARN} >>cleanup-${DEMO_USER_NAME}.sh
echo 'aws iam delete-group --group-name '${GROUP_NAME} >>cleanup-${DEMO_USER_NAME}.sh
echo 'aws iam delete-policy --policy-arn '${POLICY_ARN} >>cleanup-${DEMO_USER_NAME}.sh
echo 'aws iam delete-access-key --access-key-id '${ACCESS_KEY_ID}' --user-name '${USER_NAME} >>cleanup-${DEMO_USER_NAME}.sh
echo 'aws iam delete-user --user-name '${USER_NAME} >>cleanup-${DEMO_USER_NAME}.sh
echo 'aws kms schedule-key-deletion --key-id '${KEY_ARN} >>cleanup-${DEMO_USER_NAME}.sh
echo 'head -n 4 ~/.aws/credentials > ~/.aws/credentials-new' >>cleanup-${DEMO_USER_NAME}.sh
echo 'mv ~/.aws/credentials-new ~/.aws/credentials' >>cleanup-${DEMO_USER_NAME}.sh
echo '# cleaned up :)' >>cleanup-${DEMO_USER_NAME}.sh

chmod u+x cleanup-${DEMO_USER_NAME}.sh
#cat  cleanup-${DEMO_USER_NAME}.sh

# done
```