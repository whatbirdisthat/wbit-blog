---
title: "KMS Encrypt / Decrypt 101 (2017)"
date: 2017-05-27T22:46:00Z
draft: false
---

KMS Encrypt / Decrypt 101
---

KMS requires that you create at least one key before encrypting data.

```
export KEY_ARN=$(aws kms create-key \
  --description 'kms-demo-key-1' \
  --output text \
  --query 'KeyMetadata.Arn')
```

Creating a key is good but the id given to the key is a big UID.
That means remembering the UID every time we want to perform
encryption / decryption.

Instead, we can create an *alias* which allows for easier to
remember names to refer to our keys.

```
aws kms create-alias \
  --alias-name "alias/clouderz" \
  --target-key-id $KEY_ARN
```

With this alias in place, the command to encrypt some data is
easier to remember:

```
aws kms encrypt --key-id alias/clouderz --plaintext file://$(pwd)/plaintext.txt
```

The response from KMS is a json object with a base64 blob in it
that is the ciphertext.

```
{
    "KeyId": "arn:aws:kms:ap-southeast-2:650150604467:key/76d65a85-6ea0-47cf-ab73-8b2ab522bbde",
    "CiphertextBlob": "AQICAHgL+I5ryo1B4Y2ugteaBGAIU58atq7lqwop2wpa9WpiRAG/OaATTocubZyGXIA0Q8GSAAAAbTBrBgkqhkiG9w0BBwagXjBcAgEAMFcGCSqGSIb3DQEHATAeBglghkgBZQMEAS4wEQQMl4JVv9q9ZTz7gNhHAgEQgCpGgNYDpxPF567jYigEvmFwyngxmaJDN58zfoUXaIr9XCZV9uTz1mVxiWU="
}
```

In order to decrypt this ciphertext, we need to extract it from the json,
and decode it from base64 before we pass it back to kms.
