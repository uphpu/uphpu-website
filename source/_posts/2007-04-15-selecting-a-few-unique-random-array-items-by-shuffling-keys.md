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
---
<p>MGeary helped me clean a complex function&mdash;containing many lines and loops&mdash;up into four concise lines by utilizing the shuffle function. I thought that I would posted it here in case it helps anyone else. I was trying to randomly select five unique items from a multi-dimensional array and although I had achieved the results I wanted, his suggetion allowed me to shorten my code considerably.</p>
<p class="code">$howmany_want = 5;<br />
$author_keys = array_keys($authors);<br />
shuffle($author_keys);<br />
$author_keys = array_slice($author_keys, 0, $howmany_want);</p>
