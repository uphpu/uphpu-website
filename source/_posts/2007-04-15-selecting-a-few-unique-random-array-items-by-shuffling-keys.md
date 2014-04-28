---
layout: post
status: publish
published: true
title: Selecting a few unique, random array items by shuffling keys
author: wade
author_login: wade
author_email: wade@anavidesign.com
author_url: http://wadeshearer.com
wordpress_id: 320
wordpress_url: http://uphpu.org/2007/04/15/selecting-a-few-unique-random-array-items-by-shuffling-keys/
date: '2007-04-15 20:42:51 -0500'
date_gmt: '2007-04-16 02:42:51 -0500'
categories:
- Articles
tags: []
comments:
- id: 5873
  author: utahhomebook.info &raquo; Bobcats try to make it four wins in a row vs.
    Sixers
  author_email: ''
  author_url: http://utahhomebook.info/index.php/archives/132
  date: '2007-04-16 00:11:20 -0500'
  date_gmt: '2007-04-16 06:11:20 -0500'
  content: "[...] Selecting a few unique, random array items by shuffling keys [...]"
- id: 10152
  author: andrix
  author_email: andrix_111@yahoo.com
  author_url: ''
  date: '2007-05-21 03:26:30 -0500'
  date_gmt: '2007-05-21 09:26:30 -0500'
  content: "\r\nnice\r\n"
---
<p>MGeary helped me clean a complex function&mdash;containing many lines and loops&mdash;up into four concise lines by utilizing the shuffle function. I thought that I would posted it here in case it helps anyone else. I was trying to randomly select five unique items from a multi-dimensional array and although I had achieved the results I wanted, his suggetion allowed me to shorten my code considerably.</p>
<p class="code">$howmany_want = 5;<br />
$author_keys = array_keys($authors);<br />
shuffle($author_keys);<br />
$author_keys = array_slice($author_keys, 0, $howmany_want);</p>
