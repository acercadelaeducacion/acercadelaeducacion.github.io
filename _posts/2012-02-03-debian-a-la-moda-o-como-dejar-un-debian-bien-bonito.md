---
id: 1313
title: Debian a la moda. O como dejar un debian bien bonito
date: 2012-02-03T13:23:47+00:00
author: Alvar
layout: post
guid: http://www.acercadelaeducacion.com.ar/?p=1313
permalink: /2012/02/debian-a-la-moda-o-como-dejar-un-debian-bien-bonito/
dsq_thread_id:
  - "1814502178"
bitly_url:
  - http://bit.ly/1NQVVVl
bitly_hash:
  - 1NQVVVl
bitly_long_url:
  - http://www.acercadelaeducacion.com.ar/2012/02/debian-a-la-moda-o-como-dejar-un-debian-bien-bonito/
image: /wp-content/uploads/2012/02/andamios.jpg
categories:
  - Cultura Libre
  - Destacados
  - microblog
tags:
  - Cultura Libre
  - Debian
  - Recursos
  - Software Libre
---
Después del <a title="Script de post instalación para Fedora 16" href="http://www.acercadelaeducacion.com.ar/2012/01/24/script-de-post-instalacion-para-fedora-16/">post anterior</a> sobre <strong><a title="Mapas mentales con Dokeos|Sobre spins con Fedora" href="http://fedoraproject.org/es/">Fedora</a></strong>, y para equiparar fuerzas, acá va un pequeño tutorial que de no ser por <a href="http://twitter.com/xaiki">@xaiki</a> no hubiese podido llevar a cabo. La idea es tener, al final del tuto, un <strong><a href="http://debian.org">Debian</a></strong> con <strong><a href="http://www.gnome.org/gnome-3/">Gnome 3</a></strong> y estable. De hecho es desde lo que estoy armando este post.

Paso 1: Instalar Debian. Yo instalé Debian wheezy que es la versión "testing" del momento

Paso 2: Modificar los repositorios:

En este caso los dejé así, ya que me pienso meter en el tema de mantenimiento de paquetes.
<pre class="brush:shell"># deb cdrom:[Debian GNU/Linux testing _Wheezy_ - Official Snapshot i386 CD Binary-1 20120116-04:00]/ wheezy main

# deb cdrom:[Debian GNU/Linux testing _Wheezy_ - Official Snapshot i386 CD Binary-1 20120116-04:00]/ wheezy main

deb http://ftp.us.debian.org/debian/ sid main contrib non-free
deb-src http://ftp.us.debian.org/debian/ sid main contrib non-free 

deb http://ftp.us.debian.org/debian/ testing main contrib non-free
deb-src http://ftp.us.debian.org/debian/ testing main contrib non-free 

deb http://emacs.naquadah.org/ unstable/
deb-src http://emacs.naquadah.org/ unstable/

#deb http://security.debian.org/ wheezy/updates sid contrib non-free
#deb-src http://security.debian.org/ wheezy/updates sid contrib non-free
#rama experimetal
#deb http://ftp.debian.org/debian/ experimental main
#deb-src http://ftp.debian.org/debian/ experimental main</pre>
Paso 3: hacer update y upgrade
<pre class="brush:shell">sudo aptitude update ; sudo aptitude upgrade</pre>
Paso 4: instalar algunas cositas que nos harán la vida más fácil:
<pre class="brush:shell">sudo aptitude install gimp gparted vlc chromium-browser clementine guake emacs emacs-snapshot libfaad2 libmp4v2-1 libfaac0 alsamixergui lame libmp3lame0 libdvdnav4 libdvdread4 libdvdcss2 w32codecs  avifile-divx-plugin ffmpeg flashplugin-nonfree flashplugin-nonfree-extrasound</pre>
paso 5: Instalar algunas extensiones de Gnome 3 que ayudan y embellecen el sistema. Usando Iceweasel entrar a <a href="https://extensions.gnome.org/">https://extensions.gnome.org/</a> y elegir la extensión que más les pazca. yo por ahora uso: Extension Alternative Menu Status, para que aparezcan las opciones e apagado del menú. Extension native Windows Placement, para que se ubiquen mejor las ventanas y Extension Alternate tab, para que el ALT+TAB funcione sin agrupación de ventanas