---
layout: post
status: publish
published: true
title: Verifying email addresses in PHP
author: macnewbold
author_login: mac
author_email: mac@macnewbold.com
author_url: http://www.vivint.com/
wordpress_id: 144
wordpress_url: http://phlyte.uphpu.org/?p=144
date: '2005-01-06 22:25:16 -0600'
date_gmt: '2005-01-07 04:25:16 -0600'
categories:
- Articles
tags: []
comments: []
---
<p>A recent discussion in the <a href="http://uphpu.org/staticpages/index.php?page=20040521003849494">UPHPU IRC channel</a> (#uphpu on freenode.net) prompted me to submit something I use for validating email addresses. There's only so much you can do without actually sending a message, but this code uses three steps to check the address.</p>
<p>First, it checks it with a regular expression, to verify that it uses valid characters for the various parts of the address, and there  is an @ and at least one period, and they're in the right places. Second, it turns to DNS to verify that the domain exists. (DNS calls will probably need tweaking to work on Windows servers.) Best case is that it has an MX record for the domain. Second best is to verify that the domain simply exists and has an address. If it can pass the regular expression test and the DNS test, then it is most likely a valid address. The things we can't easily check are user-related, like user doesn't exist, has exceeded quota, etc. </p>
<p>In places where I've done comparisons with and without this checking in place, I've found very significant reductions (probably around 80%) in the number of bounced messages. While this can be used just before sending, it's often best to use it when accepting the email address from the user, to prevent bad addresses from getting into the system in the first place, and catch typographical errors. In cases where a long time has passed since the email was known to work, it may be helpful to check before sending the message as well.</p>
<pre><code>function ValidateEmail($e,$v=-1)
{
	global $verbose;

	/*	Return codes:
   	0: appears to be a valid email
   	1: didn't match pattern of a valid email
   	2: looks valid by the pattern, but no DNS records found
   
  		Try several things to make sure it is most likely valid:
   	1. preg_match it to make sure it looks valid
   	2a. If that passes, check for an MX entry for the domain
   	2b. If no MX, check for any DNS entry for the domain
		*/
	
	if ($v==-1)
	{
		$v=$verbose;
	}
	
	if (!preg_match("/^[a-z0-9.+-_]+@([a-z0-9-]+(.[a-z0-9-]+)+)$/i",
		$e, $grab))
	{
		return 1;
	}
	
	# $grab[0] is the whole address
	# $grab[1] is the domain
	
	$domain = $grab[1];
	$cmds = array("host -t MX $domain 2>&1 ","host $domain 2>&1 ");
	
	foreach ($cmds as $cmd)
	{
		$dns = trim(`$cmd`);
		
		if ($v)
		{
			print "n";
		}
		
		if (strpos($dns,"$domain mail is handled ")!==false || 
			strpos($dns,"$domain has address ")!==false ||
			strpos($dns,"$domain is an alias ")!==false)
		{
			# It is valid
			return 0;
		}
	}
	
	# If it didn't return yet, it's invalid, even
	# though it passed the preg.
	
	return 2;
}</code></pre>
<p>Questions, comments, and suggestions are welcome.</p>
<p>- Mac</p>
