---
layout: post
status: publish
published: true
title: Zend Eclipse PHP IDE (Plugin)
author: thebigdog
author_login: bigdog
author_email: bigdog@venticon.com
author_url: http://torosys.com
wordpress_id: 31
wordpress_url: http://phlyte.uphpu.org/?p=31
date: '2006-03-22 20:18:00 -0600'
date_gmt: '2006-03-23 02:18:00 -0600'
categories:
- News
tags: []
---
<p>Zend has a preview release of the new eclipse plugin for PHP. Here is the link to check out the instructions for adding it to your eclipse version. If you have the UPHPU this will not work as the Zend Eclipse PHP IDE plugin requires that you have the full Eclipse SDK with the WST Plugin.</p>
<p><a href="http://www.zend.com/phpide/">http://www.zend.com/phpide/</a><br />
If you have the UPHPU Eclipse version you can upgrade your version to the eclipse SDK by using the update manager in eclipse.</p>
<p>Help -> Sofware Updates -> Find and Install. Then you need to grab pretty much all the stuff in there that is for the SDK.</p>
<p>Once you have the SDK then you can add the WebTools package that is required for the Zend Eclipse PHP IDE by setting up a new remote download site with the following values:</p>
<p>Name: WebTools<br />
URL: <a href="http://download.eclipse.org/webtools/updates/">http://download.eclipse.org/webtools/updates/</a></p>
<p>Then you can add the Zend Remote Update site with the following values:</p>
<p>Name: PHP IDE<br />
Value: <a href="http://downloads.zend.com/phpide/">http://downloads.zend.com/phpide/</a></p>
<p>That will allow you to download and install the plugins. If you need any additional help i will be on irc to answer any install questions.</p>
