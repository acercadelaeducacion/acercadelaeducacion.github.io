---
id: 1061
title: Sugar | ¿Qué es? | ¿Cómo Instalarlo?
date: 2011-04-30T12:21:29+00:00
author: Alvar
layout: post
guid: http://www.acercadelaeducacion.com.ar/?p=1061
permalink: '/2011/04/sugar-%c2%bfque-es-%c2%bfcomo-instalarlo/'
aktt_tweeted:
  - "1"
dsq_thread_id:
  - "1898378424"
bitly_url:
  - http://bit.ly/1NQTWAc
bitly_hash:
  - 1NQTWAc
bitly_long_url:
  - 'http://www.acercadelaeducacion.com.ar/2011/04/sugar-%c2%bfque-es-%c2%bfcomo-instalarlo/'
image: /wp-content/uploads/2011/04/Sugar.png
categories:
  - Cultura Libre
  - Educación
tags:
  - Debian
  - dosis
  - Educación
  - Recursos
  - Software Libre
  - Sugar
  - Trisquel
  - Tuquito
  - ubuntu
---
<a title="EduJam 2011 | Evento sobre sugar en Uruguay. Allá Vamos" href="http://www.acercadelaeducacion.com.ar/2011/04/30/edujam-2011-evento-sobre-sugar-en-uruguay-alla-vamos/">Estuve hablando y contando sobre sugar en el post pasado</a>. Pero no aclaré que es lo que era. Este documento resume qué es y aclara para qué se usa.

Pero cabe aclarar antes que además de pensarlo como un entorno de construcción y aprendizaje para niños. Sugar es una activa comunidad de desarrolladores y docentes que trabaja para aportar desde el <a href="http://es.wikipedia.org/wiki/Software_libre"><strong>Software Libre</strong></a> recursos para ser utilizados en función de la creación y la colaboración.

Sin Más: <strong><a title="Documento sobre sugar" href="https://docs.google.com/document/pub?id=1zdLKAf_dQji2tUYzaD6T1HEz1y0VIYMRG7dboXHMFXw">breve documento sobre sugar</a></strong>

y

<strong><a title="Página de SugarLabs Argentina" href="http://ar.sugarlabs.org">El capítulo local de sugarlabs</a></strong>. con más información

Ahora bien, los usuarios de <strong><a title="Página de Debian" href="http://debian.org">Debian</a></strong>, <a title="Página de Tuquito" href="http://tuquito.org.ar"><strong>Tuquito</strong></a> o <strong><a title="Página de Ubuntu" href="http://ubuntu.com" target="_blank">Ubuntu</a></strong>. nos encontramos con el problema de que sugar está desarrollado para <a title="Página de Fedora" href="http://fedoraproject.org/es/" target="_blank">Fedora</a>. No obstante hay iniciativas que derivaron en el empaquetamiento de Sugar, pueden hacer:
<pre class="brush:shell">sudo aptitude search sugar</pre>
y ver los paquetes para instalarlo en nuestros sistemas. <a title="Como instalar sweets (sugar by Trisquel)" href="http://ar.sugarlabs.org/go/Tuquito%2BSugar">También existe un repositorio para Trisquel que funciona muy bien</a>.

El problema de ambos procedimientos es que o bien la actividad Browse (navegador) no funciona, o bien tenemos que conformarnos con una versión antigua del sugar. Para evitar esto, la solución es compilar el sugar en nuestras adoradas máquinas. No es un trabajo simple, para eso. Les dejo dos scripts para compilar sugar en Debian o instalar Sugar en Ubuntu/Tuquito.

Estos script resuelven las dependencias, y además descargan de mi sitio los archivos necesarios para que quede bonito en nuestro gnome y tengamos la opción de iniciar una sesión con sugar en full screen
<h3>Script para compilar Sugar en Tuquito/Ubuntu</h3>
<pre class="brush:shell">#!/bin/bash
#GLOBAL VARS
SUGAR_DIR=/usr/share/tuquito

#Script de instalación de Sugar en Tuquito 4.1

if [ -d $SUGAR_DIR ]; then
	cd $SUGAR_DIR
else
	sudo mkdir $SUGAR_DIR; cd $SUGAR_DIR
fi
##Actualizando##
sudo aptitude update
sudo aptitude -y upgrade
sudo aptitude install -y git jhbuild
cd $SUGAR_DIR
sudo git clone git://git.sugarlabs.org/sugar-jhbuild/mainline.git sugar-jhbuild
sudo chmod 777 $SUGAR_DIR/sugar-jhbuild -R
###Aplicar Parche####
echo "Aplicando parche..."
cd $SUGAR_DIR/sugar-jhbuild
wget http://acercadelaeducacion.com.ar/scripts/0001-adding-support-for-Tuquito-GNU-Linux-distribution.patch
sudo chmod 0644 0001-adding-support-for-Tuquito-GNU-Linux-distribution.patch
git apply 0001-adding-support-for-Tuquito-GNU-Linux-distribution.patch
rm 0001-adding-support-for-Tuquito-GNU-Linux-distribution.patch
###Instalar las dependencias para compilar###
echo "Instalando Dependencias para compilar"
sudo aptitude install -y libgtk2.0-dev libdbus-glib-1-dev libxml2-dev libpopt-dev python-dev libtool intltool python-gconf python-gnome2-dev python2.7-dev python-gtk2-dev python-gnome2-dev libgnome-desktop-dev libgnomecups1.0-dev libwnck-dev librsvg2-dev gtk-doc-tools libtelepathy-glib-dev libasound2-dev icon-slicer  xulrunner-dev libcroco3-dev libtelepathy-glib-dev icon-naming-utils shtool libgconf2-dev abiword espeak espeak-data libabiword-2.8-dev libtelepathy-glib0 libdbus-glib-1-dev metacity pep8 pylint python-abiword python-evince python-rsvg python-telepathy python-wnck python-xklavier telepathy-gabble telepathy-salut xulrunner-1.9.2 python-lxml python-beautifulsoup
###Instalar dependencias sugar
echo "Instalando dependencias de sugar"
cd $SUGAR_DIR/sugar-jhbuild
./sugar-jhbuild depscheck -s | sudo xargs aptitude -y install
###Instalar python_xpcom.deb###
echo "Instalando python_xpcom.deb"
wget http://acercadelaeducacion.com.ar/scripts/python_xpcom.deb
sudo dpkg -i python_xpcom.deb
rm -rf python_xpcom.deb
###Actualizando y compilando sugar###
echo "Actualizando y compilando sugar"
./sugar-jhbuild update
./sugar-jhbuild build
./sugar-jhbuild buildone squeak
./sugar-jhbuild buildone etoys
###Instalando en entorno###
echo "Instalando en el entorno"
echo "~/sugar-jhbuild/sugar-jhbuild run sugar-emulator" | sudo tee /usr/bin/sugar-desktop
echo "~/sugar-jhbuild/sugar-jhbuild run sugar-emulator --fullscreen"|sudo tee /usr/bin/sugar-session
sudo chmod +x /usr/bin/sugar-session
sudo chmod +x /usr/bin/sugar-desktop
sudo chmod 777 $SUGAR_DIR/sugar-jhbuild -R
cd $SUGAR_DIR/sugar-jhbuild/
wget http://acercadelaeducacion.com.ar/scripts/sugar.png
sudo mv sugar.png /usr/share/icons/sugar.png
wget http://acercadelaeducacion.com.ar/scripts/SUGAR.desktop
cp -f $SUGAR_DIR/sugar-jhbuild/SUGAR.desktop ~/Escritorio/
ln -s $SUGAR_DIR/sugar-jhbuild/ ~/sugar-jhbuild
sudo ln -s $SUGAR_DIR/sugar-jhbuild/ /etc/skel/sugar-jhbuild
wget http://acercadelaeducacion.com.ar/scripts/sugar.desktop
sudo mv sugar.desktop /usr/share/xsessions/
wget http://acercadelaeducacion.com.ar/scripts/sugar-menu.desktop
sudo mv sugar-menu.desktop /usr/share/applications/
sudo chmod 777 /usr/share/tuquito/sugar-jhbuild -R
clear
echo "Sugar instalado, para correrlo tipea en una terminal sugar-session"</pre>
<h3>Script para compilar Sugar en Debian</h3>
<pre class="brush:shell">#!/bin/bash
#GLOBAL VARS
SUGAR_DIR=/opt

#Script de instalación de Sugar en Debian

if [ -d $SUGAR_DIR ]; then
	cd $SUGAR_DIR
else
	sudo mkdir $SUGAR_DIR; cd $SUGAR_DIR
fi
##Actualizando##
sudo aptitude update
sudo aptitude -y upgrade
sudo aptitude install -y git jhbuild
###Instalar las dependencias para compilar###
echo "Instalando Dependencias para compilar"
sudo aptitude install -y libgtk2.0-dev libdbus-glib-1-dev libxml2-dev libpopt-dev python-dev libtool intltool python-gconf python-gnome2-dev  python-gtk2-dev python-gnome2-dev libgnome-desktop-dev libgnomecups1.0-dev libwnck-dev librsvg2-dev gtk-doc-tools libtelepathy-glib-dev libasound2-dev icon-slicer  xulrunner-dev libcroco3-dev libtelepathy-glib-dev icon-naming-utils shtool libgconf2-dev abiword espeak espeak-data libabiword-2.8-dev libtelepathy-glib0 libdbus-glib-1-dev metacity pep8 pylint python-abiword python-evince python-rsvg python-telepathy python-wnck python-xklavier telepathy-gabble telepathy-salut xulrunner-1.9.2 sqlite3 libsqlite3-dev libsoup2.4-dev libnice-dev libavahi-gobject-dev libavahi-client-dev python-decorator python-hippocanvas python-simplejson python-lxml python-beautifulsoup
###Clonando sugar###
cd $SUGAR_DIR
sudo git clone git://git.sugarlabs.org/sugar-jhbuild/mainline.git sugar-jhbuild
sudo chmod 777 $SUGAR_DIR/sugar-jhbuild -R
echo "Instalando dependencias de sugar"
cd $SUGAR_DIR/sugar-jhbuild
###Actualizando y compilando sugar###
echo "Actualizando y compilando sugar"
./sugar-jhbuild update
./sugar-jhbuild depscheck -s | sudo xargs aptitude -y install
./sugar-jhbuild build
./sugar-jhbuild buildone squeak
./sugar-jhbuild buildone etoys
###Instalando en entorno###
echo "Instalando en el entorno"
echo "~/sugar-jhbuild/sugar-jhbuild run sugar-emulator" | sudo tee /usr/bin/sugar-desktop
echo "~/sugar-jhbuild/sugar-jhbuild run sugar-emulator --fullscreen"|sudo tee /usr/bin/sugar-session
sudo chmod +x /usr/bin/sugar-session
sudo chmod +x /usr/bin/sugar-desktop
sudo chmod 777 /$SUGAR_DIR/sugar-jhbuild -R
cd $SUGAR_DIR/sugar-jhbuild/
wget http://acercadelaeducacion.com.ar/scripts/sugar.png
sudo mv sugar.png /usr/share/icons/sugar.png
wget http://acercadelaeducacion.com.ar/scripts/SUGAR.desktop
cp -f SUGAR.desktop ~/Escritorio
sudo ln -s $SUGAR_DIR/sugar-jhbuild/ /etc/skel/sugar-jhbuild
ln -s $SUGAR_DIR/sugar-jhbuild/ ~/sugar-jhbuild
wget http://acercadelaeducacion.com.ar/scripts/sugar.desktop
sudo mv sugar.desktop /usr/share/xsessions/
wget http://acercadelaeducacion.com.ar/scripts/sugar-menu.desktop
sudo mv sugar-menu.desktop /usr/share/applications/
sudo chmod 777 $SUGAR_DIR/sugar-jhbuild -R
clear
echo "Sugar instalado, para correrlo tipea en una terminal sugar-session"</pre>