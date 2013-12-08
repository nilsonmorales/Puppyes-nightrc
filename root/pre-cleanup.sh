#!/bin/sh
# nilsonmorales 23.11.2013
#Este script tiene la finalidad de mostrar una vista previa de lo que será la version final de Puppyes
#Como utilizar:
# clonar el repositorio desde github $ git clone https://github.com/nilsonmorales/Puppyes-nightrc.git
# copiar el repositorio en otra carpeta
# crear un pet del repositorio
# Descargar y Correr nightrc en ram 
# instalar el pet 
# cuando aparesca la ventana de seleccion de idioma y pais abrir terminal con alt+F7 y ejecutar ./pre-cleanup.sh
# seguir con la instalación normal



rm /root/.config/lxpanel/default/panels/top
rm /usr/share/applications/ROX-Filer-file-manager.desktop
rm /usr/share/applications/getflash.desktop
rm /usr/share/applications/JWM-configuration.desktop
rm /usr/share/applications/jwmthememaker.desktop
rm /usr/share/applications/wmswitcher.desktop
rm /usr/local/choosepanel/langpack_es-20130213.pet
rm /usr/local/choosepanel/langpack_fr-20130322.pet
rm /usr/local/choosepanel/tint2configuration.desktop
rm /usr/local/choosepanel/tint2
rm /usr/local/choosepanel/tint2conf
rm /usr/local/choosepanel/lxpanel.png
rm /usr/local/choosepanel/tint2.png
rm /usr/local/choosepanel/tint22.png
rm -rf '/root/.config/myGtkMenu'
rm -rf '/root/.config/tint2'
rm -rf '/root/.config/iron' 
rm '/usr/bin/iron'
rm -rf '/usr/lib/iron-linux'
rm '/root/.config/lxpanel/facebook.desktop' 
rm '/root/.config/lxpanel/twitter.desktop'
rm '/usr/share/applications/update.desktop'
rm '/usr/share/applications/defaultbrowser.desktop' 
rm '/root/Startup/update_notify'
rm '/root/my-applications/bin/update' 
rm -rf '/usr/local/lib/X11/themes/Blue-Moon'

# Opciones click derecho
rm '/usr/share/applications/Ycalc-TI-59-scientific-calculator.desktop' 
rm '/usr/share/applications/Xcalc-scientific-calculator.desktop' 
rm '/usr/share/applications/wallaper_x_consola.desktop' 
rm '/usr/share/applications/valide.desktop' 
rm '/root/.config/rox.sourceforge.net/OpenWith/.application_msword/Trash' 
rm '/root/.config/rox.sourceforge.net/OpenWith/.application_msword/Open with Abiword' 
rm '/root/.config/rox.sourceforge.net/OpenWith/.application_msword/Copy to Textual Folder' 
rm '/root/.config/rox.sourceforge.net/OpenWith/.application_notecase-plain/Open with Notecase'
rm '/root/.config/rox.sourceforge.net/OpenWith/.application_notecase-plain/Trash' 
rm '/root/.config/rox.sourceforge.net/OpenWith/.application_ogg/Trash'
rm '/root/.config/rox.sourceforge.net/OpenWith/.application_pdf/Copy to PDF Folder'
rm '/root/.config/rox.sourceforge.net/OpenWith/.application_pdf/Trash'
rm '/root/.config/rox.sourceforge.net/OpenWith/.application_pdf/Open with PDF viewer'
rm '/root/.config/rox.sourceforge.net/OpenWith/.application_pet/Extract here'
rm '/root/.config/rox.sourceforge.net/OpenWith/.application_pet/MD5sum check'
rm '/root/.config/rox.sourceforge.net/OpenWith/.application_pet/Trash'
rm '/root/.config/rox.sourceforge.net/OpenWith/.application_rtf/Open with Abiword'
rm '/root/.config/rox.sourceforge.net/OpenWith/.application_rtf/Trash'
rm '/root/.config/rox.sourceforge.net/OpenWith/.application_vnd.ms-excel/Trash' 
rm '/root/.config/rox.sourceforge.net/OpenWith/.application_vnd.oasis.opendocument.text/Open with Abiword'
rm '/root/.config/rox.sourceforge.net/OpenWith/.application_vnd.oasis.opendocument.text/Trash'
rm '/root/.config/rox.sourceforge.net/OpenWith/.application_vnd.rn-realmedia/Trash' 
rm '/root/.config/rox.sourceforge.net/OpenWith/.application_vnd.sun.xml.calc/Trash'
rm '/root/.config/rox.sourceforge.net/OpenWith/.application_x-abiword/Open with Abiword'
rm '/root/.config/rox.sourceforge.net/OpenWith/.application_x-abiword/Trash'
rm '/root/.config/rox.sourceforge.net/OpenWith/.application_x-bzip-compressed-tar/MD5sum check' 
rm '/root/.config/rox.sourceforge.net/OpenWith/.application_x-bzip-compressed-tar/Open archive'
rm '/root/.config/rox.sourceforge.net/OpenWith/.application_x-bzip-compressed-tar/Trash'
rm '/root/.config/rox.sourceforge.net/OpenWith/.application_x-cd-image/Burn with Pburn' 
rm '/root/.config/rox.sourceforge.net/OpenWith/.application_x-cd-image/MD5sum check'
rm '/root/.config/rox.sourceforge.net/OpenWith/.application_x-cd-image/Open with Isomaster'
rm '/root/.config/rox.sourceforge.net/OpenWith/.application_x-cd-image/Trash'
rm '/root/.config/rox.sourceforge.net/OpenWith/.application_x-compressed-tar/MD5sum check'
rm '/root/.config/rox.sourceforge.net/OpenWith/.application_x-compressed-tar/Trash'
rm '/root/.config/rox.sourceforge.net/OpenWith/.application_x-compressed-tar/Open archive'
rm '/root/.config/rox.sourceforge.net/OpenWith/.application_x-deb/MD5sum check'
rm '/root/.config/rox.sourceforge.net/OpenWith/.application_x-deb/Trash'
rm '/root/.config/rox.sourceforge.net/OpenWith/.application_x-delta/Trash'
rm '/root/.config/rox.sourceforge.net/OpenWith/.application_x-desktop/Trash' 
rm '/root/.config/rox.sourceforge.net/OpenWith/.application_x-desktop/Geany'
rm '/root/.config/rox.sourceforge.net/OpenWith/.application_x-executable/Run in Terminal'
rm '/root/.config/rox.sourceforge.net/OpenWith/.application_x-executable/Trash'
rm '/root/.config/rox.sourceforge.net/OpenWith/.application_x-flash-video/Trash'
rm '/root/.config/rox.sourceforge.net/OpenWith/.application_x-gzip/Trash'
rm '/root/.config/rox.sourceforge.net/OpenWith/.application_x-iso9660/MD5sum check' 
rm '/root/.config/rox.sourceforge.net/OpenWith/.application_x-iso9660/Open with Isomaster' 
rm '/root/.config/rox.sourceforge.net/OpenWith/.application_x-iso9660/Trash'
rm '/root/.config/rox.sourceforge.net/OpenWith/.application_x-iso9660/Burn with Pburn' 
rm '/root/.config/rox.sourceforge.net/OpenWith/.application_x-lzma/Trash'
rm '/root/.config/rox.sourceforge.net/OpenWith/.application_x-lzma/xarchive-archive' 
rm '/root/.config/rox.sourceforge.net/OpenWith/.application_x-rar/MD5sum check'
rm '/root/.config/rox.sourceforge.net/OpenWith/.application_x-rar/Trash' 
rm '/root/.config/rox.sourceforge.net/OpenWith/.application_x-shellscript/Open with Abiword' 
rm '/root/.config/rox.sourceforge.net/OpenWith/.application_x-shellscript/Run_In_Terminal' 
rm '/root/.config/rox.sourceforge.net/OpenWith/.application_x-shellscript/Trash'
rm '/root/.config/rox.sourceforge.net/OpenWith/.application_x-shellscript/Geany'
rm '/root/.config/rox.sourceforge.net/OpenWith/.application_x-shockwave-flash/defaulthtmlviewer'
rm '/root/.config/rox.sourceforge.net/OpenWith/.application_x-squashfs-image/MD5sum check' 
rm '/root/.config/rox.sourceforge.net/OpenWith/.application_x-squashfs-image/Trash'
rm '/root/.config/rox.sourceforge.net/OpenWith/.application_x-squashfs-image/sfs_load'
rm '/root/.config/rox.sourceforge.net/OpenWith/.application_x-tar/Open archive'
rm '/root/.config/rox.sourceforge.net/OpenWith/.application_x-tar/Trash' 
rm '/root/.config/rox.sourceforge.net/OpenWith/.application_x-tgz/MD5sum check' 
rm '/root/.config/rox.sourceforge.net/OpenWith/.application_x-tgz/Open archive' 
rm '/root/.config/rox.sourceforge.net/OpenWith/.application_x-tgz/Trash' 
rm '/root/.config/rox.sourceforge.net/OpenWith/.application_zip/MD5sum check'
rm '/root/.config/rox.sourceforge.net/OpenWith/.application_zip/Open archive'
rm '/root/.config/rox.sourceforge.net/OpenWith/.application_zip/Trash' 
rm '/root/.config/rox.sourceforge.net/OpenWith/.audio_mp4/Trash'
rm '/root/.config/rox.sourceforge.net/OpenWith/.audio_mpeg/Trash' 
rm '/root/.config/rox.sourceforge.net/OpenWith/.audio_x-flac/Trash'
rm '/root/.config/rox.sourceforge.net/OpenWith/.audio_x-mp3/Trash'
rm '/root/.config/rox.sourceforge.net/OpenWith/.audio_x-mpegurl/Trash' 
rm '/root/.config/rox.sourceforge.net/OpenWith/.audio_x-ms-wma/Trash'
rm '/root/.config/rox.sourceforge.net/OpenWith/.audio_x-pn-realaudio/Trash'
rm '/root/.config/rox.sourceforge.net/OpenWith/.audio_x-vorbis+ogg/Trash' 
rm '/root/.config/rox.sourceforge.net/OpenWith/.audio_x-wav/Trash' 
rm '/root/.config/rox.sourceforge.net/OpenWith/.image_bmp/Copy to Screenshots Folder'
rm '/root/.config/rox.sourceforge.net/OpenWith/.image_bmp/Default Image Viewer'
rm '/root/.config/rox.sourceforge.net/OpenWith/.image_bmp/Edit with mtPaint' 
rm '/root/.config/rox.sourceforge.net/OpenWith/.image_bmp/Trash'
rm '/root/.config/rox.sourceforge.net/OpenWith/.image_gif/Edit with mtPaint' 
rm '/root/.config/rox.sourceforge.net/OpenWith/.image_jpeg/Copy to Backgrounds Folder'
rm '/root/.config/rox.sourceforge.net/OpenWith/.image_jpeg/Edit with mtPaint'
rm '/root/.config/rox.sourceforge.net/OpenWith/.image_jpeg/Trash' 
rm '/root/.config/rox.sourceforge.net/OpenWith/.image_png/Copy to Backgrounds Folder'
rm '/root/.config/rox.sourceforge.net/OpenWith/.image_png/Edit with mtPaint'
rm '/root/.config/rox.sourceforge.net/OpenWith/.image_png/Trash' 
rm '/root/.config/rox.sourceforge.net/OpenWith/.image_svg+xml/Edit with mtPaint'
rm '/root/.config/rox.sourceforge.net/OpenWith/.image_svg+xml/Trash' 
rm '/root/.config/rox.sourceforge.net/OpenWith/.image_tiff/Copy to Backgrounds Folder'
rm '/root/.config/rox.sourceforge.net/OpenWith/.image_tiff/Edit with mtPaint' 
rm '/root/.config/rox.sourceforge.net/OpenWith/.image_tiff/Trash' 
rm '/root/.config/rox.sourceforge.net/OpenWith/.image_x-xcf/Paint' 
rm '/root/.config/rox.sourceforge.net/OpenWith/.image_x-xpixmap/Edit with mtPaint' 
rm '/root/.config/rox.sourceforge.net/OpenWith/.image_x-xpixmap/Trash' 
rm '/root/.config/rox.sourceforge.net/OpenWith/.inode_directory/Make archive'
rm '/root/.config/rox.sourceforge.net/OpenWith/.inode_directory/Make ISO'
rm '/root/.config/rox.sourceforge.net/OpenWith/.inode_directory/Search with Pfind'
rm '/root/.config/rox.sourceforge.net/OpenWith/.inode_mount-point/Search inside'
rm '/root/.config/rox.sourceforge.net/OpenWith/.text_html/defaulthtmlviewer' 
rm '/root/.config/rox.sourceforge.net/OpenWith/.text_html/Trash' 
rm '/root/.config/rox.sourceforge.net/OpenWith/.text_plain/Open with Abiword'
rm '/root/.config/rox.sourceforge.net/OpenWith/.text_plain/Open with Browser'
rm '/root/.config/rox.sourceforge.net/OpenWith/.text_plain/Trash' 
rm '/root/.config/rox.sourceforge.net/OpenWith/.text_plain/Geany'
rm '/root/.config/rox.sourceforge.net/OpenWith/.video_mp4/Trash' 
rm '/root/.config/rox.sourceforge.net/OpenWith/.video_mpeg/Trash'
rm '/root/.config/rox.sourceforge.net/OpenWith/.video_quicktime/Trash' 
rm '/root/.config/rox.sourceforge.net/OpenWith/.video_x-flv/Trash'
rm '/root/.config/rox.sourceforge.net/OpenWith/.video_x-ms-asf/Trash' 
rm '/root/.config/rox.sourceforge.net/OpenWith/.video_x-msvideo/Trash' 
rm '/root/.config/rox.sourceforge.net/OpenWith/.video_x-ms-wmv/Trash'
rm '/root/.config/rox.sourceforge.net/OpenWith/.video_x-theora+ogg/Trash'
rm '/root/.config/rox.sourceforge.net/OpenWith/abiword' 
rm '/root/.config/rox.sourceforge.net/OpenWith/ouvrir  archivo' 
rm '/root/.config/rox.sourceforge.net/OpenWith/Trash'

# Archivos clonados de git
rm /applist.txt
rm /CHANGELOG
rm /COPYING 
rm /README.md

# Habilitanto tecla printscreen
rm /var/lib/xkb/server-*.xkm 
setxkbmap 
killall ROX-Filer 
rox -p /root/Choices/ROX-Filer/PuppyPin
openbox --reconfigure
lxpanel
fixmenus 

# Script de construccion de iso
rm /build_info

# Las aplicaciones 
rm -rf /root/.config/iron
rm /usr/bin/iron
rm -rf /usr/lib/iron-linux
rm /usr/share/applications/defaultbrowser.desktop



