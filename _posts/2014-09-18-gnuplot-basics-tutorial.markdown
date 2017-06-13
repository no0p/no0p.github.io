---
layout: post
title: Gnuplot Basics Tutorial
---

h1. {{ page.title }}

p(meta). Sep 18, 2014 - Portland

Gnuplot is a useful open source tool for generating plots.  It can output plots in a number of formats including png, pdf, svg, html canvas, and latex.  First released in 1986, it's a fairly mature open source library.  

Gnuplot's <a href="http://www.gnuplot.info/">online documentation</a> is a good read, containing loads of introductory material.  This post focuses on some basic workflows for additional convenience.

h2.  Motivation

There are so many ways to plot functions and data, each with their own merits.  Matlab, Octave, R, Excel, d3.js, as well as a universe of other languages and libraries that are worthy of consideration.  

Gnuplot has two key properties which make it a personal favorite when approaching a plotting problem: it is language agnostic, following a unix philosophy of small utilities, and it has a certain staying power as a mature, widely used open source library.  

h2.  A basic plot

Gnuplot can be run in an interactive mode or in a batch mode which runs script files. To start the interactive mode simply run the @gnuplot@ binary.  

<center>
  <img src="/images/gnuplot_first_step.png"/>
</center>

The above image shows running gnuplot and plotting the function sin(x) over the interval of -3.14 to 3.14.  Gnuplot has some popular constants defined, so the plot command could also be run as 

bc. plot [-pi:pi] sin(x)

Installing <a href="http://www.gnuplot.info/">gnuplot</a> can be trivial.  On a debian or ubuntu system just run the familiar:

bc. sudo apt-get install gnuplot

h2.  Gnuplot basic philosophy

Most gnuplot activity culminates in a call to the @plot@ function. 

So producting a simple plot generally involves setting some variables then calling the plot function with some parameters.

<center>
  <image src="/images/a_line.png" />
</center>

In the above example the title and top margin are set before calling the plot function.  It turns out that even some parameters to the plot function can optionally be set before calling plot, for example the range can be set as a variable rather than as a parameter to @plot@.

<pre><code>gnuplot> set xrange [-3.14:3.14]
gnuplot> plot sin(x)
</code></pre>


h2.  The plot function

Help is available in interactive mode by placing a ? before a command.  A topical help index is available through @help ?@.

bc.. gnuplot> ? plot
 `plot` is the primary command for drawing plots with `gnuplot`.  It creates
 plots of functions and data in many, many ways.  `plot` is used to draw 2D
 functions and data; `splot` draws 2D projections of 3D surfaces and data.
 `plot` and `splot` offer many features in common...

 Syntax:
       plot {<ranges>}
            {<iteration>}
            {<function> | {"<datafile>" {datafile-modifiers}}}
            {axes <axes>} {<title-spec>} {with <style>}
            {, {definitions{,}} <function> ...}

p.  To keep this review as simple as possible let's first consider only the parameters used in the basic example above.

h3.  {ranges}

In the initial example, plot was called with a &lt;ranges&gt; parameter which set the domain to @[-3.14:3.14]@.  The &lt;function&gt; parameter was set to @sin(x)@.  We can update the example to include a y range too with 

bc. plot [-3.14:3.14] [-2:2] sin(x)

Ranges can also be set as timestamps at millisecond resolution for plotting timeseries data.  

<center>
  <table>
    <tr>
      <th style="color: #00f403"> commands </th>
      <th style="color: #00f403"> timedata.csv </th>
    </tr>
    <tr>
      <td style="padding: 20px" width="40%">
        <pre>
          <code>
            gnuplot> set xdata time
            gnuplot> set timefmt '%Y-%m-%d %H:%M:%S'
            gnuplot> set format x "%Y-%m-%d %H:%M:%S"
            gnuplot> plot 'timedata.csv' using 1:3
            
          </code>
        </pre>
      </td>
      <td style="padding: 20px" width="40%">
        <pre>
          <code>
            2014-06-04 10:36:17.164924-07   8689
            2014-06-04 10:36:22.234547-07   8697
            2014-06-04 10:36:27.23984-07    8699
            2014-06-04 10:36:32.24505-07    8691
            2014-06-04 10:36:37.250988-07   8695
          </code>
        </pre>
      </td>
    </tr>
  </table>
</center>

First, @set xdata time@.  Internally, gnuplot treats all timestamps in a time domain as UTC epoch times.  This allows it to reason about times when placing tics and formatting with strftime.  

Second, @set timefmt ‘%Y-%m-%d %H:%M:%S’@. This is the expected format for time data.  Again Gnuplot will convert to epoch time based on this format.  Timezone information is ignored in the case above.

Third @set format x “%Y-%m-%d %H:%M:%S”@.  This statement controls the display format for the x axis tics.

Finally @plot 'timedata.csv' using 1:3@.  The @using@ parameter tells Gnuplot which data to plot from the file 'timedata.csv.'Note that the using statement references columns 1 and 3 in the csv data.  Of course, we know there are only two columns.  Still Gnuplot treats the space in the timestamp as a new column.  When fulfilling the timefmt pattern, which includes a space, it will step into what it considers column 2 to read a complete timestamp.  Thus to reference the values "8689, 8597" we treat the data as if it was in a column 3.

h3.  {function || datafile}

This parameter directs what is actually plotted.  In the basic example above this parameter has a value of @sin(x)@.  Gnuplot contains a number of functions, for example abs(x), exp(x), and rand(x). 

This parameter can also be set to "-" which will read data from STDIN.  

<center>
  <img src="/images/a_line_stdin.png"/>
</center>

This parameter can also be set to a filename which will load columnar data from the specified file.  By default Gnuplot expects all columns to be separated by any space character.

<center>
  <img src="/images/a_line_file.png"/>
</center>

When referencing a data file, a @using@ statement is a key modifier.  For example, you could reverse the axes in the immediate example above with the command:

bc. plot "line.data" using 1:0 with lp

Note that with lp in the statement above is an abbreviation for linpoints, the style of the line.

h2.  Plotting multiple functions

You can plot two functions in the same plot.

<center>
  <img src="/images/two_functions_plot.png"/>
</center>

Or display multiple plots side by side with multiplot.

<center>
  <img src="/images/multiplot.png"/>
</center>

h2.  Rendering plots for the web

GNUplot supports rendering to SVG.  

bc.. gnuplot> set terminal svg
gnuplot> plot sin(x)

...
<rect x="0" y="0" width="600" height="480" fill="none"/>
<defs>
  <circle id='gpDot' r='0.5' stroke-width='0.5'/>
  <path id='Pt0' stroke-width='0.222' stroke='currentColor' d='M-1,0 h2 M0,-1 v2'/>
  <path id='Pt1' stroke-width='0.222' stroke='currentColor' d='M-1,-1 L1,1 M1,-1'/>
...

p.  The result can be displayed in most modern web browsers.  Further there are a number of "binding" libraries for various languages.  <a href="https://github.com/rdp/ruby_gnuplot">A nice ruby library</a> provides a simple DSL to generate plots from ruby objects.

h2.  Is Gnuplot a Turing complete scripting language?

I dont know.  But it has iteration.

@plot@ supports an iteration parameter that can set variables which will be used by later parameters in an iterative fashion.  

<center>
  <img src="/images/gnu_plot_iteration.png"/>
</center>

h2.  Final Remarks

Gnuplot is a wonderful tool for plotting data.  It has some quirks, but once you learn them you will be ready to generate plots for a wide variety of applications so long as you have access to a command line.

There are a ton of features not discussed in this introductory post.  Some recommended further reading is the <a href="http://gnuplot.info/documentation.html">Gnuplot online documentation</a> and a remarkably useful <a href="http://www.gnuplot.info/docs_4.0/gpcard.pdf">cheat sheet</a>.




