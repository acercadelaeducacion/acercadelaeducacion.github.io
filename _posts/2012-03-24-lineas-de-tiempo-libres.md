---
id: 1421
title: Líneas de tiempo libres
date: 2012-03-24T10:00:19+00:00
author: Alvar
layout: post
guid: http://www.acercadelaeducacion.com.ar/?p=1421
permalink: /2012/03/lineas-de-tiempo-libres/
dsq_thread_id:
  - "1821131808"
bitly_url:
  - http://bit.ly/1ZurNGH
bitly_hash:
  - 1ZurNGH
bitly_long_url:
  - http://www.acercadelaeducacion.com.ar/2012/03/lineas-de-tiempo-libres/
categories:
  - Cultura Libre
  - Destacados
  - Educación
tags:
  - Educación
  - Lineas de timepo
  - Recursos
  - Software Libre
---
Vía<a title="Twitter de Nico" href="http://twitter.com/nicopace" target="_blank"> @nicopace</a> nos llega una aplicación web diseñada por <a title="Verite" href="http://timeline.verite.co/" target="_blank">Verite</a> que nos permite hacer lineas de tiempo altamente funcionales, que nos permiten agregar video, sonido e imágenes desde la web.

La aplicación se puede instalar en cualquier servidor web, interno o público y para armar la línea sólo es necesario llenar una hoja de cálculo de google docs.

<a title="Línea de tiempo de ejemplo" href="http://www.acercadelaeducacion.com.ar/lineadetiempo/lineadetiempo.html" target="_blank">Este es un ejemplo de las cosas que se pueden hacer</a>

EL procedimiento para hacer tu línea de tiempo es realativamente sencillo:

1. Abrir el siguiente enlace, es el template de google docs, y cargar los datos para la línea de tiempo: <a title="Plantilla de carga de la Línea de Tiempo" href="https://docs.google.com/a/digitalartwork.net/previewtemplate?id=0AppSVxABhnltdEhzQjQ4MlpOaldjTmZLclQxQWFTOUE&amp;mode=public" target="_blank">Plantilla de carga</a>

2. Publicar la hoja de cálculo y copiar el enlace público

1. Armar un archivo html con el siguiente contenido. Pegar en la sección timeline.init la dirección de publicación de la hoja de cálculo

&nbsp;
<pre class="brush:xml">&lt;!DOCTYPE html&gt;
&lt;html lang="en"&gt;
	&lt;head&gt;
		&lt;title&gt;Timeline - Kitchen Sink&lt;/title&gt;

		&lt;!-- CSS --&gt;
		&lt;link href="http://veritetimeline.appspot.com/latest/timeline.css" rel="stylesheet"&gt;
		&lt;!-- JavaScript --&gt;
		&lt;script type="text/javascript" src="http://veritetimeline.appspot.com/latest/jquery-min.js"&gt;&lt;/script&gt;
		&lt;script type="text/javascript" src="http://veritetimeline.appspot.com/latest/timeline-min.js"&gt;&lt;/script&gt;
		&lt;script type="text/javascript"&gt;
			$(document).ready(function() {
				timeline = new VMM.Timeline();
				timeline.init("Acá va la dirección de publicación web de tu hoja de cálculo");
			});
		&lt;/script&gt;
	&lt;/head&gt;
	&lt;body&gt;
			&lt;div id="timeline"&gt;&lt;/div&gt;
	&lt;/body&gt;
&lt;/html&gt;</pre>
3. Subir el html a al sitio

4. Listo

Tienen mucha más información en el sitio de los desarrolladores, entre otras cosas, está el código fuente y se puede armar el html sin apuntando a recursos personalizados.

Más Información |<a title="Página de la línea de tiempo" href="http://timeline.verite.co/" target="_blank"> http://timeline.verite.co/</a>

Imagen| '<a href="http://www.flickr.com/photos/73645804@N00/2407216495">see you next year</a>'
<p style="text-align: center;"><a href="http://www.flickr.com/photos/wwworks/2407216495/"><img class="aligncenter" src="http://farm4.staticflickr.com/3231/2407216495_f670915b54.jpg" alt="" width="500" height="333" /></a></p>
&nbsp;