---
id: 1824
title: 'Hace tu cajita pirata y compartí todo en cualquier lado #PirateBox'
date: 2012-11-29T00:00:00+00:00
author: Alvar
layout: post
guid: http://www.acercadelaeducacion.com.ar/?p=1824
permalink: /2012/11/hace-tu-cajita-pirata-y-comparti-todo-en-cualquier-lado-piratebox/
dsq_thread_id:
  - "1812603429"
bitly_url:
  - http://bit.ly/1ZugoGI
bitly_hash:
  - 1ZugoGI
bitly_long_url:
  - http://www.acercadelaeducacion.com.ar/2012/11/hace-tu-cajita-pirata-y-comparti-todo-en-cualquier-lado-piratebox/
image: /wp-content/uploads/2012/11/wpid-piratebox-logo1.png
categories:
  - Cultura Libre
  - Destacados
  - microblog
tags:
  - Emacs
  - Hacks
  - org2blog
  - Software Libre
---
<img class="alignleft" src="http://www.acercadelaeducacion.com.ar/wp-content/uploads/2012/11/wpid-piratebox-logo1.png" alt="http://www.acercadelaeducacion.com.ar/wp-content/uploads/2012/11/wpid-piratebox-logo1.png" width="226" height="199" /> La <a href="http://wiki.daviddarts.com/PirateBox_DIY">caja pirata</a> es un dispositivo que te permite crear una red wifi por la cual es posible intercambiar archivos y chatear sin que estas actividades sean monitoreadas ni registradas. Según su autor
<blockquote>Inspirado por la radio pirata y los movimientos de cultura libre, PirateBox es un dispositivo móvil autónomo de colaboración e intercambio de archivos. PirateBox utiliza Software Libre y software de código abierto (FLOSS) para crear redes inalámbricas móviles de intercambio de archivos donde los usuarios pueden compartir anónimamente imágenes, vídeo, audio, documentos y otros contenidos digitales.

PirateBox está diseñado para ser nofensivo y seguro. No son necesarios inicios de sesión y no se registra los datos de usuario . El sistema - intencionalmente - no esta conectado a Internet con el fin de evitar el seguimiento y preservar la privacidad del usuario.

PirateBox fue creado por David Darts y está registrada bajo una Licencia Arte Libre (2011). Para obtener más información sobre el proyecto o para saber cómo crear su propio sistema PirateBox, por favor visite <a href="http://wiki.daviddarts.com/piratebox">http://wiki.daviddarts.com/piratebox</a></blockquote>
Entonces, podes hacerla con tu <a href="http://wiki.daviddarts.com/PirateBox_DIY#Install_PirateBox_on_a_Plug_Computer">computadora conectada aun router</a>, con tu <a href="#wiki.daviddarts.com-PirateBox_DIY">teléfono</a> o como hice yo, con un <a href="http://wiki.daviddarts.com/PirateBox_DIY_OpenWrt">Router 3g</a> de $160 y 15 minutos de hacking
<div id="outline-container-1" class="outline-4">
<h4 id="sec-1">Cosas que necesitarán</h4>
<div id="text-1" class="outline-text-4">
<ol>
	<li>TP-Link MR3020</li>
	<li>Memoria USB Flash (con formato FAT32 con una sola partición)</li>
	<li>Cable Ethernet (viene con el TP-Link)</li>
	<li>5V/USB batería (Viene con el TP-Link )</li>
	<li>Una computadora para conectarte al TP-LINK</li>
</ol>
</div>
</div>
<div id="outline-container-2" class="outline-4">
<h4 id="sec-2">Pre-intalación</h4>
<div id="text-2" class="outline-text-4">

El siguiente tutorial fue creado en un Linux con Arch Sin embargo, estas instrucciones también funcionará para Mac o Windows (requiere PuTTY ).
<ol>
	<li>Primero, descarguen una <a href="http://piratebox.aod-rpg.de/openwrt-ar71xx-generic-tl-mr3020-v1-squashfs-factory.bin">copia personalizada de OpenWrt para el MR3020</a> (modificado por Matthias Strubel para incluir a todos los módulos del kernel necesarios).</li>
	<li>Ajusten el interruptor situado junto al puerto LAN / WAN a modo WISP</li>
	<li>Apaguen la placa de red de su portátil (en OSX, haga clic en el icono de wifi y seleccione "Activar Wi-Fi Off")</li>
	<li>Conecte el router a través de cable ethernet al ordenador y abra un explorador web para <a href="http://192.168.0.254">http://192.168.0.254</a> (para el MR3020)</li>
	<li>Introduzca el nombre de usuario y contraseña por defecto (admin y admin)</li>
	<li>Vaya a Herramientas del sistema&gt; Actualización de Firmware y seleccione el firmware OpenWRT</li>
	<li>Después de la actualización, el sistema se reiniciará (desconecten y reconecten el cable de red)</li>
	<li>Hagan Telnet al dispositivo.:</li>
</ol>
<pre class="src src-bash">telnet 192.168.1.1</pre>
<ol>
	<li>Utilice el comando passwd para configurar la contraseña de inicio de sesión - esto permitirá SSH.:</li>
</ol>
<pre class="src src-bash">passwd</pre>
10 Edite el archivo de red con vi (. vi chuleta ):

NOTA: Las siguientes instrucciones asumen su router gateway (home router) Dirección IP es 192.168.2.1. Si su puerta de enlace (gateway) es diferente, tendrán que modificar su archivo de red en consecuencia. Tengan en cuenta que su OpenWrt (PirateBox) router no debe tener la misma dirección que el router gateway aunque tendrá que estar en la misma subred para acceder y descargar archivos desde Internet.
<pre class="src src-bash">vi /etc/config/network</pre>
El archivo modificado debe ser similar a esto:
<pre class="src src-bash">config interface 'loopback'                                                               
        option ifname 'lo'                                                                
        option proto 'static'                                                             
        option ipaddr '127.0.0.1'                                                         
        option netmask '255.0.0.0'                                                        

config interface 'lan'                                                                    
        option ifname 'eth0'                                                              
        option type 'bridge'                                                              
        option proto 'static'                                                             
        option ipaddr '192.168.2.111'                                                       
        option netmask '255.255.255.0'                                                    
        option gateway '192.168.2.1'                                                     
        list dns '192.168.2.1'                                                           
        list dns '8.8.8.8'</pre>
<ol>
	<li>Apaguen el router.</li>
	<li>Activen la conexión inalámbrica de su portátil (para OSX, haga clic en el icono de wifi y seleccione "Activar Wi-Fi On")</li>
	<li>Conecten el MR3020 a su puerta de enlace -gateway - (por ejemplo, el router de la red de origen) con un cable Ethernet y el conector de alimentación. Esperen un par de minutos hasta que arranca el router. Con el ordenador conectado a la red doméstica, traten de intentar conectarse con ssh al router (Nota: utilizar el "ipaddr" asignado en el paso 9):</li>
</ol>
<pre class="src src-bash">ssh root@192.168.2.111</pre>
<ol>
	<li>Pingueen a google para garantizar que la configuracion del firewall sea correcta:</li>
</ol>
<pre class="src src-bash">ping google.com</pre>
<ol>
	<li>Para crear el soporte USB en el OpenWrt instalar y habilitar los siguientes paquetes. (Nota: Este paso no es necesario si se utiliza la imagen personalizada de OpenWrt desde el paso 1):</li>
</ol>
<pre class="src src-bash">opkg update
opkg install kmod-usb-uhci
usbcore ## insmod puede devolver el mensaje: insmod: no se puede insertar 'usbcore': File exists
insmod uhci
opkg install kmod-usb-ohci ## puede devolver el mensaje: instalado en la raíz está actualizado.
insmod usb-ohci</pre>
</div>
</div>
<div id="outline-container-3" class="outline-4">
<h4 id="sec-3">Instalación de PirateBox - La Cajita Pirata -</h4>
<div id="text-3" class="outline-text-4">

A continuación, tendrá que instalar PirateBox en el router.
<ol>
	<li>Conecten su unidad USB (formateado a FAT32 con una sola partición) en el puerto USB.</li>
	<li>Instalen el paquete mkPirateBox usando los siguientes comandos.</li>
</ol>
<pre class="src src-bash">cd /tmp
wget http://piratebox.aod-rpg.de/piratebox_0.5.1_all.ipk
 opkg update &amp;&amp; opkg install piratebox*</pre>
<ol>
	<li>Opcional: Instale la sala de <a href="http://wakaba.c3.cx/s/web/wakaba_kareha">chat Kareha</a> :</li>
</ol>
<pre class="src src-bash">/Opt/piratebox/bin/install_piratebox.sh  /opt/piratebox/conf/piratebox.conf imageboard</pre>
A continuación, editen la imagen Kareha config cambiando en archivo con el nombre de usuario admin y la contraseña (ADMIN_PASS y secreto):

vi /opt/piratebox/www/board/config.pl
<ol>
	<li>Una vez que la instalación se haya completado, desenchufen el cable ethernet y desconecte la alimentación durante al menos 10 segundos.</li>
</ol>
. 5 Reinicie el equipo y unanse a lared "PirateBox - Share freely" de la red. Abran cualquier página web y deben ser redirigido al menú PirateBox.
<ol>
	<li>Comience a compartir archivos y chatear!</li>
</ol>
La próxima entrega les muestro como cambiar algunas cosas, como por ejemplo el nombre de red y las páginas en castellano

Así se ve la página a la cual te conectás.

<img src="http://www.acercadelaeducacion.com.ar/wp-content/uploads/2012/11/wpid-PirateBoxSendafile1.png" alt="http://www.acercadelaeducacion.com.ar/wp-content/uploads/2012/11/wpid-PirateBoxSendafile1.png" />

</div>
</div>