---
layout: post
title: Gedit is forever 
---

h1. {{ page.title }}

p(meta). Octo 28, 2013 - Portland

Ok so Vim is forever.   <a href="http://no0p.github.io/2009/10/01/bakeanapplepie.html">I recommend it to anyone</a>.  Yet when asked what my favorite editor is, I have to say it's Gedit. 

Well, Gedit ... & Vim.

Anyways, in this post I'm reviewing my somewhat complicated notes for tricking out Gedit.

<center>
<image src="/images/tricked_out.jpg"/>
</center>

h2.  Install Dependencies

bc. apt-get install gedit-plugins gedit-dev exuberant-ctags
git clone git@github.com:no0p/gedit-source-code-browser.git

Note that the repo is <a href="https://github.com/no0p/gedit-source-code-browser">here</a> but you should use the python3 branch at the repo in the code block above, unless integrated in.

h2.  Source Code Browser

This plugin adds an additional tab next to the file explorer in gedit with ctag information for the curent file.  

<center>
<image src="/images/gedit_source_browser.png"/>
</center>
 
Well, follow the readme instructions in the <a href="https://github.com/Quixotix/gedit-source-code-browser/blob/master/README.markdown">readme</a> for the plugin.  Be sure you installed the dependencies above as it will fail mysteriously without gedit-dev.

Note this plugin is modified that when you double click on a symbol it will automically load vim with the tag as an argument.  Ensure that you generate a tags file with ctags and that you have an appropriate tags path in vimrc.  @set tags=/path/to/tagfile@.  Of course to generate a basic tags file for the current directory: @ctags --recurse ./@.

h2.  External Tools Example

The external tools plugin is a mix of Gedit environment variables and hotkeys.  Enable the external tools plugins with @Edit -> Preferences -> Plugins@.

Then configure a external script with a hotkey and the following command 

@gnome-terminal -x vim -t $GEDIT_SELECTED_TEXT &@

<center>
<image src="/images/gedit_external.png"/>  
</center>

Now the hotkey will launch vim and jump to the tag which matches the selection.

A <a href="https://wiki.gnome.org/Apps/Gedit/Plugins/ExternalTools">full list of gedit environment variables is available</a> which makes it easy to add hotkeys to open a file in vim, launch commands, and go to web pages with a favorite web browser.

Consider this external tool 

@chromium-browser "http://www.postgresql.org/search/?submit=Search&q="$GEDIT_SELECTED_TEXT &@

How easy is that?!

h2.  Viper Mode

Finally consider activating the Command Mode plugin.  It offers your favorite vi command mode tools with @Ctrl-.@

Find, Find and Replace, Open File... It's all there.



