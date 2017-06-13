---
layout: post
title: Obvious in retrospect 
---

h1. {{ page.title }}

p(meta). Feb 2, 2010 - Los Angeles

I noticed some strange behavior with a ruby process on an ec2 instance recently.

It's a process that does record-linkage so it's comparing several thousand strings of less than 100 characters several million times to make some astute judgments on whether records from different sources reference the same entity.  Because it's such a small corpus it easily fits into memory.  Also it's not writing any io to stdout or disk.  Yet it's only using 38% of the cpu capacity, with a nice of 0 and no other prioritized activity running.

I did a comparison on my desktop and the process quickly ran up to 100% usage of a cpu core.  I was discussing it with a friend who suggested that "ur server is throttled."  I suppose that's obvious in retrospect, it was perhaps naive to think that ec2's virtualization would in some way abstract the hardware.  

After reviewing the documentation I see "One EC2 Compute Unit (ECU) provides the equivalent CPU capacity of a 1.0-1.2 GHz 2007" and /proc/cpuinfo informs me "model name	: Intel(R) Xeon(R) CPU           E5430  @ 2.66GHz."  38% sounds about right.

we're gonna need a bigger boat.

