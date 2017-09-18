---
id: 2199
title: 'Localization process using #Github &#038; #Transifex'
date: 2013-10-16T10:34:38+00:00
author: Alvar
layout: post
guid: http://www.acercadelaeducacion.com.ar/?p=2199
permalink: /2013/10/localization-process-using-github-transifex/
dsq_thread_id:
  - "1863902830"
bitly_url:
  - http://bit.ly/15ZZxld
bitly_hash:
  - 15ZZxld
bitly_long_url:
  - http://www.acercadelaeducacion.com.ar/2013/10/localization-process-using-github-transifex/
image: /wp-content/uploads/2013/09/github2transifex1.png
categories:
  - Cultura Libre
tags:
  - Hacks
  - Localization
  - tutoriales
---
<p style="text-align: center;"> <img class="size-full wp-image-2202 aligncenter" alt="github2transifex" src="http://www.acercadelaeducacion.com.ar/wp-content/uploads/2013/09/github2transifex1.png" width="540" height="134" /></p>
Hi to all
I have been refining the process to upload resources to <a title="Web page GitHub" href="http://github.com">GitHub</a> and connect the repositories to <a title="Web page Transifex" href="http://www.acercadelaeducacion.com.ar/2013/09/pajarito-callejero/">Transifex</a>

Source... a cookbok repo:

<a title="Cookbok repo" href="https://github.com/alvarmaciel/recetario">https://github.com/alvarmaciel/recetario</a>

Resource in Transifex page:

<a title="Web page Transifex" href="http://www.acercadelaeducacion.com.ar/2013/09/pajarito-callejero/">https://www.transifex.com/projects/p/cookbook/resources/</a>

<strong>The process</strong>
<ol>
	<li>Pull or clone the repositories</li>
	<li>Convert the source to a PO file. I make this with <a title="web page of po4a" href="http://po4a.alioth.debian.org/">Po4A</a>
<ol>
	<li>
<pre class="brush:shell"> po4a-gettextize -f Text -M utf-8 -m README.md  -p /language/README.pot</pre>
</li>
	<li>Rename the *.POT file to a XXX.lang.PO file . You should have to edit the header of the file... I don't do it ^_^</li>
</ol>
</li>
	<li>Commit and Push the changes to GitHub</li>
	<li>Create the project on Transifex or add a resource to an existing project</li>
	<li>Edit the resources and in the field "URL SOURCE FILE" add the link of the RAW file *.PO in github. In this case <a title="Link of RAW file" href="https://raw.github.com/alvarmaciel/recetario/master/languajes/README.en.po">https://raw.github.com/alvarmaciel/recetario/master/languajes/README.en.po</a></li>
</ol>
I hope this help to other to bring more documents to transifex and have the sources on Github