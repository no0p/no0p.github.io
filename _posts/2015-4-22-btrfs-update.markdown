---
layout: post
title: Btrfs & Postgres  
categories: []
---

h1. {{ page.title }}

p(meta). April, 2015 - Portland

A few months ago I posted some <a href="http://no0p.github.io/postgresql/2014/09/06/benchmarking-postgresql-btrfs-zlib.html">notes on evaluating the relative performance characteristics of running postgresql on ext4 and btrfs</a>.  In particular I was excited to explore some potential benefits of transparent compression mount options.  In this post I share some of my experience with running a postgresql cluster on btrfs, and explain why I'm no longer using btrfs for this purpose.

h2. Some pitfalls

Btrfs is the future for linux filesystems.  Managing disk arrays is trivial -- simple commands can add and remove devices from disk arrays.

For example, when df reported 52% free space on the 2TB volume where my main tablespace was located, yet the postgresql cluster crashed due to a lack of disk space, I was able to start work on repairing the filesystem by adding a usb stick device to the raid array with a single command.

bc. btrfs device add /dev/sdj1 /storage/database/

At the time I was surprised, hoping that the cluster would ultimately recover without issue.

But I did note how convenient it was to expand the volume to restart the cluster, and could imagine a future where I solved disk space issues with a native linux filesystem without difficult decisions or bit level copying.

It turns out that df is <a href="https://btrfs.wiki.kernel.org/index.php/FAQ#Why_is_free_space_so_complicated.3F">wildly unreliable</a> with btrfs.  Apparently <a href="http://marc.merlins.org/perso/btrfs/post_2014-05-04_Fixing-Btrfs-Filesystem-Full-Problems.html">this particular problem</a> can be caused by the way chunks are allocated and freed, or not freed.  I had heard that the filesystem has issues as disks approached full utilization.  Still I was surprised that less than 50% of the space would be available before onerous manual maintenance operations would be required.

Generally after you add a device you start a rebalance operation which will redistribute data appropriately depending on the raid level.  This operation can also be used to re-run files through the allocation process, resulting in a more efficient use of filesystem chunks and thus reclaim some of the missing space.

bc. btrfs balance start -v -dusage=50 /storage/database/

This operation can be done online, which is good because it took about 24 hours to complete 30% of the process on two 1TB SSDs with Raid0.  A full balancing operation may reallocate your entire filesystem.  After 16 hours I decided to install mdadm and restore from backup with a different filesystem.  

I let the process play out, and indeed it recovered a lot of the missing device space.  The Btrfs wiki mentions that making this an automatic background process is a project goal, and once there, this hassle will probably not be a problem.

Nonetheless I was able to imagine a time in the future where balancing data across dynamically added raid devices was possible with simple commands, totally safe, and online.  

Ostensibly this level of dead allocations was due to running a database workload with the cow mount option enabled, which is required for using the compression mount option.  The wiki suggests that removing the cow restriction is a goal of a the project.

h2.  Good Prospects

While bummed that I would need to reallocate the entire filesystem at a geometric rate of disk utilization for my database workload, I was able to appreciate the long term goals of the project and the progress towards reaching these goals.  

I can't wait for better (or simpler for mortals) disk usage reporting, and less onerous characteristics around full disk utilization so I can enjoy the many benefits of this forward thinking filesystem.

As a result I wouldn't recommend using Btrfs for a database workload today, unless you have the time to read the manual thoroughly and take on some serious monitoring and maintenance responsibilities.
