---
layout: post
title: Customizing Windowlab
---

h1. {{ page.title }}

p(meta). August 21, 2013 - Portland

This post covers how to hack windowlab, the clean and fast window manager featured in <a href="http://no0p.github.io/2013/03/21/cool_window_manager.html">an earlier blog post</a>.

We'll be targeting an ubuntu system, and updating the window manager to focus on newly created windows.  The amiga style window focusing mechanism is great and this modification is intended for use with application launchers such as gnome-do.

h3.  Download Source

bc. wget http://nickgravgaard.com/windowlab/windowlab-1.40.tar && tar -xf windowlab-1.40.tar

&nbsp;

h3.  Install Dependencies

bc. sudo apt-get libxext-dev libx11-dev windowlab

&nbsp; 

h3.  Modify Build Params

Update @Makefile@ parameter for the conf dir

bc. CONFDIR = /etc/X11/windowlab


Update @windowlab.h@ def to be a font currently installed.  Use xlsfonts to pick a nice one.

bc. #define DEF_FONT "-misc-fixed-medium-r-semicondensed--13-120-75-75-c-60-iso8859-1"

&nbsp;

h3.  Update Source

Look for a code block in @new.c@ like the following and add the comments as below.

bc. // if no client has focus give focus to the new client
  //if (focused_client == NULL)
  //{
    check_focus(c);
    focused_client = c;
  //}

&nbsp;

h3.  Build and Replace Binary

bc. make
mv /usr/bin/windowlab /usr/bin/windowlab_sys
cp ./windowlab /usr/bin/windowlab


Restart your session.  

h3.  Adding Tiling

A tiling feature resizes and moves windows such that no two windows are overlapping and all windows are visible.  This gives you a high level view of what is open.  Of course many of the feature rich window managers have this feature in spades with animations, but let's consider adding a simple implementation to window lab for now.

The problem is known as <a href="http://en.wikipedia.org/wiki/Bin_packing">bin packing</a>, and I've read it is NP-Hard.  There are a whole bunch of algorithms and interesting approaches to the problem out there and it's a fun one to think about.

The key considerations for the approach implemented:

* Sublinear time.
* Easy to Implement.

The approach which meets these needs are the class of solutions called Shelving algorithms.  In this case it is a shelving algorithm which has a roughly geometrically window size change as a shelf approaches the right boundary.

Implementation <a href="https://github.com/no0p/windowlab/blob/master/taskbar.c#L444">is here</a> and of course feel free to download an use this version of window lab for the features above.  Currently the tiling function is triggered by "Alt-tab."

<center><img src="/images/sublin.jpg" width="300"/></center>


