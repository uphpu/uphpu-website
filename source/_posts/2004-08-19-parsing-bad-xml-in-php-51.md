---
layout: post
status: publish
published: true
title: Parsing Bad XML in PHP 5.1
author: wade
author_login: wade
author_email: wade@anavidesign.com
author_url: http://wadeshearer.com
wordpress_id: 193
wordpress_url: http://phlyte.uphpu.org/?p=193
date: '2004-08-19 13:50:17 -0500'
date_gmt: '2004-08-19 19:50:17 -0500'
categories:
- Articles
tags: []
comments: []
---
<p>In a new note from the <a href="http://blog.bitflux.ch/">BitFlux blog</a>, Christian Stocker has information about the latest patch comitted to the PHP 5.1 branch that <i>allows you to parse not well-formed XML documents and adds the missing elements, eg. missing closing tags.</i>
<p>Basically, <a href="http://blog.bitflux.ch/p1757.html">it sets up the document</a> with the DOM parser using a special variable (recover) to tell the interpreter to ignore incomplete data/tags and still make the information inside the document useable. The output isn't the normal object/data model that the DomDocument normally contains, but instead outputs a corrected XML document to take and parse all over again.
<p>With all of the badly formatted XML out there, <a href="http://blog.bitflux.ch/p1757.html">something like this</a>, can come in very, very handy...</p>
