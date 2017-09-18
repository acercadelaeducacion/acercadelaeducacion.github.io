---
id: 1304
title: Script de post instalación para Fedora 16
date: 2012-01-24T12:48:36+00:00
author: Alvar
layout: post
guid: http://www.acercadelaeducacion.com.ar/?p=1304
permalink: /2012/01/script-de-post-instalacion-para-fedora-16/
dsq_thread_id:
  - "1821750588"
bitly_url:
  - http://bit.ly/1YICYJp
bitly_hash:
  - 1YICYJp
bitly_long_url:
  - http://www.acercadelaeducacion.com.ar/2012/01/script-de-post-instalacion-para-fedora-16/
image: /wp-content/uploads/2012/01/Freedom4_2.png
categories:
  - Cultura Libre
  - Destacados
tags:
  - Cultura Libre
  - Destacadas
  - fedo
  - Recursos
  - Software Libre
---
<img class="aligncenter" src="http://fedoraproject.org/w/uploads/4/47/Fedora-button_plain-preview.png" alt="" width="200" height="200" />

A pedido de unos amigotes, les dejo acá el script de post instalación que estoy usando para las máquinas con<a href="http://fedoraproject.org/es/" target="_blank"><strong> Fedora 16</strong></a>. Este script agrega los repos Livna, Rpmfusion Adobe y Chromium

Aclaro, esta instalación incluye contenido no libre.

Lo único que tienen que hacer es instalar Fedora, copiar o bajarse el script y desde una terminal (y con permisos de root) ejecutar el archivo

<a href="http://www.acercadelaeducacion.com.ar/wp-content/uploads/2012/01/post_instalacion_fedora_16.sh_.tar.gz">post_instalacion_fedora_16</a>
<pre class="brush:shell">#!/bin/bash
##RPMFUSION##
yum localinstall --nogpgcheck http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-stable.noarch.rpm http://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-stable.noarch.rpm
## Adobe Repository 32-bit x86 ##
rpm -ivh http://linuxdownload.adobe.com/adobe-release/adobe-release-i386-1.0-1.noarch.rpm
rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-adobe-linux
#Livna
rpm -ivh http://rpm.livna.org/livna-release.rpm
#Chromium
wget http://repos.fedorapeople.org/repos/spot/chromium-stable/fedora-chromium-stable.repo
cp fedora-chromium-stable.repo /etc/yum.repos.d
#Actualización
yum update -y
##CODECS##
yum -y install gstreamer-plugins-bad gstreamer-plugins-bad-free-extras gstreamer-plugins-bad-nonfree gstreamer-plugins-ugly gstreamer-ffmpeg
#PACK de APP##
yum -y install --skip-broken audacity-freeworld gimp gparted sound-juicer clementine gwget vlc kdenlive firefox unrar p7zip p7zip-plugins java-1.6.0-openjdk ntfs-config kid3 java-1.6.0-openjdk-plugin btrfs-progs wget rfkill alsa-plugins-pulseaudio flash-plugin gnome-shell-extension-common bash-completion dconf-editor guake gnome-shell-extensions-alternative-status-menu gnome-shell-extensions-drive-menu gnome-shell-extensions-places-menu gnome-tweak-tool shutter sugar-emulator redhat-lsb chromium gnome-shell-extension-alternate-tab gnome-shell-extensions-common
##Pack office##
yum -y groupinstall "Oficina y Productividad"
##SUGAR##
yum -y groupinstall "Entorno de Escritorio Sugar"
##Fuentes de microsoft#
wget http://physics.bgu.ac.il/DOWNLOADS/RPMs/msttcorefonts-2.0-2.noarch.rpm
rpm -ivh msttcorefonts-2.0-2.noarch.rpm</pre>
&nbsp;