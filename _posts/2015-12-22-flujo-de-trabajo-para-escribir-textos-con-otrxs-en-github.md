---
id: 2629
title: Flujo de trabajo para escribir textos con otrxs en GitHub
date: 2015-12-22T12:47:33+00:00
author: Alvar
layout: post
guid: http://www.acercadelaeducacion.com.ar/?p=2629
permalink: /2015/12/flujo-de-trabajo-para-escribir-textos-con-otrxs-en-github/
dsq_thread_id:
  - "4425541884"
bitly_url:
  - http://bit.ly/1ZugoGV
bitly_hash:
  - 1ZugoGV
bitly_long_url:
  - http://www.acercadelaeducacion.com.ar/2015/12/flujo-de-trabajo-para-escribir-textos-con-otrxs-en-github/
categories:
  - Cultura Libre
  - Educación
tags:
  - Educación
  - github
  - Recursos
  - textos
  - workflow
---
<img class="size-full wp-image-2509 aligncenter" src="http://www.acercadelaeducacion.com.ar/wp-content/uploads/2014/08/boss.gif" alt="boss" width="500" height="276" />

Pensando en cómo escribir con otros en [GitHub](https://github.com), buscando y buscando encontré esta [fuente de inspiración](http://www.madebyloren.com/github-for-writers)

## El procedimiento simplificado sería:

1. Abrir un repositorio nuevo con un archivo README.md en él estarían las instrucciones y el índice
2. Cada colaborador tendría que: sacarse una cuenta e informar para sumarlo al equipo
3. La primer tarea consistiría en hacer un aporte al README.md

## Algunas aclaraciones:

1. Un branch, una rama (Github usa como metáfora la estructura de los arboles) sería el tronco principal, (voy a usar el nombre en inglés  BRANCH)  llamado master esta rama es considerada *estable*
2. Las actualizaciones o modificaciones se hacen en ramas separadas de la rama  master
3. cuando una actualización está lista para ser mergeada (esto quiere decir mezclada con la rama estable master) se crea un "pull request" (pedido de subida a rama master)
4. El pull request es revisado por un miembro del grupo, marcando y trabajando en él los cambio que se tienen que hacer (rol de editor)
5. Cuando el pull request es aprobado, la rama que contiene los cambios es mezclada en la rama estable master.

## Esto en la práctica sería  así:

1. Alvar  escribe el README.md implementando la estructura básica y algunas cuestiones iniciales
2. Daniel  cliquea en un botón y crea una rama nueva con su propia versión del documento. No tiene que bajarse ningún archivo, ni crear copias ni renombrar nada. Github se hace cargo de esto. Daniel puede hacer todo los cambios que quiera sin preocuparse de estar modificando nada del documento principal. Daniel agrega nuevas secciones al índice, crea archivos nuevos para las nuevas partes del índice e incluso corrige algunos errores  que Alvar pasó por alto en el archivo README.md
3. Daniel considera que sus cambios están listos para ser mezclados (mergeados) en el documento principal, así que crea un pull request (haciendo un solo click)
4. GitHub notifica automáticamente al equipo que Daniel abrió un pull request
5. Cualquiera del equipo puede, rápidamente, ver exactamente que se ha cambiado. Línea a línea, palabra a palabra.
6. Alejandra ve el trabajo de Daniel y se da nota algunas cuestiones gramaticales, entonces se las anota en los comentarios del pull request de Daniel.
7. Daniel corige esos errores, Alejandra aprueba el pull request (de nuevo, con un solo click) y los cambios se mezclan en el documento principal.