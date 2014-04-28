---
layout: post
status: publish
published: true
title: zebra striping across rowspans with jQuery
author: wade
author_login: wade
author_email: wade@anavidesign.com
author_url: http://wadeshearer.com
wordpress_id: 408
wordpress_url: http://uphpu.org/?p=408
date: '2008-12-13 10:46:27 -0600'
date_gmt: '2008-12-13 16:46:27 -0600'
categories:
- Code
tags: []
comments: []
---
<p>On one of my current projects, I am adding alternating shading ("zebra striping") to rows in a table with javascript. This last week I encountered a scenario where I needed this to work on a table that had some cells that spanned multiple rows.</p>
<p>My current script could not handle this as it was using jQuery's <a href="http://docs.jquery.com/Selectors/odd">:odd</a> selector and I now needed to stripe all of the spanned rows together instead of just every other one. The additional shading that I was applying when hovering over the row was also broken as it too needed to shade all of the spanned rows instead of just the one the mouse was over.</p>
<p>So, I enhanced my script to work with both scenarios. I hope it can be of use to someone.</p>
<pre lang="php">
// check for rowspans
rows = $('.datatable > tbody > tr:first > td:first').attr('rowspan');
var rows_count = rows * 1;

// if, shade spanned rows; else, shade for every other row
if(rows_count > 1) {
   // find the row group leader
   function rgl(who) {
      var current = who;
      
      for(i = 0; i < rows_count; i++) {
         if($(current).find('td:first').attr('rowspan') > 1) {
            var rgl = current;
            break;
         }
         
         current = $(current).prev('tr');
      }
      
      return rgl;
   }

   // row shading
   for(r = 1; r <= rows_count; r++) {
      var nth = (rows_count * 2) + 'n+' + (rows_count + r);
      $('.datatable > tbody > tr:nth-child(' + nth + ')').addClass('odd');
   }
   
   // row hover shading
   $('.datatable > tbody > tr').hover(
      function() {
         var who = rgl(this);
         for(i = 0; i < rows_count; i++) {
            $(who).find('td').toggleClass('hover');
            who = $(who).next('tr');
         }
      },
      function() {
         var who = rgl(this);
         for(i = 0; i < rows_count; i++) {
            $(who).find('td').toggleClass('hover');
            who = $(who).next('tr');
         }
      }
   );
} else {
   $('.datatable > tbody > tr:odd').addClass('odd');
}
</pre>
