---
layout: post
title: Geometric Exclusion Constraints 
categories: [postgresql]
---

h1. {{ page.title }}

p(meta). May 31, 2013 - Portland

At the moment I'm not entirely sure these are a good idea, but it's an interesting concept.  A need arises from a need to put a unique constraint on a time frame scoped to a foreign key.

Consider modeling a system consisting of a parallelized work queue.  A consumer thread can only process one job at a time, though there are potentially many consumers.

bc. create table job 
  (consumer_id integer, started_at timestamptz, finished_at timestamptz)  

Since you are storing a historical record, and care about the integrity of your data, you want to ensure that any record of a job does not have a time overlap for a given consumer id.  Enter a geometric exclusion constraint.

The model is pretty simple, it's a plane where you have epoch time as an integer dimension (x) and discrete ids as a qualitative dimension (y).  All work assignment time periods are thus horizontal lines and violate the constraint if there is overlap.

Below is my ms-paint masterpiece.

<center>
<img src="/images/exclusion.png"/>
</center>

bc. CREATE OR REPLACE FUNCTION 
  job_box(worker_id int, started_at timestamptz, finished_at timestamptz)
    RETURNS BOX AS $$
      SELECT  BOX(POINT($1, extract(epoch from $2)), 
                  POINT($1, extract(epoch from coalesce($3, now()))))
  $$ LANGUAGE 'sql' IMMUTABLE;
  ALTER TABLE jobs ADD CONSTRAINT one_active_assignment_only 
    EXCLUDE USING GIST (job_box(consumer_id, started_at, finished_at) WITH &&);

Hey no problem!  Check out this cool demo on a plane for inspiration.

<center>
<iframe width="560" height="315" src="http://www.youtube.com/embed/ak2yrfvwMks" frameborder="0" allowfullscreen></iframe>
</center>
