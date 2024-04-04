---
layout: post
title: Artisanal Stop Words
categories: [postgresql]
---

# {{ page.title }}

### Feb 15, 2015 - Portland

The default English stop word list is pretty good, but you may want to get a little more aggressive.  Consider the following index built using the default english stop word list.

```
\di+ core_search_idx
                                  List of relations
 Schema |      Name       | Type  | Owner  |        Table         | Size  | Description
--------+-----------------+-------+--------+----------------------+-------+-------------
 public | core_search_idx | index | robert | composited_documents | 61 GB |
(1 row)
```

That's a lot of words -- in fact a sample of 10% of the documents has 4,665,436 unique tokens and that's after excluding most token types.  It seems quite likely that this corpus has some issues, and some of these tokens are not providing much information.  This post describes how to create a hand crafted stop word list with the <b>ts_stat</b> function by calculating a normalized inverse document frequency for each term.

#### Normalized Inverse Document Frequency

When selecting terms to remove from a search index, we intuitively want to identify terms which contain the least amount of information for distinguishing documents.  The frequency at which a term appears in documents <a href="http://terrierteam.dcs.gla.ac.uk/publications/rtlo_DIRpaper.pdf">is a simple and effective metric</a> for the amount of distinguishing information the presence of a term contains.

$$
idf_{k} = log(\frac{(D_{n} - D_{k}) + 0.5}{D_{k} + 0.5})
$$

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

#### ts_stat(query text)

The <a href="http://www.postgresql.org/docs/8.3/static/textsearch-features.html#AEN18666">ts_stat</a> function produces tuples containing the token as field 'word' (<b>k</b>), the number of times a token is used in field 'nentry', and the number of documents where the token is present 'ndoc' (D<sub>k</sub>).

To illustrate, consider the result from a simple table containing a content tsvector column:

```
=# select * from ts_stat('select content from composited_documents')
      order by ndoc desc, nentry desc
        limit 3;

 word  | ndoc  | nentry
-------+-------+---------
 may   | 46065 | 2384528
 first | 43844 | 2093459
 one   | 47257 | 1996176
(3 rows)
```

ts_stat is quite convenient, as it provides most of the information needed.

#### Crafting a stop word list

A list of candidate stop words will be a result set ordered by a term's idf.  This will allow for farkling with a threshold value to exclude terms.

First create a result set with components matching the variables in the idf definition.

```
=# select word as k, ndoc as D_k, (select count(*) from composited_documents) as D_n
     from ts_stat('select content from composited_documents')
       order by nentry desc limit 3;

   k   |  d_k  |  d_n
-------+-------+-------
 may   | 77976 | 87500
 first | 74258 | 87500
 one   | 80008 | 87500
(3 rows)
```

Next use a subquery to get term-idf pairs.  Note the switch in the order by clause.

```
=# select k, log(((d_n - d_k) + 0.5) / (d_k + 0.5)) as idf
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
```

Ok looks pretty good.  These are the most common words, sorting by the idf where it is greater than 2 we see some more meaty words.

```
     k      |        idf
------------+--------------------
 till       | 2.0004288139736811
 octob      | 2.0009359014391109
 inaccess   | 2.0014435699516726
 shifter    | 2.0014435699516726
 scalar     | 2.0019518208580772
 veterinari | 2.0034800814778920
```

Consider where idf > 4

```
        k        |        idf
----------------+--------------------
 zuniga         | 4.0125519004712559
 zool           | 4.0125519004712559
 zwicker        | 4.0125519004712559
```

<img src="/images/artisinal_knots.jpg" style="float: right; margin-left: 30px;" width="400"/> Those are looking pretty informative.  So we can select an artisanal threshold for now, and generate a stop word list.

<div style="clear: both;"/>
<br/>

```
copy ( select k as word
    from (select word as k,
                 ndoc as d_k,
                 (select count(*) from composited_documents) as d_n
            from ts_stat('select content from composited_documents')
         ) as word_metrics
    where log(((d_n - d_k) + 0.5) / (d_k + 0.5)) < 2) to '/tmp/additional_stopwords';
```

To use this list, create a file in the text search configuration directory.  This will vary by system but should be the shared location where the english.stop file exists.

```
cat /usr/share/postgresql/9.4/tsearch_data/english.stop \
        /tmp/additional_stopwords > \
        /usr/share/postgresql/9.4/tsearch_data/artisanal.stop
```

This stopword list can be used <a href="http://www.postgresql.org/docs/9.1/static/textsearch-dictionaries.html#TEXTSEARCH-SIMPLE-DICTIONARY">creating dictionaries</a>.
