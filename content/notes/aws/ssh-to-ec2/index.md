---
title: "Ssh to Ec2"
date: 2020-05-19T12:47:57Z
draft: true
---

## SSH to EC2 from LINUX

The AWS documentation talks about ssh to an EC2 instance from MAC and from windows but the commands differ slightly when connecting from LINUX.

Using `ssh-agent` to hold keys is convenient, secure and makes for an easy time of jumping through public subnet EC2 instances ('bastion' hosts) into private subnet instances.

To do this, in a new terminal, use the following commands.

```bash
eval `ssh-agent`
ssh-add keypair.pem #where keypair.pem is the name of the downloaded pem
ssh ec2-user@10.0.1.116 # for example

```

> [!info] If your terminal (or homepc) has more than 5 keys already loaded into the agent this will be a problem.

To forward the agent, use the `-A` flag like this.

```bash
#assuming we have already loaded the key using ssh-add (above)
user@homepc$ ssh -A ec2-user@bastion-host.public.internet

...

ec2-user@bastion-host$ ssh other-host.private.subnet

"Welcome to the private host"

ec2-user@private-host$ echo "hooray!"

```
