---
layout: post
title: Kobayashi Maru
---

h1. {{ page.title }}

p(meta). Octo 29, 2013 - Portland

So here's an impossible situation:

bc.. robert@beefcircuit:~/$ sudo apt-get install postgresql-plpython3-9.3

Reading package lists... Done
Building dependency tree       
Reading state information... Done

Some packages could not be installed. This may mean that you have
requested an impossible situation or if you are using the unstable
distribution that some required packages have not yet been created
or been moved out of Incoming.

The following information may help to resolve the situation:

The following packages have unmet dependencies:
 postgresql-plpython3-9.3 : Depends: libpython3.2 (>= 3.2~a4) but it is not installable
E: Unable to correct problems, you have held broken packages.

p.  Here's the problem.  I'm using backported packages. And I know I have libpython3.3 installed.  The -f flag to apt-get does nothing.  Scared yet?

To get this running we need to change the assumptions in the working environment.  One effective option is to build and install a fake package.  

bc.. sudo apt-get install equivs
equivs-control libpython3.2
vi libpython3.2
  # Package: libpython3.2
  # Version: 3.2~a4
  # Maintainer: justin stall <justinstall@now.com>
equivs-build libpython3.2
sudo dpkg -i libpython3.2_3.2~a4_all.deb
sudo apt-get install postgresql-plpython3-9.3



h2. Problem solved.

Creating a fake package seems to be a decent way to get aptitude to leave you alone.  Obviously hollow dependencies can cause problems so use discretion.  Nonetheless this is at least one solid tool to deal with broken aptitude dependencies.

<center>
<iframe width="420" height="315" src="//www.youtube.com/embed/bDg674aS-F4" frameborder="0" allowfullscreen></iframe>
</center>


