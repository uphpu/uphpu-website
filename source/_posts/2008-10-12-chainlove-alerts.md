---
layout: post
status: publish
published: true
title: Chainlove alerts
author: wade
author_login: wade
author_email: wade@anavidesign.com
author_url: http://wadeshearer.com
wordpress_id: 402
wordpress_url: http://uphpu.org/2008/10/12/chainlove-alerts/
date: '2008-10-12 21:02:08 -0500'
date_gmt: '2008-10-13 03:02:08 -0500'
categories:
- Code
tags: []
---
<p>Any other cyclists out there? You a <a href="http://chainlove.com">chainlove</a> junkie too? After finding myself spending too much time refreshing and refreshing, I wrote the following script to watch the site for things I was interested in and send me a text message when they come up. I put it on my machine that's always on and scheduled it to run every ten minutes with <a href="http://developer.apple.com/macosx/launchd.html">launchd</a>. Hopefully it will save you a little time and sanity as well. (Note the wrapped lines.)</p>
<pre lang="php">
/* 
 * CHAINLOVE ALERTS
 * 
 * This script scrapes chainlove.com and sends an email when words in 
 * the "watch list" are included in the current product offering.
 */

// list of words to watch for
$watch_list = array('sunglasses', 'warmers', 'jersey', 'giordana');

// cache file (including path)
$cache_file = '/tmp/chainlove_alerts.cache';

// scrape page
$ch = curl_init() or die(curl_error()); 
curl_setopt($ch, CURLOPT_URL, "http://www.chainlove.com"); 
curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1); 
$page = curl_exec($ch) or die(curl_error()); 
curl_close($ch);

// pull out the product details
preg_match('/<h1 id="item_title">([^<]+)<\/h1>.*<h3 class="price"> Â¬
   ([^<]+)<\/h3>.*<div id="regular_price">\n*\t*\s*([^<]+)<br \/> Â¬
   \n\t*\s*([^<]+)<\/div>/sm', $page, $matches);

// compare current product against cache product... if same, exit
if(!file_exists($cache_file)) {
   file_put_contents($cache_file, trim($matches[1]));
} else {
   $cache_product = file_get_contents($cache_file);

   if($cache_product == trim($matches[1])) {
      exit();
   } else {
      file_put_contents($cache_file, trim($matches[1]));
   }
}

// search current product title with "watch list"
$send_mail = 0;
foreach($watch_list as $watch_item) {
   if(stripos($matches[1], $watch_item)) {
      $send_mail++;
   }
}

// send email
if($send_mail > 0) {
   $mail['to'] = '8015551212@txt.att.net';
   $mail['subject'] = trim($matches[1]);
   $mail['message'] = trim($matches[2]) . ' (' . trim($matches[3]) .
      ', ' . trim($matches[4]) . ')';
   $mail['from'] = 'Chainlove Alerts <user@example.com>';
   $mail['additional_headers'] = 'From: ' . $mail['from'];
   mail($mail['to'], $mail['subject'], $mail['message'], Â¬
      $mail['additional_headers']);
}
</pre>
