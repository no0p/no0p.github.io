---
layout: post
title: Mysql to Postgresql
categories: [postgresql]
---

# {{ page.title }}

### May 25, 2013 - Portland

Like a complete application rewrite, switching relational database systems for a production application is rarely a good idea.  Sometimes you need to do it anyways.

So, how do you migrate your data?  Here is a <a href="http://en.wikibooks.org/wiki/Converting_MySQL_to_PostgreSQL">complicated document</a> about it and here is another more official looking <a href="http://wiki.postgresql.org/wiki/How_to_make_a_proper_migration_from_MySQL_to_PostgreSQL">complicated document</a>.

#### Some techniques from those pages that *never worked for me*:

- mysql_dump + sed
- mysql_dump --compatible=postgresql
- via csv copy into / from (never tried but sounds like a lot of work)

#### A solution that has *worked well*: Foreign Data Wrapper

The <a href="https://github.com/bdigital/mysql_fdw">mysql foreign data wrapper</a> enables accessing mysql tables directly from postgresql as if they were postgres tables.  Please see the documentation for how to set up the foreign data wrapper.

Now you populate postgres tables with an analogous schema with:

```
insert into pg_table_whatever (select * from foreign_table_whatever);
```

The queries execute quite reasonably, enabling a quick switch to a new application layer accessing your new database.  In a later blog post I'll address some of the architecture considerations for doing a staged migration.

Unfortunately when it comes to stored procedures and triggers, be prepared to rewrite them in plpgsql.

Also it's worth noting that you can create foreign tables based on queries against the remote mysql server -- conceptually like a "foreign view" rather than "foreign table."  This may come in handy if your postgres schema is substantially different from the mysql schema and you want to leverage the mysql server's query optimizer.  Again, see the mysql foreign data wrapper's documentation.

#### A note for Mysql -> PG ETL systems

One persistent problem when maintaining etl systems can be propagating schema changes.  To automatically generate foreign table definitions you can use the tool <a href="https://github.com/bdigital/mysql_fdw_discover">Foreign Table Discovery Tool</a>.

It queries the mysql information schema through a foreign table.  This will provide a scriptable way to have access to a mysql schema, as is, directly from postgresql.




