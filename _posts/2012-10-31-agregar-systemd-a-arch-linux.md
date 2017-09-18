---
id: 1778
title: 'Agregar #Systemd a #Arch linux'
date: 2012-10-31T21:15:52+00:00
author: Alvar
layout: post
guid: http://www.acercadelaeducacion.com.ar/?p=1778
permalink: /2012/10/agregar-systemd-a-arch-linux/
dsq_thread_id:
  - "1807923697"
bitly_url:
  - http://bit.ly/1ZugC0s
bitly_hash:
  - 1ZugC0s
bitly_long_url:
  - http://www.acercadelaeducacion.com.ar/2012/10/agregar-systemd-a-arch-linux/
image: /wp-content/uploads/2012/10/systemdTuit.png
categories:
  - Cultura Libre
tags:
  - Arch
  - Linux
  - Software Libre
---
Hoy fue un día privilegiadamente técnico de ahí que haya aprendido cosas que a la mayoría de los mortales... pues bien poco les importa. Pero para a quienes si nos gustan los desafíos técnicos, bueno, no hay mejor problema que aquel que te deja tu máquina con un prompt preguntándote el login y a vos preguntándote donde diablos está tu gestor de ventanas.
<h2>Agregar #Systemd a #Arch linux</h2>
En pocas palabras esto es lo que hice (en orden inverso)

<a href="http://www.acercadelaeducacion.com.ar/2012/10/31/agregar-systemd-a-arch-linux/systemdtuit/" rel="attachment wp-att-1779"><img class="aligncenter size-full wp-image-1779" title="systemdTuit" src="http://www.acercadelaeducacion.com.ar/wp-content/uploads/2012/10/systemdTuit.png" alt="" width="341" height="416" /></a>

En muchas palabras: primero tuve que entender que era lo que pasaba. Recurrí como siempre a la pagina de #Arch

<img class="alignnone" title="Novedades de Arch" src="http://s3.amazonaws.com/diigo/1624850_141747969_8438486?AWSAccessKeyId=0R7FMW7AXRVCYMAPTPR2&amp;Expires=1351727588&amp;Signature=fcfXT%2F03sEBGAw9%2B9HyyjWNw3VI%3D" alt="" width="714" height="270" />

Obviamente fuí a la <a title="Págin de la wiki sobre systemd" href="https://wiki.archlinux.org/index.php/Systemd">wiki</a> y luego de mucha lectura hice <a title="Configuración nativa de Systemd" href="https://wiki.archlinux.org/index.php/Systemd#Native_configuration" target="_blank">esto</a> y comenté en el /etcrc.conf las configurciones nuevas. Después <a title="Instalación de systemd" href="https://wiki.archlinux.org/index.php/Systemd#Native_configuration" target="_blank">esto agregando unaruta al menu.lst de /boot/grub</a> (init=/usr/lib/systemd/systemd)

&nbsp;
<pre class="brush:shell"># (0) Arch Linux
title  Arch Linux
root   (hd0,1)
kernel /boot/vmlinuz-linux root=/dev/sda2 init=/usr/lib/systemd/systemd ro
initrd /boot/initramfs-linux.img</pre>
<a title="Instalación de systemd" href="https://wiki.archlinux.org/index.php/Systemd#Native_configuration" target="_blank">
</a>

y luego comenté la linea en /etc/inittab que arrancaba el GDM
<pre class="brush:shell">#x:5:respawn:/usr/sbin/gdm -nodaemon</pre>
luego agregue el inicio de GDM via systemctl
<pre class="brush:shell">systemctl enable gdm</pre>
Eso es todo amigos y amigas

&nbsp;