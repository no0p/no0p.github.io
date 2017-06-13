---
layout: post
title: Burr CPU Benchmark of Rackspace v. AWS
---

h1. {{ page.title }}

p(meta). Jan 24 2012 - Oakland

Lies, damned lies, and benchmarks.</p>

A client recently asked me for some advice on available cloud providers.  Given the specific use case, the primary concern is the cpu power to price ratio.

Here I'm comparing the Rackspace 1GB cloud server to an Amazon EC2 medium instance. &nbsp;This pits 6.5% of a quad core on Rackspace against 5 EC2 Compute units over 2 cores.

To do the cpu comparison I'll be solving burr puzzles. &nbsp;Burr puzzles are wooden pieces that fit together in a permutation.

<img src='/images/36350647-burr_puzzle.jpg'>
<img src='/images/36350656-burr_parts.jpg'>

I've written an octave script which will create a matrix representation of a 3 dimensional cuboid space and try all permutations until a solution is found. &nbsp;The operations are all matrix addition and equivalency checks. &nbsp;It is a deterministic brute force script. The script is available at&nbsp;<a href="https://github.com/bdigital/burr">https://github.com/bdigital/burr</a> and the naive benchmark can run with:&nbsp;time octave solve.


While the problem is embarassingly parallel, I'll be using a single core for this naive benchmark and we'll extrapolate to compare the two server offerings. &nbsp;This may be one of many dangerous asssumptions.
<table style="">

<tr>
<td>
<p>Rackspace 1GB Server option:</p>
<p>&nbsp;</p>
<p>real<span style=""> </span>1m9.948s</p>
<p>user<span style=""> </span>1m9.870s</p>
<p>sys<span style=""> </span>0m0.060s</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
</td>
<td style="">&nbsp;&nbsp;&nbsp;&nbsp;</td>
<td>
<p>Amazon Medium Instance:</p>
<p>&nbsp;</p>
<p>real<span style=""> </span>1m38.984s</p>
<p>user<span style=""> </span>1m38.710s</p>
<p>sys<span style=""> </span>0m0.030s</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
</td>
</tr>

</table>

I ran these several times to determine on the back of my napkin whether these results were representative of the actual mean computation time, and there is vary low variance in the results.

Since the Rackspace has 4 cores at this computational power and the EC2 instance has 2 cores, I have to conclude that rackspace's 1GB is a great deal. &nbsp;Note this rackspace instance is 6 cents an hour, while the EC2 reserved equivalent is 10 cents an hour.
