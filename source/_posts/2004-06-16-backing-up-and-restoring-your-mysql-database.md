---
layout: post
status: publish
published: true
title: Backing Up and Restoring Your MySQL Database
author: wade
author_login: wade
author_email: wade@anavidesign.com
author_url: http://wadeshearer.com
wordpress_id: 232
wordpress_url: http://phlyte.uphpu.org/?p=232
date: '2004-06-16 14:37:00 -0500'
date_gmt: '2004-06-16 20:37:00 -0500'
categories:
- Articles
tags: []
comments: []
---
<p>A new <a href="http://www.devshed.com/c/a/MySQL/Backing-up-and-restoring-your-MySQL-Database/">article</a> by <a href="http://www.devshed.com">DevShed</a> discusses backing up,  transferring, and restoring databases and discusses options and utilities to make this task simpler.<i>
<p>Do you need to change your web host or switch your database server? This is probably the only time when you really think of backing up your MySQL data. If you've got a website with a database or your custom database running for your applications, it is imperative that you make regular backups of the database. In this article, I will outline two easy ways of backing up and restoring databases in MySQL.</p>
<p>The easiest way to backup your database would be to telnet to the your database server machine and use the mysqldump command to dump your whole database to a backup file. If you do not have telnet or shell access to your server, don't worry about it; I shall outline a method of doing so using the PHPMyAdmin web interface, which you can setup on any web server which executes PHP scripts.</p>
<p></i></p>
