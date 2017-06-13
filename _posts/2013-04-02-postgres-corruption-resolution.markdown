---
layout: post
title: Postgresql Corrupted Tuples 
categories: [postgresql]
---

h1. {{ page.title }}

p(meta). April 2, 2013 - Portland

Here is the story of some corrupted postgresql tuples and resolution.  It started with this error message when taking a dump of a web crawl database.

bc. pg_dump: SQL command failed
pg_dump: Error message from server: ERROR:  compressed data is corrupt
pg_dump: The command was: COPY public.docs (id, created_at, content, link_id, 
                                           job, is_job_label, hashtext) TO stdout;

&nbsp;

h3. Finding the offending tuples

We first create a function which will return true when an exception is raised.  We use this function in a select to return the current tuple id.

bc. create function chk(anyelement)
  returns bool 
  language plpgsql as $f$ 
    declare t text; 
    begin t := $1; 
      return false; 
      exception when others then return true; 
    end; 
  $f$;

&nbsp;

bc. select ctid from docs where chk(docs);
ctid     
-------------
 (30826,6)
 (221522,4)
 (222803,6)
 (225274,20)
 (225474,2)
 (225939,7)
 (233993,3)
 (237225,15)
(8 rows)

The results here are the page and block where the tuple is located.  Using tools like the <a href="http://www.postgresql.org/docs/9.0/static/pageinspect.html">pageinspect extension</a> the contents can be queried.  



h3.  Resolution Option A.  

Since this is a compression error we look at the table's storage formats for the various fields.

bc. 
\d+ docs
                    Table "public.docs"
    Column    |            Type             | Storage  | 
--------------+-----------------------------+----------+
 id           | bigint                      | plain    | 
 created_at   | timestamp without time zone | plain    | 
 content      | text                        | extended |

We note that the content field is extended, which is decompressed on retrieval causing the error.  One option to remove the offending records is to lose the offending field, but preserve the other data.

bc. 
update docs set content = '' where id in (select id from docs where chk(docs));

This is rumored to be somewhat risky.  On the one hand you save the uncorrupted fields, but the corruption may be more extensive.  At the least it would be wise to rebuild your indexes if using this approach.

h3.  Resolution Option B.

Copy the table to a file excluding the broken tuples.

bc. copy (select * from docs where not chk(docs)) to '/tmp/docs.out';
truncate docs
copy docs from '/tmp/docs.out'

&nbsp;



