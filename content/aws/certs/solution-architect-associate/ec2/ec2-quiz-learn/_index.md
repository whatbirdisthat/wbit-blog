---
title: "EC2 Quiz Learn"
date: 2020-06-23T11:25:12+10:00
draft: false
---

> ## What is the naming convention for a private DNS of EC2 instances?

-   [ ] ~~ec2-x-x-x-x.ip.internal~~
-   [ ] ~~internal-x-x-x-x.ec2.ip~~
-   [ ] ~~x-x-x-x.ec2.internal~~
-   [x] ip-X-X-X-X.ec2.internal

> A private DNS starts with the word "ip" followed by dashes, the private IP, "ec2" and ending with the word "internal".
> An Amazon-provided private (internal) DNS hostname resolves to the private IPv4
> address of the instance, and takes the form `ip-private-ipv4-address.region.compute.internal`
> for the US-East-1 region, and `ip-private-ipv4-address.region.compute.internal` for other regions.
> Where `private-ipv4-address` is the reverse lookup IP address).
