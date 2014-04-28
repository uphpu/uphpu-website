---
layout: post
status: publish
published: true
title: SQLite, PHP and ALTER TABLE
author: Jon Jensen
author_login: jon
author_email: jon@jenseng.com
author_url: http://jenseng.com
wordpress_id: 205
wordpress_url: http://phlyte.uphpu.org/?p=205
date: '2004-08-04 17:19:55 -0500'
date_gmt: '2004-08-04 23:19:55 -0500'
categories:
- Articles
tags: []
---
<p>Since SQLite comes bundled with PHP 5, I thought I'd post this for those interested.</p>
<p>SQLite currently does not support ALTER TABLE statements. This can make developing/modifying an app a bit cumbersome, since modifying a table requires creating a temp table and copying data back and forth. To this end, I've created a PHP wrapper for SQLite that does the dirty work for you and supports all types of ALTER TABLE statements. The source is in the public domain, so you may use it however you like.</p>
<p>Documentation:<br /><a href='http://code.jenseng.com/db/' title='SQLiteDB - SQLite and PHP'>http://code.jenseng.com/db/</a></p>
<p>Source:<br /><a href='http://code.jenseng.com/db/sql.txt' title='SQLiteDB source code'>http://code.jenseng.com/db/sql.txt</a></p>
<p>I will be releasing an optimized version with cleaner code, more comments, and additional functionality (such as RENAME TABLE) in a <a href='http://jenseng.com/archives/000026.html' title='sqlite part II'>few weeks</a>.</p>
