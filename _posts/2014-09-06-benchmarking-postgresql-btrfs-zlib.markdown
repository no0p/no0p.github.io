---
layout: post
title: Btrfs considered ... helpful
categories: [postgresql]
---

h1. {{ page.title }}

p(meta). Sep 6, 2014 - Portland, OR

This post takes a look at Btrfs and its transparent compression mount option for storing data files in the context of a Postgresql tpc-b benchmark.

The results suggest a limited but real performance benefit to running Postgresql with data tables on Btrfs over Ext4.  A performance gain is realized when table and index sizes exceed available memory for disk cache and the system is under enough load to make checkpoints challenging enough to constrain disk read operations for continued transaction processing.  Benchmarks expereienced an approximate 2X gain in transactions per second for the system under test.

A hypothesis and evidence are presented which may explain the performance differences.  One possibility is that Btrfs' fsync implementation is more selective than Ext4 mounted with data=ordered.  Another possibility is that write entanglement in Ext4 exarcerbates resource contention during checkpoints, starving required disk reads.  And it appears that transparent compression reduces the overall read and write load, reducing resource contention during checkpoints.  Alternative theories actively solicited.

<img src="/images/malcolm.png" style="float: right; margin-left: 30px;" width="300"/>
Of course computational systems are dynamic systems and meaningful benchmark results are hard.  Please accept these results as meaningful only within the specific context presented.  There could easily be a bifurcation point for any old configuration parameter -- life will find a way to ruin your benchmark.

h2.  System Under Test

The tests were run on my desktop computer.  The pgbench databases existed in a tablespace on a cheap Western Digital 3TB Network drive from Fry's.  The underlying filesystem for the tablespaces changed between tests while all other configuration options remain the same.  WAL and other disk usage was on a generic Intel SSD.  The computer has *32 GB of RAM*, and *shared buffers was set at 500MB*.

- Btrfs v3.12
- 3.13.0-24-generic

For more details, below please find links pointing to hardware and configuration details.

<table class="list_table">
  <tr>
    <td>
      <a href="/images/btrfs_benchmark_postgresql.conf">postgresql.conf</a><br/><br/>
      <a href="/images/pgbench.conf">pgbench-tools configuration</a><br/><br/>
      <a href="/images/lshw_benchmark.txt">$ sudo lshw</a><br/><br/>
    </td>
    <td width="550px" style="text-align: center">
      <img src="/images/disks.png" width="400" class="imagedropshadow"/>
    </td>
  </tr>
</table>

h2.  Motivation

A project recently came up which requires storing about 6TB of text data.  The goal is to work with this volume of data at home on a desktop computer with a couple cheap disk drives.  

Possible partitioning schemes considered, there will still be some amount of operations against data sets larger than available memory.  How much might filesystem compression help?

h2.  Results and Questions

In the general case Ext4 outperforms Btrfs for a tpc-b workload until a certain scale is reached, at which point, Btrfs outperforms Ext4.  Note that at scale 20,000 the pgbench accounts table is about 250GB and its primary key index is about 42GB.

<table>
  <tr>
    <td> <image src="/images/btrfs_ext4_all_scales.png" width="400"/>  </td>
    <td> <image src="/images/ext4_btrfs_zoom.png" width="400"/> </td>
  </tr>
   <tr>
    <td class="figure_subtitle">Fig. 1 - Btrfs / EXT 4</td>
    <td class="figure_subtitle">Fig. 2 - Btrfs / EXT 4 Large Scale Zoom</td>
  </tr>
</table>

<hr/>

Btrfs mounted with zlib compression outperforms both Btrfs and EXT4 as scale increases.

<center>
<table>
  <tr>
    <td> <image src="/images/scaling-sets-ext-btrfs-zlib.png" width="600"/>  </td>
  </tr>
   <tr>
    <td class="figure_subtitle">Fig. 3 - Btrfs / EXT 4 / Btrfs Zlib</td>
  </tr>
</table>
</center>

Note how EXT4 outperforms both Btrfs configurations at a small scale, but underperforms at higher scales.  


h3.  Impact of Concurrency

For the case of low concurrency (1 client) we observe fairly uniform relative tps rates.  For higher concurrency (32 clients) we witness a dramatic change in transactions per second as scale increases with EXT4 crossing both Btrfs configurations.  

<table>
  <tr>
    <td> <image src="/images/1_client_set.png" width="400"/>  </td>
    <td> <image src="/images/32_clients_set.png" width="400"/> </td>
  </tr>
   <tr>
    <td class="figure_subtitle">Fig. 5 - 1 client</td>
    <td class="figure_subtitle">Fig. 6 - 32 clients</td>
  </tr>
</table>

It is not clear if it is concurrency and attendant locking issues or whether the difference is in total transaction volume.

Below is a chart with additional runs at various scales to pinpoint where EXT4 performance dips below Btrfs performance.  It includes lines indicating key memory thresholds relative to pgbench scales.  We note that the relative performance changes at the point when database size exceeds the approximate free memory for disk cache.

<center>
<table>
  <tr>
    <td>
      <image src="/images/scaling_sets_additional_runs_32.png" width="800"/>
    </td>
  </tr>
   <tr>
    <td class="figure_subtitle">Fig. 7 - 32 clients, Additional runs at intersection</td>
  </tr>
</table>
</center>

Below are some memory statistics taken during the test runs at scale 1,800.

bc.. # select testset.info,  avg(load_avg) as load_avg, 
    pg_size_pretty(avg(swap_free::numeric * 1024)) as swap_free_avg, 
    pg_size_pretty(avg((pages_available::numeric * sys_stats.page_size))) 
      as least_free_mem,  
    pg_size_pretty(avg(page_cache::numeric * 1024)) as max_page_cache_size
  from tests 
    inner join testset on testset.set = tests.set
    inner join sys_stats on 
          measured_at > tests.start_time and
          measured_at < tests.end_time
    group by testset.info
    order by testset.info;

info          | load_avg | swap_free_avg | least_bytes_available | max_page_cache_size 
--------------+----------+---------------+-----------------------+---------------------
 btrfs        |   30.6   | 32 GB         | 2005 MB               | 27 GB
 btrfs zlibea |   30.6   | 32 GB         | 3398 MB               | 25 GB
 ext4         |   30.7   | 32 GB         | 1934 MB               | 26 GB

p.  These high level stats suggest that there is not a drastic, obvious difference in overall memory use between the various filesystems which would explain the performance differences.  EXT4 performance dips below Btrfs once the the pgbench accounts table and index no longer fit in memory.

h2.  The usual suspect: fsync

<a href="https://www.youtube.com/watch?v=ETC6NSxpFFE" style="float: right; margin-left: 30px;">
  <image src="/images/scary.png" width="200"/>
</a>

Below is a collection of dirty memory timeseries from the benchmark trials with 32 clients, grouped by filesystem configuration.  Pgbench-tools polls /proc/meminfo while running the benchmarks.  It records the Dirty entry which represents dirty memory in kb which has not yet been flushed.  We can see periodic fsync calls in each trial, but note that Btrfs is reluctant to flush as much data to disk on fsync calls.  
      
These calls are from required checkpoints.  This is not surprising as these trials were run with a default setting of @checkpoint_segments = 3@.  Note that these graphs do not have the same scale.  Click the image for a larger view to see these details more clearly.
     

<center>
<table>
  <tr>
    <td>
      <a href="/images/dirty_memory_group.png"><image src="/images/dirty_memory_group_small.png" width="800" />
    </td>
  </tr>
   <tr>
    <td class="figure_subtitle">Fig. 8 - 32 client dirty memory across filesystems</td>
  </tr>
</table>
</center>


Recall the convergent performance for all filesystems with a single client at scale 20,000 in Figure 5.  Below are the dirty memory timeseries for 1 client at scale 20,000 (313GB database size). 

<center>
<table>
  <tr>
    <td>
      <a href="/images/dirty_memory_group_1_client.png"><image src="/images/dirty_memory_group_1_client_small.png" width="800" />
    </td>
  </tr>
   <tr>
    <td class="figure_subtitle">Fig. 9 - 1 client dirty memory</td>
  </tr>
</table>
</center>

The patterns are much more similar than the high concurrency case, each flushing nearly all dirty buffers at about 1 checkpoint a minute. Before we take a closer look at why EXT4 might be flushing nearly all dirty buffers while Btrfs is flushing less, let's confirm that fsync is the underlying factor in performance degredation.

I've been waiting my entire life for a legitimate reason to set @fsync=off@.

<center>
<table>
  <tr>
    <td>
      <image src="/images/scaling-sets-no-fsync.png" width="600"/>
    </td>
  </tr>
   <tr>
    <td class="figure_subtitle">Fig. 10 - tps plot 32 clients, fsync=off</td>
  </tr>
</table>
</center>

This experiment supports the hypothesis that Fsync behavior is responsible for the non-linear changes in relative tps performance as scale increases with high concurrency.  

The results of a @select statement@ offer additional support.

<center>
<table>
  <tr>
    <td>
      <image src="/images/scaling-sets_select_32.png" width="600"/>
    </td>
  </tr>
   <tr>
    <td class="figure_subtitle">Fig. 11 - tps plot 32 clients select benchmark</td>
  </tr>
</table>
</center>

bc.. results=# select info, avg(tps) from tests 
             inner join testset on testset.set = tests.set 
               where scale = 5000 group by info order by avg(tps) asc;
    info    |         avg          
------------+----------------------
 ext4       | 379.7055955000000000
 btrfs      | 421.8990160000000000
 btrfs zlib | 548.8420900000000000
(3 rows)

p. At @scale=5000@ Btrfs with zlib compression is processing 45% more select statements/second.  Still, at no point does EXT4 outperform Btrfs.  It does appear that fsync behavior is behind the EXT4 crossover highlighted in figure 7.

h2.  A look at checkpoints

Using data collected with <a href="https://github.com/no0p/pgsampler">pgsampler</a> we can look at the bgwriter stats during a test run.

bc.. WITH checkpoints AS (
	SELECT checkpoints_timed - lag(checkpoints_timed) over w as timed_checkpoints, 
	       checkpoints_req - lag(checkpoints_req) over w as required_checkpoints,
	       buffers_checkpoint - lag(buffers_checkpoint) over w as buffers_checkpoint,
	       buffers_backend - lag(buffers_backend) over w as buffers_backend,
	       measured_at
	FROM bg_stats
	WHERE cluster_id = 2
        WINDOW w as (order by measured_at asc)
)
SELECT * FROM checkpoints
	WHERE measured_at > '2014-09-03 23:35:47.926066' AND 
	      measured_at < '2014-09-03 23:41:48.906815' AND 
	      (required_checkpoints > 0 OR timed_checkpoints > 0)
	ORDER BY measured_at asc;
	
timed_chkpnt | req_chkpnt | buffers_checkpoint | buffers_backend |        measured_at          
-------------+- ----------+--------------------+-----------------+--------------------------
           0 |          1 |                195 |              47 | 2014-09-03 23:35:51
           0 |          1 |               2983 |             174 | 2014-09-03 23:35:55
           0 |          1 |              12112 |             181 | 2014-09-03 23:36:27
           0 |          1 |              11511 |             200 | 2014-09-03 23:37:15
           0 |          1 |              11304 |             172 | 2014-09-03 23:38:04
           0 |          1 |               3271 |             153 | 2014-09-03 23:38:52
           0 |          1 |              11077 |             185 | 2014-09-03 23:39:46
           0 |          1 |              13044 |             229 | 2014-09-03 23:40:38
           0 |          1 |               1037 |             189 | 2014-09-03 23:41:27

p.  

<center>
<table>
  <tr>
    <td>
      <image src="/images/ext_rwait.png" width="600"/>
    </td>
  </tr>
   <tr>
    <td class="figure_subtitle">Fig. 12 An EXT4 test with bell pepper checkpoints</td>
  </tr>
</table>
</center>

An unsurprising pattern: first a checkpoint, then elevated read wait times.


h2.  TPS and reads relationship

We can calculate TPS timeseries using data collected by <a href="https://github.com/no0p/pgsampler">pgsampler</a>.  This will allow us to compare TPS to IO activity and get a sense for the relationship between disk reads and tps performance.

bc.. select measured_at::time, 
	(current_tx_id - coalesce(lag(current_tx_id, 1) over w, current_tx_id)) 
	  / extract( epoch from  (measured_at - lag(measured_at, 1) over w))::numeric 
	    as tx_sec 
	from heartbeats as h 
	where cluster_id = 2 AND
	measured_at > '2014-09-03 23:35:48.299049' AND
	measured_at < '2014-09-03 23:41:48.299463'
	window w as (order by measured_at) 
	order by measured_at asc;
	
   measured_at   |        tx_sec        
-----------------+----------------------
 23:35:56.29807  | 454.6967081898260770
 23:36:01.333761 | 161.2489725839015936
 23:36:06.383592 | 137.4303417282677381
....

p. 	

<center>
<table>
  <tr>
    <td> <image src="/images/ext4_reads_tps.png" width="400"/>  </td>
    <td style="border-left: 1px solid #fff;"> <image src="/images/btrfs_reads_tps.png" width="400"/> </td>
  </tr>
  <tr>
    <td > <image src="/images/ext4_r_wait_tps.png" width="400"/> </td>
    <td style="border-left: 1px solid #fff;"> <image src="/images/btrfs_r_wait_tps.png" width="400"/> </td>
  </tr>
  <tr >
    <td class="figure_subtitle">Fig. 13 </td>
    <td class="figure_subtitle">Fig. 14 </td>
  </tr>
</table>
</center>

To state the obvious, there is some relationship between read service times and tps.

h2.  Write / Read Relationship

There appears to be a stronger observed relationship between the number of read and write requests issued in EXT4.

<center>
  <table>
    <tr>
      <td> <image src="/images/ext4_rw.png" width="400"/>  </td>
      <td style="border-left: 1px solid #fff;"> <image src="/images/btrfs_rw.png" width="400"/> </td>
    </tr>
    <tr >
      <td class="figure_subtitle">Fig. 15 </td>
      <td class="figure_subtitle">Fig. 16 </td>
    </tr>
  </table>
</center>


h2.  Are these filesystems storing the same data?

<center>
  <table>
    <tr>
      <td> 
        <image src="/images/r_await_dist.png" width="600"/>  
      </td>
    </tr>
    <tr>
      <td>
        <image src="/images/w_await_dist.png" width="600"/>
      </td>
    </tr>
    <tr >
      <td class="figure_subtitle">Fig. 17 read and write distributions</td>
    </tr>
  </table>
</center>

There is substantially more variance in the service times for EXT4.  Are the requests scheduled less efficiently?

h2.  "We add the element of scorched earth"

<a href="https://www.youtube.com/watch?v=DXkI_AGXIZE#t=182"><img src="/images/spieslikeus.jpg" width="200" class="imagedropshadow" style="float:right; margin-left: 20px;"/></a>  To rule out the possibility of fsync lying, a test was run using the <A href="http://brad.livejournal.com/2116715.html">diskchecker.pl</a> tool.  Each Filesystem Ext4, Btrfs, and Btrfs mounted with compression passed the verification step.  

This test involves physically unplugging the computer while it is writing a file.  

h2.  Wild conjecture about fsync implementations and implications

In this section we'll have a quick look at what Btrfs says about its fsync implementation, and then consider a potential pitfall for ext4 when updating tuples.  I've never worked on filesystems so *this is probably wrong*, and I hope a reader will have some better ideas and can leave a comment with a hypothesis.

"Btrfs does not force all dirty data to disk on every fsync or O_SYNC operation, fsync is designed to be fast." - <a href="https://btrfs.wiki.kernel.org/index.php/FAQ">Btrfs Wiki</a>

This statement certainly matches the observed btrfs dirty page flushing in figure 8.

&nbsp;

bc.. /*
 * tree logging is a special write ahead log used to make sure that
 * fsyncs and O_SYNCs can happen without doing full tree commits.
 *
 * Full tree commits are expensive because they require commonly
 * modified blocks to be recowed, creating many dirty pages in the
 * extent tree an 4x-6x higher write load than ext3.
 *
 * Instead of doing a tree commit on every fsync, we use the
 * key ranges and transaction ids to find items for a given file or directory
 * that have changed in this transaction.  Those items are copied into
 * a special tree (one per subvolume root), that tree is written to disk
 * and then the fsync is considered complete.
 * ...
 */

p. It would be nice to think that Btrfs is very efficient.  But the data shows that Btrfs was writing substantially more data to disk, processing more write requests and transactions.

So we must consider explanations for the larger variance in the read and write request service times for EXT4.

h3.  Write Entanglement

Below is an excerpt from a paper discussing some aspects of EXT4 write entanglement.

bc.. [Threads] A (small) and B writing to their own files. Thread A appends to a small
file A one 4K block at a time and then fsync it. Thread B, however, first randomly 
write 1024 blocks to a big file B, then append 1 block to this file’s end, then 
fsync it. We can see that the split-level scheduling cannot isolate fsync’s performance
on ext4 anymore because now ext4’s consistency machinery will register all the dirty 
date of file B to the current transaction once file B’s size changes, thus small fsync
will have to push all of B’s data to disk too and suffer from long latency. This comes 
from ext4’s internal entanglement which even split-scheduling cannot help with, but it
only happens on one particular situation: when a file is randomly updated and then 
appended before fsync, only updating or only appending a file would not cause such 
isolation failure.

p. -- <a href="https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=1&cad=rja&uact=8&ved=0CCAQFjAA&url=http%3A%2F%2Fpages.cs.wisc.edu%2F~suli%2Fmain.pdf&ei=tAIIVIX_CcunyASGoYCIBA&usg=AFQjCNEHL0FY8Fr3iWYcFStH8RXASvL98w&sig2=T-sTISjbGB7Xj3ZyR1c22g&bvm=bv.74649129,d.aWw">A wonderful paper on proposed IO scheduling strategy</a>

Is it possible that this is implicated by high the high update load in the TPC-B benchmark test and the update patterns used by MVCC?  The tests were run with a default table fill factor of 100.  So it seems likely that append operations would not be on the same page.  Tuples have their transaction metadata updated, then the new tuple is appended, and fsync is called during next checkpoint.  As a result, maybe pages that were not dirtied before the current checkpoint are nonetheless flushed due to the so called entanglement phenomenon.  This might explain why EXT4 appears to flush nearly all dirty memory during stressed checkpoints.  Updating unrelated pages may also explain a more random distribution in write service wait times.

This is a shot in the dark hypothesis as I don't understand filesystem implementation details so if you have any insight please share.

h2.  What about EXT4 mounted in writeback mode?

A quick test of <a href="/images/scaling-sets-writeback.png">EXT4 mounted with data=writeback</a> displayed the same performance pattern, with a substantial gain in performance before database size exceeds the available memory threshold.  According to <a href="https://ext4.wiki.kernel.org/index.php/Ext3_Data%3DOrdered_vs_Data%3DWriteback_mode">some online documentation</a> and the Postgresql performance book, this mount option is not entirely safe.

h2.  What about Btrfs for transaction log?

Not sure, but looks questionable.

<center>
<table>
  <tr>
    <td>
      <image src="/images/fsync_test.png" width="400"/>
    </td>
  </tr>
</table>
</center>

h2.  Notes on Compression Rate

p. One goal was to fit a large database on limited storage.  The compression savings rate ranged from 60% to 80%.  Of course this was pgbench data which mostly consisted of integer values of 0.

$\text{Space Savings} = 1 - \frac{\text{Compressed Size}}{\text{Uncompressed Size}}$

At a pgbench scale of 20,000 Postgresql reported a database size of 313GB while only 63GB of disk space was used.  Depending on your space requirements and potential compression ratio this can make a difference.



h2.  Benchmark Tooling Used

This analysis uses three key tools to perform and measure benchmarks:

<table class="list_table" border="1">
  <tr>
    <td style="width: 150px;">
      <a href="http://www.postgresql.org/docs/9.3/static/pgbench.html">pgbench</a>
    </td>
    <td>
      An application that ships with Postgresql for running sql scripts for benchmarking purposes.
    </td>
  </tr>
  <tr>
    <td><a href="https://github.com/gregs1104/pgbench-tools">pgbench-tools</a></td>
    <td>Set of scripts to help organize multiple runs of pgbench with different configuration options and workloads</td>
  </tr>
  <tr>
    <td><a href="https://github.com/no0p/pgsampler">pgsampler</a></td>
    <td>A background worker which collects timestamped database performance statistics</td>
  </tr>
</table>

h2.  Additional Results

Below are some charts from additional configuration benchmarks including two-disk raid0 configurations.  The charts are not particularly helpful, but provided for consideration.

<table>
  <tr>
    <td> <image src="/images/all_unhelpful.png" width="400"/>  </td>
    <td> <image src="/images/sets_big_all.png" width="400"/> </td>
  </tr>
</table>

h2.  Final Remarks

These limited observations teach two an important lessons.  

First from a performance standpoint btrfs is a fine choice of filesystem for Postgresql tables, potentially yielding 2x tps gain in space sensitive applications on magnetic disks compared with EXT4.  

Second, Benchmarking projects quickly turn into yak-shaves.  And in the end it's not entirely obvious what causes all the underlying performance differences.




