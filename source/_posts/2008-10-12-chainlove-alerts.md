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
comments:
- id: 20348
  author: thebigdog
  author_email: bigdog@venticon.com
  author_url: http://www.torosys.com
  date: '2008-10-19 17:38:39 -0500'
  date_gmt: '2008-10-19 23:38:39 -0500'
  content: nice job wade. have you thought about storing the data in a sqlite db so
    you can do some data analysis on it? like how often they actually change the data.
- id: 20349
  author: wade
  author_email: wade@anavidesign.com
  author_url: http://wadeshearer.com
  date: '2008-10-19 18:08:21 -0500'
  date_gmt: '2008-10-20 00:08:21 -0500'
  content: I hadn't thought of storing the data anything longer than the cache file.
    Tossing it in a SQLite database is a cool idea though. It would be very interesting
    to learn more about their system. For example, they do not always run a product
    until it is sold out; they appear to run it only as long as it's hot. As soon
    as units stop moving at a certain pace, they swap it out with something else.
    Although I don't know how automated it is. These products will often appear again
    later. I wonder if you would be able to start predicting patterns with enough
    data.
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
