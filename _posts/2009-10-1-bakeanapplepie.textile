---
layout: post
title: A vim setup -- If you want to bake an apple pie from scratch
---

h1. {{ page.title }}

p(meta). Octo 1 2009 - Los Angeles

Before you can develop a rails app you must first invent your development environment.  And it goes without saying that our development environment must be morally pure like our precious bodily fluids.  There was a time when I was infantuated with the glitz and glamour of OS X and Textmate.  But I can no longer standby and allow proprietary infiltration, proprietary indoctrination, proprietary subversion, and the international closed source conspiracy to sap and impurify all of our precious bodily fluids.

<center><object width="425" height="344"><param name="movie" value="http://www.youtube.com/v/GjL9g3s6Fro&hl=en&fs=1&"></param><param name="allowFullScreen" value="true"></param><param name="allowscriptaccess" value="always"></param><embed src="http://www.youtube.com/v/GjL9g3s6Fro&hl=en&fs=1&" type="application/x-shockwave-flash" allowscriptaccess="always" allowfullscreen="true" width="425" height="344"></embed></object><br/><span class="caption">"are you beginning to understand?"</span></center>

Just the other day the battery charger to my ibook was emitting sparks.  I realized just how far the insanity had infiltrated my life when the apple store informed me that I would need to dish out nearly 100 bucks for a replacement charger.  If I had 100 bucks I wouldn't own a laptop which sparks when you plug it in, and I certainly could not afford a Textmate license.  

Fortunately there's vim.  With a few plugins you can have an excellent setup for developing rails applications on the operating system of your choice without using expensive software.

<center><img style="width: 700px;" src="/images/screenshot.png" alt="A Screenshot" /><br/><span class="caption">"A showcase."</span></center>

*1.  Install vim*

If you are using aptitude look for packages like vim-ruby or vim-gtk.  When I compiled the <a href="http://www.vim.org/download.php#unix">vim 7.2 source</a> on my machine the configure script and makefile automatically included ruby support.  Once you have installed vim you can test whether ruby support is installed with:

{%highlight vim%}
:echo has('ruby') // returns 1 or 0
{%endhighlight%}

*2.  Install NERDTree Plugin*
All of these plugings have installation instructions and usage documentation on their sites.  Essentially you extract some archives in your $HOME/.vim directory.

<a href="http://www.vim.org/scripts/script.php?script_id=1658">NERDTree</a>

*3.  Install vim.rails*

<a href="http://www.vim.org/scripts/script.php?script_id=1567">vim.rails</a>

*4.  Install Ruby Complete*

<a href="http://www.vim.org/scripts/script.php?script_id=1662">Ruby Complete</a>

*5.  Install Supertab*

<a href="http://www.vim.org/scripts/script.php?script_id=182">Supertab</a>

{% highlight ruby %}
>ls -R $HOME/.vim

.vim/autoload:
rails.vim

.vim/colors:
desert256.vim  vividchalk.vim

.vim/doc:
NERD_tree.txt  rails.txt  tags

.vim/nerdtree_plugin:
exec_menuitem.vim  fs_menu.vim  git_menu.vim

.vim/plugin:
NERD_tree.vim  rails.vim  rubycomplete.vim  supertab.vim

{% endhighlight %}
<span class="caption">What your $HOME/.vim directory might look like.</span>


*6.  Update Configuration*

Once you have installed the plugins you might want to update a few settings make them more usable.  The .vimrc file below:

* disables backwards compatibility with vi, ensuring more features
* ensures syntax highlighting is enabled
* adds some convenience mappings for nerdtree
* ignores case when searching
* has a folding convenience  mapping
* highlights matches when searching for them
* sets two spaces for tab displays, vim.rails will force tabs to two spaces in rails project files 
* forces the default supertab completion to omnicomplete

{%highlight vim%}
	set nocompatible
	syntax on
	filetype plugin indent on 
	nmap <c-t> :NERDTreeToggle<CR> 
	imap <c-t> <Esc>:NERDTreeToggle<CR> 
	set ignorecase
	nnoremap <space> za
	set hlsearch
	set ts=2
	let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
{%endhighlight%}


