---
layout: post
status: publish
published: true
title: Hi I have created a soap server which re...
author: wajidakhterabbasi
author_login: wajidakhterabbasi
author_email: wajidakhterabbasi@hotmail.com
wordpress_id: 1010
wordpress_url: http://uphpu.org/2011/09/06/hi-i-have-created-a-soap-server-which-re/
date: '2011-09-06 17:45:55 -0500'
date_gmt: '2011-09-06 23:45:55 -0500'
categories:
- status
tags: []
---
<p>Hi<br />
I have created a soap server which resides in my local host folder but whenever I tried to connect to it it gave me and error the error is </p>
<p>Fatal error: Uncaught SoapFault exception: [HTTP] Unable to parse URL in D:\xampp\htdocs\Johansans Guides\client.php:11 Stack trace: #0 [internal function]: SoapClient-&gt;__doRequest('__soapCall('helloWorld', Array) #2 {main} thrown in D:\xampp\htdocs\Johansans Guides\client.php on line 11</p>
<p>the server code is</p>
<p> "urn://http:/www.wstutorial.com/"));<br />
$server-&gt;addFunction("helloWorld");<br />
if ($_SERVER["REQUEST_METHOD"] == "POST")<br />
{<br />
  $server-&gt;handle();<br />
}<br />
else </p>
<p>{<br />
 echo "This SOAP Server Example can handle following functions:";</p>
<p> $functions = $server-&gt;getFunctions();</p>
<p> foreach($functions as $func) {<br />
  echo $func ;<br />
 }<br />
}</p>
<p>function helloWorld($buddy) {<br />
   return "Welcome to the world, " . $buddy . "!";<br />
}</p>
<p>?&gt;</p>
<p>While the client side code is </p>
<p> "localhost/Johansans Guides/soapserver1.php?WSDL",<br />
      'uri'      =&gt; "urn://www.wstutorial.com/",<br />
      'trace'    =&gt; 1 ));</p>
<p>   $return = $client-&gt;__soapCall("helloWorld",array("Tommy"));<br />
   echo $return;<br />
?&gt;</p>
<p>I am just wondering as what the problem may be can someone please help me. I haven't created any wsdl file for the server at all.</p>
