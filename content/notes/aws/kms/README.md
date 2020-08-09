---
title: "KMS DEMO (2017)"
date: 2017-05-27T22:46:01Z
draft: false
---
KMS DEMO
---

KMS requires that the IAM user performing encryption / decryption
is allowed by policy to do so.

> See [create_user_with_policy.md](../create_user_with_policy)

Performing the encryption / decryption operations using the AWS CLI is
*almost* straight-forward.

> See [kms_encrypt_decrypt_demo.md](../kms_encrypt_decrypt_demo)

### Note

The user in this demo is granted access to all keys (`Resource: "*"`),
which is too wide a scope for production security policy to allow.

A script which created a key, then wrote the JSON policy with only the ARN of
that key as a `Resource` would be tighter.

Here's one we prepared earlier...

---
