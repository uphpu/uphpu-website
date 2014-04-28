---
layout: post
status: publish
published: true
title: How to fix the default Apache etag confi...
author: josephscott
author_login: josephscott
author_email: joseph@josephscott.org
author_url: http://josephscott.org/
wordpress_id: 1064
wordpress_url: http://uphpu.org/2012/05/18/how-to-fix-the-default-apache-etag-confi/
date: '2012-05-18 00:30:38 -0500'
date_gmt: '2012-05-18 06:30:38 -0500'
categories:
- status
tags:
- apache
- etag
comments: []
---
<p>How to fix the default Apache etag configuration.</p>
<p>By default Apache uses "INode MTime Size" for FileETag.  This is a problem if you have multiple servers for the same file, as the inode will be different on each server.  Changing this to "MTime Size"  will fix the problem.</p>
<p>This appears to have finally been fixed in Apache 2.4, which defaults to "MTime Size".</p>
