---
layout: post
title: Upgrading Postgresql on Ubuntu
categories: [postgresql]
---

h1. {{ page.title }}

p(meta). March 29, 2014 - Portland

Every new release of Postgresql is packed with exciting new features. Of course production systems need to be updated to use them.  This post covers the process of upgrading from Postgresql 9.1 to 9.3 on an ubuntu 12.04 system.  And good news: it's embarassingly easy.  So start enjoying the latest features today.

h2. Understanding the basics

Most of the work is done by the *pg_upgrade* utility which ships with Postgresql contrib.  The program's principle act of conversion is populating a revised system catalog in the target database.  This is how databases, schemas, functions, roles and pretty much every other piece of information is copied and converted if necessary.  

Then pg_upgrade copies the data files to the target data directory.  It turns out the page format rarely changes so the file copying is straightforward.  This process is done with high fidelity, even preserving the target filesystems for tablespaces. 

Reflecting on these details about how pg_upgrade works by copying the old database, it apparently does not need to write to the old database which makes it feel pretty safe.  In fact when testing, sending an interrupt to pg_upgrade and aborting while copying page files did not cause a problem.

For more core concepts take a look at <a href="http://www.postgresql.org/docs/9.3/static/pgupgrade.html">the official doucmentation for pg_upgrade</a> tool. 

h2. Installing 9.3 alongside 9.1

First we install 9.3 from the <a href="https://wiki.postgresql.org/wiki/Apt">postgres apt repos</a>.

bc.. echo "deb http://apt.postgresql.org/pub/repos/apt/ precise-pgdg main" >
          /etc/apt/sources.list.d/pgdg.list
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc 
          | sudo apt-key add -
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install postgresql-9.3 postgresql-contrib-9.3

p. We note that the debian packages will start the 9.3 server and configure it to run on a port other than the port 9.1 is running on, likely 5433.

At this point, install any shared libraries which your 9.1 database has installed and are required for @CREATE EXTENSION@ commands to complete successfully.  For example, if your 9.1 system uses postGIS, install postGIS packages for the 9.3 system.  Identifying all extensions can be a laborious process since the pg_extension catalog table is scoped to the current database connection.  Nonetheless it is absolutely necessary since the upgrade will fail without properly installed libraries.

h2. Ensuring permissions

To execute pg_upgrade the *postgres* user will need to be able to connect to both databases.  The databases will not be running on their normal ports for the upgrade, so it is somewhat safer to make less secure updates to pg_hba.conf.  An entry like the following rule is pretty reasonable:

bc. local   all             postgres                                peer

p.  Depending on your tolerance for farkling with pg_hba.conf you could also change all entries to trust.

h2.  Shutdown

Neither database should be online during the upgrade process, as that could lead to an inconsistent copy. 

bc.. sudo service postgresql stop 9.3
sudo service postgresql stop 9.1

p. Great service is down.

h2.  Executing the upgrade, quickly

When executed pg_upgrade starts both servers on an alternative port, runs some sanity checks, and performs the necessary conversion and copy routines.  It's simple to run:

bc.. sudo su postgres
/usr/lib/postgresql/9.3/bin/pg_upgrade -b /usr/lib/postgresql/9.1/bin/ 
          -B /usr/lib/postgresql/9.3/bin/ 
          -d /var/lib/postgresql/9.1/main 
          -D /var/lib/postgresql/9.3/main 
          -o ' -c config_file=/etc/postgresql/9.1/main/postgresql.conf'
          -O ' -c config_file=/etc/postgresql/9.3/main/postgresql.conf'

p.  Note that the command references the full path of the pg_upgrade binary.  It's important to use the binary for the target version.

If this command prints an error message see the section below titled Don't Panic.

h2.  Starting the new server

Now update the configuration in @/etc/postgresql/9.3/main/postgresql.conf@.  Don't copy the old file as it will contain old data and config directory directives.  This is a great opportunity to review your GUCs.  

Key updates are the @listen_address@ and @port@ directives.  Then start the server carefully remembering the version suffix.

bc.  sudo service postgresql start 9.3

p.  You should now be able to restart all services which rely on the database and verify everything is working as expected.

h2.  Cleaning up

Once satisified simply remove the 9.1 installation.  

bc.  sudo apt-get remove postgresql-9.1

p.  You may choose to purge the package as well eventually.

h2.  Don't panic

Depending on your configuration, there is a chance that the pg_upgrade command will fail (safely).  If this happens you have the option to just restart the old server and take a break.  

bc. sudo service postgresql start 9.1

p. And take a moment to re-evaluate.  

If you forgot about a 1TB tablespace on a rotating drive, it is okay to send an interrupt to pg_upgrade as long as you wipe the target database to a fresh install state.

h2.  Final Remarks

This post covers a very basic upgrade process which allows for a downtime maintenance window.  Its focus is on ease of safely completing the upgrade rather than minimizing downtime.  There are pg_upgrade options you should be aware of such as direct linking the data files, which can save the time required to copy a potentially large database.  Of course this is slightly more dangerous as it limits opportunities for backing out.

Good luck!
