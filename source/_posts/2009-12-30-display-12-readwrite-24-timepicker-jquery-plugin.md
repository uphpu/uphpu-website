---
layout: post
status: publish
published: true
title: Display 12, read/write 24 TimePicker jQuery plugin
author: wade
author_login: wade
author_email: wade@anavidesign.com
author_url: http://wadeshearer.com
wordpress_id: 615
wordpress_url: http://uphpu.org/?p=615
date: '2009-12-30 17:47:15 -0600'
date_gmt: '2009-12-30 23:47:15 -0600'
categories:
- Code
tags: []
comments: []
---
<p><a href="http://devblog.jasonhuck.com/">Jason Huck's</a> <a href="http://jquery.com">jQuery</a> <a href="http://code.google.com/p/jquery-timepicker/">TimePicker plugin</a> didn't work for me as-is since it reads and writes in 12-hour format. While most people (strangely) prefer 12 hour format for interacting with, database time fields are 24 hour. I could have converted the format with scripting on the back-end but decided I would prefer to have the picker display 12-hour but read/write 24-hour. So, I took Jason's great design and rewrote it to suite my needs.</p>
<p>Other changes I made were adding a colon between the hour and the minute select lists, adding a space between the minute and the am/pm list, and changed the hours and minutes arrays such that the hours no longer have leading zeros and the minutes are every five instead of every fifteen.</p>
<p>I have intergrated tomsalfield (issue 3) and jasonalanharris' (issue 5) changes as well.</p>
<p>My version of the script can be found in the <a href="http://code.google.com/p/jquery-timepicker/issues/detail?id=6">issue tracker</a> on the Google Code project for the plugin. Here's a screenshot of it in use next to a date field:</p>
<p><img src="http://uphpu.org/wp-content/uploads/2009/12/timepicker.jpg" /></p>
