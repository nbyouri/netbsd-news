---
layout: post
title: Signed Packages
author: Youri Mouton
---

The pkgsrc 2013Q3 branch repo is almost finished compiling, it features all the ports fixes I've been working on, and now the ports use the X11 libs from inside pkgsrc so XQuartz will only be needed to actually start the X server! I will try to get an X server working from pkgsrc to avoid having to install XQuartz from macosforge! 

But more importantly, the packages are now signed! This means you can easily make sure the packages are coming from a trusted source (you trust me, right?). 
I've got this idea from the awesome work of khorben , a NetBSD developper and leader of the [EdgeBSD](http://edgebsd.org) which is a great project I'm also helping on. Check [this](http://video.fosdem.org/2014/AW1121/Saturday/The_EdgeBSD_Project.webm) video if you want to learn more about it and have a few infos on package signing on pkgsrc. khorben pushed his changes to NetBSD so all that was needed was a [patch](http://lists.edgebsd.org/edgebsd-developers/2013/09/msg00001.html) to the pkgsrc makefiles and a few config adjustments in mk.conf and pkg_install.conf. 

The packages are signed with gnupg version 2.0.22 and this is my info:

`
pub   4096R/2D99C8F7 2014-02-05     
uid                  Youri Mouton <youri.mout@gmail.com>     
uid                  Youri Mouton <yrmt@edgebsd.org>     
sub   4096R/B6BAE02C 2014-02-05     
`

