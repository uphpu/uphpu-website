---
layout: post
status: publish
published: true
title: SQL Injection
author: Jon Jensen
author_login: jon
author_email: jon@jenseng.com
author_url: http://jenseng.com
wordpress_id: 12
wordpress_url: http://phlyte.uphpu.org/?p=12
date: '2006-06-06 20:55:20 -0500'
date_gmt: '2006-06-07 02:55:20 -0500'
categories:
- News
tags: []
comments: []
---
<p>Are your apps sufficiently protected against SQL injection? Do you currently validate and sanitize all types (strings, numbers) and methods (forms, cookies, query strings) of user input before using it in a database query? If not, it's only a matter of time before serious pwnage...</p>
<p>This article is good primer for newbies and reminder for gurus...</p>
<p><a href="http://www.unixwiz.net/techtips/sql-injection.html"> SQL Injection Attacks by Example</a></p>
<p>If you aren't already using prepared statements, now's as good a time as any to start:</p>
<ul>
<li><a href="http://www.php.net/mysqli">mysqli</a></li>
<li><a href="http://pear.php.net/package/DB">Pear::DB</a></li>
</ul>
