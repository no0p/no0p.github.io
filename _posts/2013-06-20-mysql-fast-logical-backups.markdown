---
layout: post
title: Fast(er) Logical Backups for MySql
---

h1. {{ page.title }}

p(meta). June 20, 2013 - Portland

Once a MySql database grows larger than 1GB, the tendency is for database dumps via mysqldump to take longer than several hours.  It's not unusual for these restores to take days.

There are a few options for dealing with this issue depending on your system needs.  Often the solutions are grouped as *logical backps* and *physical backups*.  This post addresses only fast logical backups.

h3. Logical Backups

Creates a schema, inserts records, and builds indexes.  As you might imagine these can be slow, and result in hours.  Not the best option for high availability.  

On the plus side they are great for moving data between versions and configurations of MySql.  Thus this can be ideal for maintaining individual developer's environments across builds and configuration settings.


h2.  Preferred Solution: Mydumper

Mydumper is a relatively straightforward application which parallelizes the embarassingly parallel aspects of database dumps and restores.  You can expect a roughly linear performance improvement per number of CPU cores.

h3. Installation for ubuntu.

*Pro tip #1:* Do not use the mydumper in aptitude, it just segfaults.

bc. sudo apt-get install libglib2.0-dev build-essential cmake
wget https://launchpad.net/mydumper/0.5/0.5.2/+download/mydumper-0.5.2.tar.gz
tar -xf mydumper-0.5.2.tar.gz
cd mydumper-0.5.2
cmake .
make

&nbsp;

h3. Dump Instructions.

bc. mydumper --database mydb --user username --password PASSWORD \
  --outputdir /backup/mydump --compress --compress-protocol --threads=2 -m
tar -cjf mybackup.tar.bz2 /backup/mydump

&nbsp;

h3. Restoration instructions.

bc. scp mybackup.tar.bz2 ./
tar -xjf mybackup.tar.bz2
myloader --database mydb -o --threads 4 --compress-protocol -u usern \
  -p PASSWORD -d backup/mydump

*Pro Tip #2:* Use 2X number of CPUS for thread count.

This works, and can easily turn a 4 hour backup into a 45 minute backup.  Enjoy the extra time. 

<center>
  <img src="/images/alteredb.jpg"/>
</center>
