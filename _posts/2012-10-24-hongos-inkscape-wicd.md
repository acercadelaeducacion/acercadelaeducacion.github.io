---
id: 1757
title: Hongos | Inkscape | wicd
date: 2012-10-24T23:28:19+00:00
author: Alvar
layout: post
guid: http://www.acercadelaeducacion.com.ar/?p=1757
permalink: /2012/10/hongos-inkscape-wicd/
dsq_thread_id:
  - "1826719292"
bitly_url:
  - http://bit.ly/1Zusyzn
bitly_hash:
  - 1Zusyzn
bitly_long_url:
  - http://www.acercadelaeducacion.com.ar/2012/10/hongos-inkscape-wicd/
image: /wp-content/uploads/2012/10/g3020.png
categories:
  - Cultura Libre
  - Destacados
tags:
  - Hongos
  - Inkscape
  - Red
  - Software Libre
---
Tres cosas que aprendí hoy:
<h2>La importancia de llamarme Hongos</h2>
Lejos de pensar que sólo sirven para envenenar, pudrir o alucinar. Sino que también sirven para mejorar el ambiente.

<iframe src="http://embed.ted.com/talks/lang/es/paul_stamets_on_6_ways_mushrooms_can_save_the_world.html" frameborder="0" scrolling="no" width="560" height="315"></iframe>

&nbsp;
<h2>Aprendiendo a dibujar un Cohete</h2>
Si bien el tutorial no es sencillo. Al final pude hacer el cohete casi como en el ejemplo

<a title="Cómo crear un cohete con Inkscape" href="http://rogercv.wordpress.com/2012/02/09/como-crear-un-cohete-de-dibujos-animados-con-inkscape/" target="_blank">Como crear un cohete con Inkscape</a>

<a href="http://www.acercadelaeducacion.com.ar/2012/10/24/hongos-inkscape-wicd/g3020/" rel="attachment wp-att-1759"><img class="alignnone size-medium wp-image-1759" title="Cohete" src="http://www.acercadelaeducacion.com.ar/wp-content/uploads/2012/10/g3020-201x300.png" alt="Mi cohete en inkscape" width="201" height="300" /></a>
<h2>Como instalar <strong>WICD</strong> en Fedora 16</h2>
En algunas máquinas el <strong>NetworkMannager</strong> no anda muy bien, en esos casos instalo <strong><a title="Página de WICD" href="http://wicd.sourceforge.net/" target="_blank">wicd</a></strong> y todo marcha.
<pre class="brush:shell">#Instalamos wicd
sudo yum install wicd wicd-gtk beesu

#Desactivamos NetworkManager
sudo service NetworkManager stop
sudo chkconfig NetworkManager off
#activamos wicd
sudo chkconfig wicd on
#reboot
sudo shutdown -r now</pre>