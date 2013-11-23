#!/bin/sh
rm /root/.config/lxpanel/default/panels/top
rm /usr/share/applications/ROX-Filer-file-manager.desktop
rm /usr/share/applications/getflash.desktop
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
rm /root/.config/rox.sourceforge.net/OpenWith/.application_x-compressed-tar/"MD5sum check"









rm /applist.txt
rm /build_info
rm /CHANGELOG
rm /COPYING 
rm /README.md
rm /var/lib/xkb/server-*.xkm 
setxkbmap 
killall ROX-Filer 
rox -p /root/Choices/ROX-Filer/PuppyPin
openbox --reconfigure
startx
fixmenus 