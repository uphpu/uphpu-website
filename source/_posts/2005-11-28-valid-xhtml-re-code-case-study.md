---
layout: post
status: publish
published: true
title: Valid XHTML re-code case study
author: wade
author_login: wade
author_email: wade@anavidesign.com
author_url: http://wadeshearer.com
wordpress_id: 56
wordpress_url: http://phlyte.uphpu.org/?p=56
date: '2005-11-28 06:22:56 -0600'
date_gmt: '2005-11-28 12:22:56 -0600'
categories:
- Articles
tags: []
---
<p>A gentleman popped into our <a href="/staticpages/index.php?page=20040521003849494#IRC">IRC channel</a> this evening asking for some help writing some HTML. He was having a hard time aligning some badges at the bottom of a column. Being all hopped up on birthday cake icing, I accepted the opportunity to write some code for the fun of it and recoded his page. I present to you now a case study in composing valid XHTL and good layout. In the process of exemplifying a possible solution to this man's problem, I would like to illustrate how simple, lean, and user-friendly proper, valid code can (and definately should) be.</p>
<p><a href="/presentations/2005-11-27_valid_xhtml_case_study/original/">View original code.</a> | <a href="/presentations/2005-11-27_valid_xhtml_case_study/redesign/">View my code.</a></p>
<p>Now, if you attempt to validate the authors code, you will notice that it actually almost validates. So, what is the problem? Why didn't I simply align his badges at the bottom of his column and move on? I will not take the time to critique his code completely here, but will offer the following general observations instead:
<ol>
<li>tables should not be used for layout</li>
<li>code should be lowercase</li>
<li>indentation and tag pedigree should be visually logical and consistant</li>
<li>it is 2005, there is no reason that all code shouldn't be at least XHTML transitional</li>
<li>style declarations should be contained within an external style sheet</li>
<li>good code should not just be legible; it should be beautiful</li>
</ol>
