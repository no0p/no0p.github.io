---
layout: post
title: Working in the background for fun and profit 
categories: [postgresql]
---

h1. {{ page.title }}

p(meta). Nov 18, 2013 - Portland

The background worker facility is one of those cool open ended features in Postgresql 9.3 with many possibilities.  This post shares some thoughts on potential interesting use cases for the facility with implementation details from developing a <a href="https://github.com/no0p/alps">prototype background worker: ALPS</a>.

h2.  What are good tasks for BG workers?

The background worker feature allows you to register a program with postmaster.  As a result the process runs as a child of postmaster, and the process lifecycles are closely related.  It makes sense then, that many of the default background worker processes are closely related to the operation of the database.  In other words:

h3. bg workers are good for programs you want running whenever your database is running

Consider autovacuum, bgwriter, checkpointer..., most or perhaps all of the built-in background workers also deal with spreading out the load caused by resource intensive tasks.  By removing these tasks from normal backend operations load can spread with more flexibility.  

h3. background workers are good for tasks that spread resources intensive tasks out over time. 

Of course, there are surely other motivations for using background workers.  A background worker would be perfect for channeling half cents from numeric columns into a secret account like in Superman 3.
<center>
<image src="/images/superman_hacking.jpg" width="600"/>
<span class="caption">This never would have worked if done at all at once.</span></center>
</center>

h2.  Prototype BG worker: ALPS

<a href="https://github.com/no0p/alps">ALPS (Automatic Linear Prototyping System)</a> is a background worker which builds prototype shotgun linear models to predict numeric and boolean types based on potential support columns in the same table.  It uses the linear and logistic regressions functions from the MADlib extension.  

In other words, it's a process which starts when postmaster starts, stops when postmaster stops, polls table analyze information (similar to autovacuum), and generates fields which are linear model predictions for every numeric and boolean column in a database.  This seems to fit the background worker model pretty well.

To demo alps we first create a database with some data well suited for the demonstration, a table from <a href="http://no0p.github.io/postgresql/2013/10/16/basedata.html">R's data packages in sql format</a>. 

bc.. wget http://no0p.github.io/images/rdata.sql
createdb demo
psql -d demo < rdata.sql


p. We'll be looking at the mtcars data which is a table of data about cars, like horsepower, number of cylinders, number of axles, gas mileage, and transmission type.

bc.. # \d rdata.mtcars
                             Table "rdata.mtcars"
 Column |  Type   |                         Modifiers                         
--------+---------+-----------------------------------------------------------
 id     | integer | not null default nextval('rdata.mtcars_id_seq'::regclass)
 mpg    | numeric | 
 cyl    | numeric | 
 disp   | numeric | 
 hp     | numeric | 
 drat   | numeric | 
 wt     | numeric | 
 qsec   | numeric | 
 vs     | numeric | 
 am     | boolean | 
 gear   | numeric | 
 carb   | numeric | 
Indexes:
    "mtcars_pkey" PRIMARY KEY, btree (id)


p. Assuming we have installed ALPS, the schema for this table will be modified to include additional columns which are the column names with a suffix of *__predicted*.  A linear model will be trained and values will be populated.  It will be transformed into:

bc.. # \d rdata.mtcars
                                 Table "rdata.mtcars"
     Column      |  Type   |                         Modifiers                         
-----------------+---------+-----------------------------------------------------------
 id              | integer | not null default nextval('rdata.mtcars_id_seq'::regclass)
 mpg             | numeric | 
 cyl             | numeric | 
 disp            | numeric | 
 hp              | numeric | 
 drat            | numeric | 
 wt              | numeric | 
 qsec            | numeric | 
 vs              | numeric | 
 am              | numeric | 
 gear            | numeric | 
 carb            | numeric | 
 am__predicted   | numeric | 
 carb__predicted | numeric | 
 cyl__predicted  | numeric | 
 disp__predicted | numeric | 
 drat__predicted | numeric | 
 gear__predicted | numeric | 
 hp__predicted   | numeric | 
Indexes:
    "mtcars_pkey" PRIMARY KEY, btree (id)

p.  This is of course not particularly useful for this data, as there are no nulls.  However if we had large gaps in the column am (a boolean for automatic transmission) we could now easily get predictions as follows.

bc. select coalesce(am, am__predicted) from rdata.mtcars;   

p.  Let's consider how this might be useful by trying to figure out the transmission type of my primary two combustion vehicles.

<center>
<table>
  <tr>
    <td style="padding: 20px;">
      <image src="/images/bigfoot.jpg" width="300"/>
    </td>
    <td style="padding: 20px;">
      <image src="/images/car2go.jpg" width="300"/>
    </td>
  </tr>
</table>
</center>

Let's start by taking a look at our odds ratios.  Alps stores models in an alps schema with models scoped by schema, table, column.

bc. select odds_ratios from alps.rdata_mtcars_am_logit;

<table style="color: white">
  <tr>
    <td>carb:</td>
    <td>6.511</td>
  </tr>
  <tr>
    <td>cyl:</td>
    <td>2.596</td>
  </tr>
  <tr>
    <td>disp:</td>
    <td>0.794</td>
  </tr>
  <tr>
    <td>disp:</td>
    <td>0.794</td>
  </tr>
  <tr>
    <td>drat:</td>
    <td>433832.055</td>
  </tr>
  <tr>
    <td>gear:</td>
    <td>2</td>
  </tr>
  <tr>
    <td>hp:</td>
    <td>1.214</td>
  </tr>
  <tr>
    <td>mpg:</td>
    <td>0.694</td>
  </tr>
  <tr>
    <td>qsec:</td>
    <td>0.011</td>
  </tr>
  <tr>
    <td>vs:</td>
    <td>1.650</td>
  </tr>
  <tr>
    <td>wt:</td>
    <td>61.308</td>
  </tr>
</table>

Ok so maybe a normalization feature will be important, but this is just a concept prototype -- and so we'll just look up values for the vehicle for mpg, # of cylinders, weight, and hp and zero out the rest. 

bc.. insert into rdata.mtcars (mpg, cyl, hp, wt, carb, disp, drat, gear, qsec, vs) 
values (0.3, 8, 1580, 38000, 0, 0, 0, 0, 0, 0), (50, 3, 61, 1852, 0, 0, 0, 0, 0, 0);
analyze rdata.mtcars; 
-- analyze trigers re-evaluation by alps (could wait for autovacuum)

p.  And now we can get a shotgun estimate of the transmission types of the vehicles.

bc..  select am__predicted from rdata.mtcars where id > 31;
am__predicted 
---------------
 t
 t
(2 rows)

p.  It turns out both vehicles do have an automatic transmission but it's just an illustrative example.


h2.  Implementing a background worker

It turns out that <a href="http://www.postgresql.org/docs/9.3/static/bgworker.html">implementing a background worker</a> is quite straightforward, even for beginners.  

To get started take a look at the *worker_spi* module which ships with contrib.  It offers a complete implementation of a simple background worker.  It demonstrates how to set up and manage context for interacting with the <a href="http://www.postgresql.org/docs/9.3/static/spi.html">Server Prgramming Interface (SPI)</a>.  SPI is a convenient way to execute arbitrary sql from your program. 

In the case of ALPS, the program relies only on the <a href="http://doc.madlib.net/latest/">sql interface to the madlib extension</a>, so training models is a simple as generating the appropriate sql in C.  Some of the key components of the program are illustrated below.

h3.  Registering worker

bc.. //some setup referenced from worker_spi
//some GUC details
worker.bgw_main = alps_main;
RegisterBackgroundWorker(&worker);

p.  Well that's the gist of it.

h3.  Polling

bc.. while (!got_sigterm) {
    int rc;
    rc = WaitLatch(&MyProc->procLatch, WL_LATCH_SET | WL_TIMEOUT 
                  | WL_POSTMASTER_DEATH, alps_poll_seconds * 1000L);
    
    ResetLatch(&MyProc->procLatch);
    process_columns();   
  }

p. a pretty simple polling loop

h3.  Executing sql to train madlib model
 
bc.. void train_logit_model(char *schemaname, char *tablename, 
                         char* colname, char* coltype, char *support) {
  StringInfoData buf;
  
  /* Train Model */
  elog(LOG, "logistic model %s.%s %s", schemaname, tablename, colname);
  initStringInfo(&buf);
  // just a proof of concept wouldn't recommend running this in production!
  appendStringInfo(&buf,
     "DROP TABLE IF EXISTS alps.\"%s_%s_%s_logit\";" 
     " DO $$ BEGIN"
     " PERFORM madlib.logregr_train("
     " '%s.%s', 'alps.\"%s_%s_%s_logit\"', '\"%s\"', 'ARRAY[1,%s]'"
     " , NULL, 20, 'irls');"
     " EXCEPTION when others then END $$;", 
     schemaname, 
     tablename,
     colname,
     schemaname, 
     tablename, 
     schemaname,
     tablename, 
     colname,
     colname, 
     support);
  elog(LOG, "%s", buf.data);
  
  SPI_execute(buf.data, false, 0);
}

p.  The <a href="https://github.com/no0p/alps">source code for ALPS is available online</a> for review and use.

h3.  Comments

There are quite a few ways this application could be improved.  Adding more models, looking for supports in joined relations via keys, updating predictive join tables rather than adding columns, better heuristics for spreading load, and online algorithms are a few that come to mind.  

I'm excited to see what other kinds of background workers may be invented.  Thoughts and discussion welcome on #postgresql on freenode.
