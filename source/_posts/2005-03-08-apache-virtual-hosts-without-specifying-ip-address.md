---
layout: post
status: publish
published: true
title: Apache virtual hosts without specifying IP address
author: Ken Snyder
author_login: tr0gd0r
author_email: ksnyder@coremr.com
author_url: http://
wordpress_id: 124
wordpress_url: http://phlyte.uphpu.org/?p=124
date: '2005-03-08 06:25:38 -0600'
date_gmt: '2005-03-08 12:25:38 -0600'
categories:
- Articles
tags: []
comments: []
---
<p>This weekend, I had quite the adventure configuring Apache on my home server.  My IP address happened to change, and I wanted to update my Apache httpd.conf file so that my webserver would work regardless of my IP address.  I also wanted to add Virtual Hosts to my personal web sites so that my IP address would no longer be visible to visitors.</p>
<p>The configuration turned out to be easy.  Let me cover the key parts for my Win XP Pro Apache 2 configuration with a single IP address:</p>
<pre>Listen *:80NameVirtualHost *  </pre>
<p>The above tells Apache to serve web pages for all IP addresses on port 80and to use Virtual Hosts for all IP addresses</p>
<pre><VirtualHost *> ServerName www.my-domain-1.com DocumentRoot "c:wwwrootfolder-1" ServerAlias my-domain-1.com *.my-domain-1.com</VirtualHost><VirtualHost *> ServerName www.my-domain-2.com DocumentRoot "c:wwwrootfolder-2" ServerAlias my-domain-2.com *.my-domain-2.com</VirtualHost></pre>
<p>The above tells Apache to serve web pages (on all IP addresses) fromfolder-1 where requests have my-domain-1.com or something.my-domain-1.com inthe web page.  Also sets up Apache to serve my-domain-2.com documents fromfolder-2.</p>
<p>Presto! Now I have two domains pointing to my IP address, and apache canseamlessly differentiate between the two without knowing my IP address.  Itis sort of basic, but there are zillions of ways to configure apache!</p>
<p><a href="http://www.dyndns.org/support/kb/apachevhosts.html">More info Â»</a><br />
