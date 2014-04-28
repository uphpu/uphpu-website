---
layout: post
status: publish
published: true
title: 'Product Review: DBVisualizer 7'
author: thebigdog
author_login: bigdog
author_email: bigdog@venticon.com
author_url: http://torosys.com
excerpt: 'I finally got my hands on a copy of the DBVisualizer. I have been ready
  to try version 7 out for a long time. It has some new features that I am really
  excited to try out. I have not used the product since version 5; yet, there are
  some killer things that I wanted to try out. I have been looking for a db tool that
  has some great Object management, searching and Graphing capabilities. '
wordpress_id: 651
wordpress_url: http://uphpu.org/?p=651
date: '2010-02-23 19:56:46 -0600'
date_gmt: '2010-02-24 01:56:46 -0600'
categories:
- Reviews
tags:
- mysql
- Reviews
- database
- dbvisualizer
- postgresql
- sqlite
---
<p>I finally got my hands on a copy of the DBVisualizer. I have been ready to try version 7 out for a long time. It has some new features that I am really excited to try out. I have not used the product since version 5; yet, there are some killer things that I wanted to try out. I have been looking for a db tool that has some great Object management, searching and Graphing capabilities. </p>
<p>First, let me talk a little about what has prompted me to get my hands on this great tool. DBVisualizer is a database tool that is written in Java and can run on various platforms; meaning I can run it on windows, linux and mac â€“ and I do. It is fantastic to have a tool that I can run on all three and use it daily for all my database development. I do a lot of database development with a few different databases. As I work on mulitple databases, I find it difficult to move between different tools to perform similar tasks. Currently, I am working with the following databases: Oracle, MySQL, PostgreSQL and Sqlite. I do, every once in a while, access MS SQL Server and DB2. It is rare, but the occasion does arise. What I find frustrating is to have tools for each one or running stuff on the command line all the time. Don't get me wrong, I love the command line, yet I do my job is a lot easier when I have one tool to handle all the different databases that I work with on a daily basis. For this reason, I have been eager to give DBVisualizer a spin.</p>
<p>When I first started up DBVisualizer it was great to have database drivers already configured for me. That was one of the issues with previous version that they did not come with some preconfigured drivers that would allow me to get my database connections up and going. It was very easy to get MySQL, PostgreSQL, and SQLite up and running. I did have to get Oracle configured (that might be an issue with Oracle that it does not come pre-configured due to restrictions on the bundling the driver with the product). Either way I got it installed and configured. </p>
<p>One new feature that I throughly enjoy is the concept of profiles for each database type. For example, there is a profile for MySQL, PostgreSQL and SQLite. This allows me to custom tailer my connections for my database types or I can have it use the auto detection to decide which one to use. I wish I had all the time to go into the other options that can be configured with the connection. There are setting for the type of connection with regards to the type of database I am working with: development, test, or production. I can also configure any JDBC options as well. The connection hooks come in handy for anything that I need to run right when the connection is made and when the connection is going to be disconnected. There are tons of other configuration items; you just have to check it out for yourself.</p>
<p>I really like the additional of folders in the Database Tab. This has allowed me to organize my databases into folders and groups. I like to put all my database types in a specific folder. The Scripts Tab has really been useful for storing all my scripts that I tend to run over and over again. The Favorites Toolbar is a great addition for all my databases that I constantly access throughout the day.<br />
For some the Query Builder might be a one feature that is amazing. For me, I am not a big fan of the Query Builder; it is there for the using and it works great. For some, this might be just the thing that you need for your database development work. </p>
<p>Another great feature that I have come to enjoy is the References Graph that can generate a graph based on the references between your tables. This has really helped me out to see a representation of the database in a nice simple graph, which I can then export or print.</p>
<p>Sometimes as I am designing the database I need to do many different administrative tasks on the databases. DBVisualizer offers various actions that allow me to perform these tasks and they are accessed at different levels depending on the database object type that I am working with. These actions have really saved me time exporting and restoring a database.</p>
<p>Another new feature that I wanted to check out was the Procedure Editor. I tried it out on creating some MySQL procedures and only felt that it lacked in the debugging of a procedure. That is it! It provides a clean and intuitive interface for creating functions and procedures. It is fantastic to use the same tool for creating functions and stored procedures in different databases. Then I was able to execute that code and test it out. I wish that it had line by line debugging of the procedure as that would save me some time and effort of some of the code that I was writing.</p>
<p>Overall, I have been very impressed with DBVisualizer. The product is clean, stable and allows me to accomplish my tasks regardless of the database that I am connected with. There are a few items that I would love to see added to the product. Namely procedure debugging and integration with a content repository system like svn, cvs and or git. I have some projects that are database ones and it would be nice to work with them as a project instead of just opening files up and running the contents. Since this is a java based project and it uses JDBC drives, I would love to see some integration with some of the new cloud databases like CouchDB or some of the new ones coming out. That might already be in the works for the next version; just a thought.</p>
