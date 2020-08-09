---
title: "Encryption"
date: 2020-05-21T00:57:18Z
draft: false
summary: "Practical Examples of encryption"
---

## Encryption

### Symmetric Encryption

Requires both parties to know the same passphrase, or key.

The transmission / sharing of this shared key exposes the encryption to the risk of compromise.

> A practical example of Symetric Encryption

```bash
user@dev-machine:~/gpg-example 🐦 echo "plain text" >plain-text.txt
user@dev-machine:~/gpg-example 🐦 gpg -c --armour plain-text.txt
user@dev-machine:~/gpg-example 🐦 cat plain-text.txt.asc
-----BEGIN PGP MESSAGE-----

jA0ECQMC3mQkKt1XDfP/0kkBP24ZhGzIzYrnVc9CziPsl3AwVSH0kz4LItRFLKWb
vZseoT3VZUSWdsGz704r8kNN6gkPj7UkZp0KqzyLQlfhkr15fOOosquS
=RLCm
-----END PGP MESSAGE-----
user@dev-machine:~/gpg-example 🐦 gpg -o deciphered.txt plain-text.txt.asc
gpg: WARNING: no command supplied.  Trying to guess what you mean ...
gpg: AES256 encrypted data
gpg: encrypted with 1 passphrase
user@dev-machine:~/gpg-example 🐦 cat deciphered.txt
plain text
user@dev-machine:~/gpg-example 🐦

```

### Assymetric Encryption

A shared, **public** key is used to encrypt data. The public key can be freely shared, posted publicly and does not expose the encryption to compromise.

Decryption is performed using another key - a **private** key. The assymetric algorithm relies on the safe and secure storage of the private key. If the private key is never transmitted, shared etc then the algorithm is _reasonably_ secure. That is to say, it would take a very long time to defeat strong assymetric encryption such as RSA using conventional methods.

Quantum computing will probably smash RSA and a new standard will be required.

> A practical example of Asymmetric Encryption

```bash
user@dev-machine:~/gpg-example 🐦 gpg --gen-key

user@dev-machine:~/gpg-example 🐦 gpg --armour --output public-key.txt --export 'User One'
user@dev-machine:~/gpg-example 🐦 gpg --armour --output private-key.asc --export-secret-keys 'User One'
user@dev-machine:~/gpg-example 🐦 gpg --encrypt --recipient 'User One' plain-text.txt

user@dev-machine:~/gpg-example 🐦 cat plain-text.txt.asc
-----BEGIN PGP MESSAGE-----

hQGMA8NJlYRHbwMrAQwAtaslTzVeCesBIMkwJ8Vs7kO9ABCdQCR7g3W0+pKM3E4I
+QPDAoJn67Dmo3sce5np2cDXCWef2p8Cv9DmqN/Nkj3Awom8+DylsAV0WFlsYQEX
lLOuzHbZfnX/Bq1BjxvW+/Me/NBtRYKGTC0mfjaIRZ3TCFaq2xuCjFySi803dEgl
ka137ubMAEe/TqR7mGEge9gKEqNm7+GBTy0PCmSwDVcqJSX3wnOezMn25FHRGDy+
GZ++9ONK+/6DsJMMVaw19DwpsPmmI2q0nC9De7LS328ggRWHPm7Gn2qX2/RdtAhL
JauiINybBYtWCXRFYhF3NWDjC7ZgZ1F5kQfuxN414HOvmxZRi+h3gm7d3E65kN17
u829OEC0f45+kil6X+TmHdIpbpbXLrFSboHyF7Mq2aSqfOfMNuAq1QTHUyievwqA
f4n89Md46gtYhOvp9THjnHwBCqTpo0ULvhBYwbbLJJoj4Bg5yb0sd44Dm1U0L2Qq
0GIsJto0pO1ZxUmQsXhy0k8BN7LFbYAMHw3CAGtQjQaVXoe4jHTAWxjWzL13Wf4z
47JezvQv5uMb8+nEMbnUEMf2JBJ58WEywjGUvQd2bwM/lDSpIRxPGYfaeXGg+fPc
=WgSJ
-----END PGP MESSAGE-----


user@dev-machine:~/gpg-example 🐦 gpg --decrypt plain-text.txt.asc
gpg: encrypted with 3072-bit RSA key, ID C3499584476F032B, created 2020-05-21
      "User One <userone@localhost.local>"
plain text


```
