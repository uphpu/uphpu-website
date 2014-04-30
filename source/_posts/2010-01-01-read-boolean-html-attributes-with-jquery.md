---
layout: post
status: publish
published: true
title: Read boolean HTML attributes with jQuery
author: wade
author_login: wade
author_email: wade@anavidesign.com
author_url: http://wadeshearer.com
wordpress_id: 625
wordpress_url: http://uphpu.org/?p=625
date: '2010-01-01 13:02:26 -0600'
date_gmt: '2010-01-01 19:02:26 -0600'
categories:
- Code
tags: []
---
<p>After much testing, I have concluded that in order to use <a href="http://jquery.com">jQuery</a> with boolean attributes (and have it work in the big four browsers), the following markup must be used: checked="checked".</p>
<p>While browsers except any of the followingâ€¦</p>
<pre lang="html">
checked
checked=""
checked="true"
checked="1"
checked="checked"
</pre>
<p>â€¦only the last option works with jQuery in all browsers.</p>
