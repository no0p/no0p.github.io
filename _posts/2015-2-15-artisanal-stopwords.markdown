---
layout: post
title: Artisanal Stop Words  
categories: [postgresql]
---

h1. {{ page.title }}

p(meta). Feb 15, 2015 - Portland

The default English stop word list is pretty good, but you may want to get a little more aggressive.  Consider the following index built using the default english stop word list.

bc.. \di+ core_search_idx 
                                  List of relations
 Schema |      Name       | Type  | Owner  |        Table         | Size  | Description 
--------+-----------------+-------+--------+----------------------+-------+-------------
 public | core_search_idx | index | robert | composited_documents | 61 GB | 
(1 row)


p.  That's a lot of words -- in fact a sample of 10% of the documents has 4,665,436 unique tokens and that's after excluding most token types.  It seems quite likely that this corpus has some issues, and some of these tokens are not providing much information.  This post describes how to create a hand crafted stop word list with the <b>ts_stat</b> function by calculating a normalized inverse document frequency for each term.

h3.  Normalized Inverse Document Frequency

When selecting terms to remove from a search index, we intuitively want to identify terms which contain the least amount of information for distinguishing documents.  The frequency at which a term appears in documents <a href="http://terrierteam.dcs.gla.ac.uk/publications/rtlo_DIRpaper.pdf">is a simple and effective metric</a> for the amount of distinguishing information the presence of a term contains.

$idf_{k} = log(\frac{(D_{n} - D_{k}) + 0.5}{D_{k} + 0.5})$

<table class="list_table" border="1">
  <tr>
    <td>k</td><td>A token</td>
  </tr>
  <tr>
    <td>D<sub>n</sub></td><td>the total number of documents</td>
  </tr>
  <tr>
    <td>D<sub>k</sub></td>
    <td>the number of documents where the term <b>k</b> is present.</td>
  </tr>
</table>

<br/>

h3.  ts_stat(query text)

The <a href="http://www.postgresql.org/docs/8.3/static/textsearch-features.html#AEN18666">ts_stat</a> function produces tuples containing the token as field 'word' (<b>k</b>), the number of times a token is used in field 'nentry', and the number of documents where the token is present 'ndoc' (D<sub>k</sub>).

To illustrate, consider the result from a simple table containing a content tsvector column:

bc.. =# select * from ts_stat('select content from composited_documents')
      order by ndoc desc, nentry desc
        limit 3;
        
 word  | ndoc  | nentry  
-------+-------+---------
 may   | 46065 | 2384528
 first | 43844 | 2093459
 one   | 47257 | 1996176
(3 rows)

p.  ts_stat is quite convenient, as it provides most of the information needed.

h2.  Crafting a stop word list

A list of candidate stop words will be a result set ordered by a term's idf.  This will allow for farkling with a threshold value to exclude terms.  

First create a result set with components matching the variables in the idf definition.

bc.. =# select word as k, ndoc as D_k, (select count(*) from composited_documents) as D_n
     from ts_stat('select content from composited_documents')
       order by nentry desc limit 3;
       
   k   |  d_k  |  d_n  
-------+-------+-------
 may   | 77976 | 87500
 first | 74258 | 87500
 one   | 80008 | 87500
(3 rows)

p.  Next use a subquery to get term-idf pairs.  Note the switch in the order by clause.

bc.. # select k, log(((d_n - d_k) + 0.5) / (d_k + 0.5)) as idf
    from (select word as k, 
                 ndoc as d_k, 
                 (select count(*) from composited_documents) as d_n
            from ts_stat('select content from composited_documents')
              order by nentry asc limit 3
         ) as word_metrics;
       
   k   |           idf           
-------+-------------------------
 may   | -0.91312155170483241232
 first | -0.74877619074948192116
 one   | -1.02850937671174830200
(3 rows)

p.  Ok looks pretty good.  These are the most common words, sorting by the idf where it is greater than 2 we see some more meaty words.

bc..     k      |        idf         
------------+--------------------
 till       | 2.0004288139736811
 octob      | 2.0009359014391109
 inaccess   | 2.0014435699516726
 shifter    | 2.0014435699516726
 scalar     | 2.0019518208580772
 veterinari | 2.0034800814778920

p.  Consider where idf > 4

bc..        k        |        idf         
----------------+--------------------
 zuniga         | 4.0125519004712559
 zool           | 4.0125519004712559
 zwicker        | 4.0125519004712559

p.  <img src="/images/artisinal_knots.jpg" style="float: right; margin-left: 30px;" width="400"/> Those are looking pretty informative.  So we can select an artisanal threshold for now, and generate a stop word list.

<div style="clear: both;"/>
<br/>

bc.. copy ( select k as word
    from (select word as k, 
                 ndoc as d_k, 
                 (select count(*) from composited_documents) as d_n
            from ts_stat('select content from composited_documents')
         ) as word_metrics
    where log(((d_n - d_k) + 0.5) / (d_k + 0.5)) < 2) to '/tmp/additional_stopwords';

p.  To use this list, create a file in the text search configuration directory.  This will vary by system but should be the shared location where the english.stop file exists.

bc. cat /usr/share/postgresql/9.4/tsearch_data/english.stop \
        /tmp/additional_stopwords > \
        /usr/share/postgresql/9.4/tsearch_data/artisanal.stop

p.  This stopword list can be used <a href="http://www.postgresql.org/docs/9.1/static/textsearch-dictionaries.html#TEXTSEARCH-SIMPLE-DICTIONARY">creating dictionaries</a>.

h3.  A Note on Optimal Thresholds

In this case, the goal is to reduce the 61GB GIN index to something more in line with home Desktop's 32GB of memory.  However in many cases the goal would be to optimize the accuracy of query results.  The former requires applying stop word lists and measuring index size, while the later requires a method for evaluating a test set of queries.

h2.  Sampling: OOM Killer Takes No Hostages

<img src="/images/psycho1.png" style="float: right; margin-left: 30px;" width="500"/>

The above queries simply die because the token set is simply too large.  A naive approach is to use a point estimator for each term's idf by taking a single simple random sample of documents.

<div style="clear: both;"/>
<br/>


bc.. =# select k, log(((d_n - d_k) + 0.5) / (d_k + 0.5)) as idf
    from (select word as k, 
                 ndoc as d_k, 
                 (select count(*) from composited_documents) as d_n
            from ts_stat('select content from composited_documents where random() < 0.2')
         ) as word_metrics;

p.  More efficient ways to take a random sample exist, but are beyond the scope of this post.  Additionally, a more complete approach would include creating sampling distributions for each term's idf, and excluding terms with non-significant estimators.  This is left as an academic exercise -- because 128 GB of DDR4 is in the mail.


