---
layout: post
title: Inspecting Postgresql at Runtime
categories: [postgresql]
---

# {{ page.title }}

### September 13, 2013 - Portland

This post will cover some basics of using GDB to debug C applications on linux.  For this post we'll be taking a deep dive into postgresql.  Hopefully these notes will be helpful to my future self and beginners.  All considerations are for an ubuntu system.

####  A GDB Philosophy

Consider your favorite REPL facility from lisp, ruby, python or other interpreted environment.  One goal is to explore using gdb to achieve the same immersive experience while working with C system applications.  This philosophy is well explained in `21st Century C: C Tips from the New School`

####  Debug symbols

Having debug symbols available allows GDB to resolve names of variables, functions and types.

You can typicall install debug symbols via aptitude.  For our case of exploring postgresql install the following package.  `sudo apt-get install postgresql-9.1-dbg`

Next we consider building from source so that we can ensure postgresql is compiled without optimizations.  This is to reduce potential confusion when stepping through the execution of the program.

```
sudo apt-get install bison flex
./configure --enable-debug --enable-depend --enable-cassert CFLAGS="-O0"
make
```

&nbsp;

####  GDB Minutiae

Get to know the tool.  A great tutorial on GDB basics ostensibly from RMS himself is <a href="http://www.unknownroad.com/rtfm/gdbtut/">available on the internet</a>.

Consider adding a history file to preserve commands between gdb sessions.

```
vi ~/.gdbinit
set history filename ~/.gdb_history
set history save
```

<p></p>

####  Attaching to Postgres

For this example we'll create a simple test database, connect with psql, attach gdb, set breakpoints, execute a query, and inspect some data structures in postgresql.

```
createdb benched
pgbench -i benched
```

Now start a psql session and execute `select pg_backend_pid();` like the following:

<img src="/images/pgbackend.png" width="700"/>

In another terminal start gdb and attach to the process.

<img src="/images/pg_debug_session2.png" width="700"/>

Note that in the psql session I executed a simple query such as `select * from pgbench_accounts;`

#### Inspecting Interesting Things

To navigate around you'll want to check out the program documentation.  Fortunately a postgresql Doxygen site is available at <a href="http://doxygen.postgresql.org">http://doxygen.postgresql.org</a>.

`print nodeToString(queryDesc->planstate->plan)`

Well that's all you need to get started with some basic research into postgresql internals.  Enjoy!

