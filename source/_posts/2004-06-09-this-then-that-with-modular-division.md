---
layout: post
status: publish
published: true
title: This... then that... with modular division
author: wade
author_login: wade
author_email: wade@anavidesign.com
author_url: http://wadeshearer.com
wordpress_id: 242
wordpress_url: http://phlyte.uphpu.org/?p=242
date: '2004-06-09 03:28:05 -0500'
date_gmt: '2004-06-09 09:28:05 -0500'
categories:
- Articles
tags: []
comments: []
---
<p>A friend taught me something cool today that I thought that I would share with the group. With simple modular division, you can test for evens and odds and "cycle" between different results.<br />
Follow me through the following scenario. My actual code for this was done in SMARTY, but whether done in a script or the template, it applies the same.</p>
<p>I had an array of values...</p>
<p>	$array = array('A4','A6','A8','TT','allroad quattro');</p>
<p>I wanted to loop through them and print out some HTML along with each value in the array. A simple foreach takes care of this nicely, but I needed something more. I wanted to print out a different set of HTML for every other value. In other words, the loop progresses and the values in the array are printed out with/into the HTML, the first would be printed out with/into "HTML chunk A", then the second with/into "HTML chunk B", then the third with/into "HTML chunk A", then the forth with/into "HTML chunk B", and so forth through for all the values. I needed a way to say "this... then that... then this.... then that."</p>
<p>My friend introduced me to modular division. It does some math and returns the remainder of the fraction, making it easy to detect odds or evens. Each item in the array already has a numerical value assigned to it automatically in the array (the key), so I decided to use that to compare against.</p>
<p>So, if my code were in PHP, it would look something like this...</p>
<p>	foreach ($array as $key => $value)<br />
	{<br />
	    if ($key %2) // divide by two; ie, every other<br />
	    {<br />
	        echo 'HTML chunk A' . $value;<br />
	    }<br />
	    else<br />
	    {<br />
	        echo 'HTML chunk B' . $value;<br />
	    }<br />
	}</p>
<p>And, using this modular division, you would be able test for more than two possibilities as well.</p>
<p>Hope this helps someone,</p>
<p>wade</p>
