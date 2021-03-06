---
id: 1966
title: 'Localization Models | Workflow with Github and Transifex | #WebLitStd'
date: 2013-03-23T17:31:00+00:00
author: Alvar
excerpt: Abstract de porcesos en la traducción de objetos relacionados a Webmakers y WebLItStd
layout: post
guid: http://www.acercadelaeducacion.com.ar/?p=1966
permalink: /2013/03/localization-models-workflow-with-github-and-transifex-weblitstd/
dsq_thread_id:
  - "1805209825"
bitly_url:
  - http://bit.ly/1ZugBd3
bitly_hash:
  - 1ZugBd3
bitly_long_url:
  - http://www.acercadelaeducacion.com.ar/2013/03/localization-models-workflow-with-github-and-transifex-weblitstd/
image: /wp-content/uploads/2013/03/wpid-MozillaLearningResources.png
categories:
  - Cultura Libre
  - Destacados
  - Educación
  - emacs
  - Mozilla
  - org2blog
  - Webmaker
tags:
  - Localization
  - Recursos
  - Traducciones
---
<div class="outline-2" id="outline-container-1">
<h2>Introducción</h2>
<div class="outline-text-2" id="text-1">

La iniciativa de Mozilla para que todos y todas tengamos acceso a la posibilidad de participar activamente en la construcción de la Web se compone de un ecosistema con múltiples objetos que interactúan en diversos niveles. Esta complejidad inherente a la magnitud del proyecto hace que la aproximación al mismo sea también compleja, complejidad que se agudiza dado que toda la documentación, herramientas y recursos están en inglés. Para que la iniciativa tome un verdadero marco global es necesario traducir estos objetos en función de que los esfuerzos orientados a la creación de Nuevos Estándares en Alfabetización Web sean realmente Abiertos. Si sólo participan de estos esfuerzos angloparlantes o académicos bilingües se deja de lado a la población que en efecto lleva a cabo esta tarea: los educadores.

&nbsp;

<!--more-->

&nbsp;

Dentro del ecosistema Webmakers existen tres clases de objetos constitutivos con respectivos elementos que las caracterizan. Estos objetos interactúan entre sí dando a lugar a una inmensa base de conocimiento.
<ul>
	<li>Herramientas:
<ul>
	<li>Thimble</li>
	<li>Popcorn</li>
	<li>X-Ray</li>
</ul>
</li>
	<li>Documentación
<ul>
	<li>Wiki</li>
	<li>Etherpad</li>
	<li>Community Calls</li>
	<li>Hacktivity Kits</li>
</ul>
</li>
	<li>Proyectos
<ul>
	<li>Thimble</li>
	<li>Popcorn</li>
	<li>X-Ray</li>
</ul>
</li>
</ul>
<img alt="MozillaLearningResources.png" src="http://www.acercadelaeducacion.com.ar/wp-content/uploads/2013/03/wpid-MozillaLearningResources.png" />

Estas tres clases de objetos tienen características propias que hacen difícil homologar un mismo proceso de traducción. En los siguientes gráficos se muestran dos modalidades de traducción, una usando github + po4a y la otra usando transifex. Los objetos más importantes a la hora de convocar a los educadores son la documentación y los proyectos. Este es un intento de mostrar de forma gráfica los procesos involucrados en la localización, están armados en forma de diagrama de actividades para que se visualicen los pasos involucrados. Creo que es momento de buscar la forma más económica para que a las traducciones se sume la mayor cantidad de gente.

</div>
<div class="outline-3" id="outline-container-1-1">
<h3 id="sec-1-1">Caso 1: Wiki</h3>
<div class="outline-text-3" id="text-1-1">

Las páginas de la wiki son convertidas a MarkDown para que po4a las pueda convertir a archivos .pot

</div>
<div class="outline-4" id="outline-container-1-1-1">
<h4 id="sec-1-1-1">Modelo Github</h4>
<div class="outline-text-4" id="text-1-1-1">

<img alt="Wiki2GithubActDiagram.png" src="http://www.acercadelaeducacion.com.ar/wp-content/uploads/2013/03/wpid-Wiki2GithubActDiagram.png" />

</div>
</div>
<div class="outline-4" id="outline-container-1-1-2">
<h4 id="sec-1-1-2">Modelo Transifex</h4>
<div class="outline-text-4" id="text-1-1-2">

<img alt="Wiki2transifexDiagram.png" src="http://www.acercadelaeducacion.com.ar/wp-content/uploads/2013/03/wpid-Wiki2transifexDiagram.png" />

</div>
</div>
</div>
<div class="outline-3" id="outline-container-1-2">
<h3 id="sec-1-2">Caso 2: Proyectos</h3>
<div class="outline-text-3" id="text-1-2">

Los proyectos están en formato HTML y convergen en él información del proyecto en si mismo (comentarios) y propiedades que son ejecutadas desde Thimble (ayudas). En este caso me centraré en el html del proyecto ya que las ayudas están siendo traducidas en transifex. Las páginas html de los proyectos en thimble tienen valor por sus comentarios. Sin embargo,  tanto transifex como po4a no extraen las cadenas de comentarios para la traducción. La opción menos prolija pero más viable, es convertir los archivos html a txt y traducir toda la cadena obviando las etiquetas y los caracteres de inicio de comentarios.

</div>
<div class="outline-4" id="outline-container-1-2-1">
<h4 id="sec-1-2-1">Modelo Github</h4>
<div class="outline-text-4" id="text-1-2-1">

<img alt="project2GithubActDiagram.png" src="http://www.acercadelaeducacion.com.ar/wp-content/uploads/2013/03/wpid-project2GithubActDiagram.png" />

</div>
</div>
<div class="outline-4" id="outline-container-1-2-2">
<h4 id="sec-1-2-2">Modelo Transifex</h4>
<div class="outline-text-4" id="text-1-2-2">

<img alt="Proyectos2transifexDiagram.png" src="http://www.acercadelaeducacion.com.ar/wp-content/uploads/2013/03/wpid-Proyectos2transifexDiagram.png" />

</div>
</div>
</div>
</div>