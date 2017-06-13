---
layout: post
title: Monitoring Postgresql with a Background Worker
categories: [postgresql]
---

h1. {{ page.title }}

p(meta). Oct 21, 2014 - Portland

<a href="http://no0p.github.io/pgantenna/">pgantenna</a> and <a href="http://no0p.github.io/pgsampler/">pgsampler</a> comprise an experimental Postgreqsql monitoring framework.  This post explores how they work, and what problems they aim to solve.

h2. Framework Overview

<a href="http://no0p.github.io/pgsampler/">pgsampler</a> is a background worker which collects data in a Postgresql cluster.  It can log this data to CSV files or ship the metrics to a pgantenna instance over a tcp connection.

<a href="http://no0p.github.io/pgantenna/">pgantenna</a> is an application shipped as a Docker image which receives pgsampler data.  It provides a web interface for live monitoring, checks for alerting conditions, and allows for psql access to a historical database of cluster metrics.

<center>
  <img src="/images/antenna.png"/>
</center>


h2. Motivation

There are a number of high quality monitoring and performance analysis tools for Postgresql.  Many of these involve a remote service which connects to Postgresql as a regular client, or an application that parses log files. 

The presented framework uses a background worker to ship statistics to a remote service.  It aims to solve a grab bag of real or imagined problems discussed below.  Of course, this approach presents its own problems and is thus best characterized as an experiment.

h3. Live Monitoring

Data is sent from the cluster in a polling loop at second intervals.  Different metrics can be tuned to desired sampling rates.

h3. Using Postgres to Monitor Postgres

Dashboard <a href="https://github.com/no0p/pgantenna/wiki/Plots">plots</a> and <a href="https://github.com/no0p/pgantenna/wiki/Alerts">alert conditions</a> are all written directly in SQL.  For example, alert conditions are triggered whenever a cron-executed query returns a NULL in the first field in the first record.  Plots are rendered with <a href="no0p.github.io/plotpg">plotpg</a>.

h3. Historical Analysis with SQL

pgantenna provides a containerized remote cluster which stores historical data separate from transactional systems.  The <a href="https://github.com/no0p/pgantenna/wiki/Pgantenna-Database-Reference">history</a> is just a Postgresql database that can be queried with familiar tools.

h3.  Easy to Configure

The background worker uses direct access to identify and connect to databases automatically.  <a href="https://github.com/no0p/pgsampler#safety-considerations">Security concerns</a> notwithstanding, this allows for very little configuration minutae to get started with comprehensive monitoring.

h3.  Close to metal

A background worker lives and dies with postmaster.  One of the foundational alerting conditions is the receipt of a heartbeat from the background worker.

h3.  Extensible

Because the metrics collector is a background worker, it may prove to be able to collect data that other monitoring approaches could not reach.  For example, while developing I considered several approaches to collect a notion of statements/second.  I was thwarted by a reluctance to implement executor hooks or divine this information from shared memory data structures due to limited experience with Postgres internals.  But is it possible, or a good idea?  Maybe.


h2.  Trying it Out

This is an experimental prototype so it's not appropriate for critical clusters. 

To get started first launch a pgantenna instance which can be as simple as a single command on a system with Docker installed.

bc. docker run -p 24831:24831 -p 80:80 no0p/pgantenna


Next <a href="https://github.com/no0p/pgsampler#installation">install pgsampler</a> and update postgresql.conf with an entry pointing pgsampler to the pgantenna instace.

bc. pgsampler.output_network_host='localhost'



