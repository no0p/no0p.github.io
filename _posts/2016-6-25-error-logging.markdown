---
layout: post
title: Error Logging; or 'Old Man Yells at Cloud'
categories: [rails]
---

h1. {{ page.title }}

p(meta). June 25, 2016 - Portland

Seems like there are a ton of exception logging services out there these days.  It's a cool idea -- include a library and get reports on exceptions.

These services are great, and you should use them, especially if you have a budget consisting of other people's money.  

But I wonder about the marginal value they offer over *common sense computing*.  What ever happened to old fashioned log files?

<table style="width: 100%">
<tr>
<td class="">
I recently needed to review a few million web requests on a fairly large web site to figure out what was broken and what wasn't.  It turns out that isolating a list of errors with common sense computing takes less time than it does to install/configure a SaaS library with multiple possible failure modes. All without adding a dependency or monthly fee.
</td>
<td class="trimage">
<img src="/images/oldman.jpg" height="200px"/>
</td>
</tr>
</table>

p. 

h3.  Nginx Server Logs

You can get a list of 500 errors served by nginx in about a second:

bc. zgrep " 500 " /var/log/nginx/access* > ~/errors.txt


Which produces a file showing you when an exception occurred and the path, e.g.:

bc.. ./access.log:66.249.79.246 - - "GET /yourpath/123 HTTP/1.1" 500 1395 
./access.log:80.187.103.18 - - "GET /yourpath/abc HTTP/1.1" 500 1395 

p. 


h3.  Rails Logs

If you're looking for stack traces, pretty much any web framework is going to have a standard logging mechanism.  For the case of rails, getting stack traces for errors observed is also about a 5 second ordeal.  Here we just process the production log file looking for lines that contain "Internal Server Error" and print all lines until the next blank line.

bc. sed -n '/Internal Server Error/,/^$/p' production.log


Which produces a list of stack traces:

bc.. I, [2016-05-16T13:37:29.564686 #12855]  INFO -- : Completed 500 Internal Server Error 
F, [2016-05-16T13:37:29.566361 #12855] FATAL -- : 
ActionView::Template::Error (undefined method `your_method' for nil:NilClass):
    1: <div class="container">  
    2:   <div class="whatever" id="">
    3:     <h1>
    4:       <%= @model.your_method %>
    5:     </h1>
    6:     
    7:     <%= render 'thing' %>
  app/views/thing/show.html.erb:4:in `_show_html_erb__1541091387643215208_62605240'

p. 

h3. Doomed to reinvent

We all seem to reinvent solutions to problems that are well understood and thoroughly solved.

It's a problem with the breadth of the problem space software developers face every day.  

Log files are simple and readily analyzed, with only a minute of effort you get 90% of the benefit of an error tracking solution that will charge you monthly for the service of grepping your log files for you. 

Of course these services will index and group errors, issue notifications, etc. which are not features to shake a stick at.  But there is often a solution (usually sed or awk command found on the back of a cereal box) that is faster to implement, less prone to error, cheaper, with a lower maintenance cost, and still solves your core problem.

