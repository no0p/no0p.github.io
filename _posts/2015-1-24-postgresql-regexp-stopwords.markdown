---
layout: post
title: Regular Expression Stop Words for Postgresql
categories: [postgresql]
---

h1. {{ page.title }}

p(meta). Jan 24, 2015 - Portland

While working on a NLP project with OCR-derived text, I discovered a need that wasn't immediately met by the built in parsers and dictionaries which ship with Postgresql.  Fortunately text search in Postgresql is fairly extensible.  

This post looks at the process of implementing a custom dictionary which can be used to create _stop words_ which are really _stop regular expressions_.

h2. Background on Parsing, Dictionaries, and Stop Words

The first step in using most text search features is converting unstructured text into text search vectors.  A text search vector is a set of (lexeme, position) pairs.

bc.. =# select to_tsvector('Time is an illusion.  Lunchtime doubly so.');
                to_tsvector
--------------------------------------------
 'doubli':6 'illus':4 'lunchtim':5 'time':1
(1 row)

p.  As you might expect, the internal representation of a ts_vector is simply information about where words are located inside a big string.

bc.. typedef struct
{
  int32   vl_len_;    /* varlena header (do not touch directly!) */
  int32   size; 
  WordEntry entries[1];   /* variable length */
  /* lexemes follow the entries[] array */
} TSVectorData;

p. The transformation from text to ts_vector involves parsing text into tokens, then filtering the tokens through a *dictionary* which may change or eliminate words.

<center>
<image src="/images/to_tsvector.png"  />
</center>

A <a href="http://www.postgresql.org/docs/9.4/static/textsearch-configuration.html">text search configuration</a> can be used to map token categories to dictionaries.  The <a href="http://www.postgresql.org/docs/9.4/static/textsearch.html">official documentation</a> contains additional details.

h2.  The Problem Statement

The text corpus is derived from an OCR process which results in some unhelpful tokens.  

bc.. a-433
-43 44 40
Lunchtime is 46 #@$dfsdf an illusion.Q!~ Lunchtime ksdfkjsadjfksdjf so.
431,-

p.  So how to get pleasant ts_vectors?

One solution would be adding a token type *ocr gibberish* to the parser and removing mappings from ocr_gibberish to any dictionary.  While you can write your own parser, the default is pretty good, and it does not appear to be easily extended.

Another approach would be to use a dictionary as a white list.  Unfortunately this corpus has creative authors who use words -- and regularly invent words -- not available in a dictionary.

Due to these limitations, the chosen solution was to create <a href="https://github.com/no0p/dict_exclude">a dictionary which removes tokens based on regular expressions</a>.


h2.  Writing a Custom Dictionary

This turned out to be fairly painless thanks to examples in pg_contrib.

Implementing a dictionary required implementing just two functions.  <a href="https://github.com/no0p/dict_exclude/blob/master/dict_exclude.c#L35">dict_exclude_init</a> to compile regular expressions from a rule file and <a href="https://github.com/no0p/dict_exclude/blob/master/dict_exclude.c#L70">dict_exclude_lexize</a> to apply the regular expressions in the lexize process.

Once these functions are implemented and installed, the dictionary can be added.

bc.. =# CREATE TEXT SEARCH TEMPLATE dict_exclude_template (
        LEXIZE = dict_exclude_lexize,
        INIT   = dict_exclude_init
);

 =# CREATE TEXT SEARCH DICTIONARY dict_exclude (
  TEMPLATE = dict_exclude_template
);

p. A text search configuration can pass tokens to dict_exclude first, which will prevent other dictionaries from resolving lexemes.

bc.. create text search configuration ocr_gibberish ( COPY = pg_catalog.english );
alter text search configuration ocr_gibberish 
  alter mapping for asciihword, asciiword
    with dict_exclude, english_stem;


p.  by adding a regular expression like @([^aeiouAEIOU]{5})@ to an exclude.rules file, some gibberish can be removed.

bc.. =# select to_tsvector('ocr_gibberish', 
                    'Time is an illusion. sdfsdfsdf  Lunchtime doubly so.');

                to_tsvector                 
--------------------------------------------
 'doubli':7 'illus':4 'lunchtim':6 'time':1


p. Additional details on using dict_exclude are available in the <a href="https://github.com/no0p/dict_exclude">project's readme.</a>

If you have solved this problem another way, please let me know.  A solution that did not require an external library would be preferable.




