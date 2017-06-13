---
layout: post
title: Installing madlib on ubuntu
categories: [postgresql]
---

h1. {{ page.title }}

p(meta). Octo 27, 2013 - Portland

The concept of doing in-database modeling has a lot of promise and of course a long history too.  Madlib is an offering from the Berkeley database group which provides a nice grab bag of modeling functions in the form of a postgresql extension.  Until recently the install process has been somewhat onerous with official instructions limited to centOs.  Below is an approach for installing madlib on an ubuntu system.

h2.  Dependencies

This install process requires a few dependencies.

bc. sudo apt-get install cmake postgresql-plpython-9.1 pgxnclient

If you installed from source ensure that the plpython language is present in /src/pl/

pgxn is a handy package repo for postgres extensions.  Madlib is a shining example of how it can make life easier.

h2.  Installation

The installation with pgxn is wonderfully painless.

bc. sudo pgxn install madlib

Next add madlib to your database with the following commands executed in psql.

bc.  create extension plpythonu;
create extension madlib;



