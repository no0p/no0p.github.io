---
layout: post
title: Testing WAL sync method
categories: [postgresql]
---

h1. {{ page.title }}

p(meta). Octo 25, 2013 - Portland

Depending on many system details it's possible for there to be dramatic differences in the modes used to WAL files.

As I understand it, the optimal default method is typically detected at compilation time or via the package installing from.  Nonetheless it may be of interest to ensure this setting is optimized on your system considering the potentially large range of performance consequences.

As a first step you can evaluate your current sync method with @show wal_sync_method@ in psql.

The install contrib page pg_test_fsync.  This lives in /contrib/pg_test_fsync but can easily be installed from aptitude by ensuring the @postgresql-contrib@ package is installed.

Simply run the pg_test_fsync executable and some nice tables are printed showing the operations per second.  Example ouput is shown below:

bc..  
/usr/lib/postgresql/9.1/bin/pg_test_fsync
2000 operations per test
O_DIRECT supported on this platform for open_datasync and open_sync.

Compare file sync methods using one 8kB write:
(in wal_sync_method preference order, except fdatasync
is Linux's default)
        open_datasync                    2298.045 ops/sec
        fdatasync                        2297.712 ops/sec
        fsync                            2005.606 ops/sec
        fsync_writethrough                            n/a
        open_sync                        2005.871 ops/sec

Compare file sync methods using two 8kB writes:
(in wal_sync_method preference order, except fdatasync
is Linux's default)
        open_datasync                    1149.440 ops/sec
        fdatasync                        2296.319 ops/sec
        fsync                            1995.695 ops/sec
        fsync_writethrough                            n/a
        open_sync                        1005.303 ops/sec

Compare open_sync with different write sizes:
(This is designed to compare the cost of writing 16kB
in different write open_sync sizes.)

        16kB open_sync write             1992.955 ops/sec
         8kB open_sync writes            1006.121 ops/sec
         4kB open_sync writes             494.799 ops/sec
         2kB open_sync writes             250.885 ops/sec
         1kB open_sync writes             125.823 ops/sec

Test if fsync on non-write file descriptor is honored:
(If the times are similar, fsync() can sync data written
on a different descriptor.)
        write, fsync, close              2009.378 ops/sec
        write, close, fsync              1800.597 ops/sec

Non-Sync'ed 8kB writes:
        write                           155183.116 ops/sec

p. Note that some authors hint that there are some durability considerations with the different methods.
