---
layout: post
status: publish
published: true
title: 'JavaScript: How to use it without abusing it'
author: macnewbold
author_login: mac
author_email: mac@macnewbold.com
author_url: http://www.vivint.com/
wordpress_id: 126
wordpress_url: http://phlyte.uphpu.org/?p=126
date: '2005-02-25 17:25:22 -0600'
date_gmt: '2005-02-25 23:25:22 -0600'
categories:
- Articles
tags: []
---
<p><i>"Javascript is one of very few languages that is used less often than it is abused." &mdash; mac newbold</i></p>
<p><a href="http://uphpu.org/pipermail/uphpu/2005-February/thread.html">A recent discussion on the mailing list (subject: "RE: Javascript form validation [was Re: Posting a form]")</a> prompted me to post an article about JavaScript, and how to use it appropriately. I'm not a JavaScript expert, and I don't play one on TV. But I am versed in it and have seen a lot of good and bad things done with it. My main goal in sharing my thoughts on the subject is to help people know when and how JavaScript is the right answer, and make the world a better place. If  talking about things like this can open a dialogue, that would be great, and we can get the word out to help stop people from falling into the trap. Newbies especially can benefit by finding out about the problems before they get into bad habits.</p>
<p>One of my biggest issues with the way people use Javascript is when they use it for validating form input. It  is one aspect of the problem of using client side programming for things that can only effectively be done on the server side.</p>
<p>Because Javascript is run on the clientside, it is not guaranteed in any way to be run. It is insecure. It can be faked, skipped, avoided, disabled, and any number of other undesirable things. Search engines don't run any of it either, though that doesn't have much to do with form validation in particular. People can even make a form like yours, but without the javascript, and submit <i>that</i> instead of your form.</p>
<p>Before I go further, let me say that client side validation (and other client-side functionality) has its place. In many cases, it can make the user experience better by providing faster response than submitting the form to the server, and it can do things that the programmer thinks are helpful, like updating other fields as values are selected or entered. (Another pitfall is the programmer doing things that they think are helpful, without any consideration for the users that find the same thing very <i>un</i>helpful, and weren't given a way to disable the behavior, but that's an article for another day)</p>
<p><b>However, because it can be easily bypassed, it is of absolutely no use for guaranteeing that the form submission meets certain criteria.</b> The only place that can be done is on the server side, where the programmer has complete control over the data and the validation performed on it.</p>
<p>I've seen horrific things in this regard. One in particular that makes me cringe is when I saw a site that used Javascript to calculate the amount a credit card would be charged, and the server side blindly accepted whatever the javascript told it, and billed the card that amount, and considered the bill paid in full. Another javascript abuse I saw used a form that did not have a valid action, so the form didn't have anywhere to submit to, and by means of javascript, validated things and proceeded to (incorrectly) fashion a GET string, then set the page's location to that string. I've seen others that do a pretty good job in the javascript of validating things, but when the page was submitted, did absolutely no validation on the server side. To make matters worse, I saw all three things on the same site, one that I did not write, but which I was hired to debug, repair, and complete. I've seen most of those things in plenty of other places too, at least the client side mistakes.</p>
<p>Another thing to keep in mind is that if your site will not work with javascript disabled, you are closing out a significant portion of your potential users. And I'm not just talking about the wierdos (I say that affectionately) who use Lynx for normal browsing. In the worst case, you're locking Google, Yahoo, MSN, and the other search engines out of your site. (If that doesn't matter to you, it probably should.)</p>
<p><b>Every site should be functional and usable (at least) without javascript.</b> If it has more bells and whistles with javascript, fine. <i>But it should still work without it.</i></p>
<p>A statistic I found recently stated that a significant number (I heard about 10%, but others dispute that, saying that it is 5% or less) of users have javascript completely or partially disabled in their webbrowsers. And no, that isn't one of the 93.61% of statistics that get made up on the spot.</p>
<p>I hope this isn't perceived as a rant, diatribe, or flame.I'm just trying to help people not to make the same mistake that so many people have already made (and in many cases, are still making).</p>
<p>As my final plea, <i>please</i> don't depend on javascript for validation. Use it if you like, but back it up with all the same (or better) validation on the server side. It will make you much happier.</p>
<p>-- Mac Newbold</p>
