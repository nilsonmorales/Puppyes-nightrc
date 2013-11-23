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


### ESTE ES EL PINSTALL DE OPCIONES DE CLICK DERECHO
#!/bin/sh
#  version 4.9 is corrected to run  on Wary 511 and beta of wary512 as well as Lucid Puppy
# version 5.2 is corrected to run  on Quirky  -August 2011
# version 5.4 is corrected to run  on Slacko and Racy  -Nov 2011
# version 5.5 Feb10 2012 adds bac0nrecorder 2.6 and new options
# Zathura requires two links to be made for Lucid Puppy 

#make icon for scripts
ln /usr/local/lib/X11/mini-icons/mini-modules.xpm /usr/share/icons/hicolor/16x16/apps/mini-modules.xpm

rm -rf /root/.baconrecorder/
rm -rf /root/.config/screenshotbrowser
rm -rf /root/.zathura/
rm -f /bin/zathura
rm -rf /root/.puppyclock/

# two links made for Large file finder
ln -s "/usr/local/apps/Large Files Finder" $HOME/.config/rox.sourceforge.net/OpenWith/.inode_directory
ln -s "/usr/local/apps/Large Files Finder" $HOME/.config/rox.sourceforge.net/OpenWith/.inode_mount-point


ln -s /usr/lib/libpoppler-glib.so.4 /usr/lib/libpoppler-glib.so.5
if  [ -e /usr/lib/libpoppler.so.5 ]  ;then
ln -s /usr/lib/libpoppler.so.5 /usr/lib/libpoppler.so.7
else
ln -s /usr/lib/libpoppler.so.4.0.0 /usr/lib/libpoppler.so.7
fi
if [[  ! -e /usr/bin/ghostview ]]; then
rm -f   /root/.config/rox.sourceforge.net/OpenWith/.application_postscript/"Show with Ghostview"
fi
if [[  ! -e /usr/share/pixmaps/geany.png ]]; then
mv  /usr/share/pixmaps/geany_copy.png /usr/share/pixmaps/geany.png
fi
rm -f /usr/share/pixmaps/geany_copy.png
rm -f  /root/.config/rox.sourceforge.net/OpenWith/.application_x-cd-image/Burn_with_Pburn
rm -f  /root/.config/rox.sourceforge.net/OpenWith/.inode_mount-point/"Search with Pfind"
rm -f  /root/.config/rox.sourceforge.net/OpenWith/.inode_mount-point/"Search_with_Pfind"
rm -f  /root/.config/rox.sourceforge.net/OpenWith/.inode_directory/"Search_with_Pfind"

#  new Wary has nicoedit as a link
if [[ -L /usr/bin/nicoedit ]]; then
rm -f /root/.config/rox.sourceforge.net/OpenWith/.application_x-desktop/"Open with Nicoedit"
rm -f /root/.config/rox.sourceforge.net/OpenWith/.application_x-executable/"Open with Nicoedit"
rm -f /root/.config/rox.sourceforge.net/OpenWith/.application_xml/"Open with Nicoedit"
rm -f /root/.config/rox.sourceforge.net/OpenWith/.application_x-shellscript/"Open with Nicoedit"
rm -f /root/.config/rox.sourceforge.net/OpenWith/.text_css/"Open with Nicoedit"
rm -f /root/.config/rox.sourceforge.net/OpenWith/.text_html/"Open with Nicoedit"
rm -f /root/.config/rox.sourceforge.net/OpenWith/.text_plain/"Open with Nicoedit"
fi


if [[ ! -e /usr/bin/nicoedit ]]; then
rm -f /root/.config/rox.sourceforge.net/OpenWith/.application_x-desktop/"Open with Nicoedit"
rm -f /root/.config/rox.sourceforge.net/OpenWith/.application_x-executable/"Open with Nicoedit"
rm -f /root/.config/rox.sourceforge.net/OpenWith/.application_xml/"Open with Nicoedit"
rm -f /root/.config/rox.sourceforge.net/OpenWith/.application_x-shellscript/"Open with Nicoedit"
rm -f /root/.config/rox.sourceforge.net/OpenWith/.text_css/"Open with Nicoedit"
rm -f /root/.config/rox.sourceforge.net/OpenWith/.text_html/"Open with Nicoedit"
rm -f /root/.config/rox.sourceforge.net/OpenWith/.text_plain/"Open with Nicoedit"
fi

if [[ ! -e /usr/bin/leafpad ]]; then
rm -f /root/.config/rox.sourceforge.net/OpenWith/.application_x-desktop/"Open with leafpad"
rm -f /root/.config/rox.sourceforge.net/OpenWith/.application_x-executable/"Open with leafpad"
rm -f /root/.config/rox.sourceforge.net/OpenWith/.application_xml/"Open with leafpad"
rm -f /root/.config/rox.sourceforge.net/OpenWith/.application_x-shellscript/"Open with leafpad"
rm -f /root/.config/rox.sourceforge.net/OpenWith/.text_css/"Open with leafpad"
rm -f /root/.config/rox.sourceforge.net/OpenWith/.text_html/"Open with leafpad"
rm -f /root/.config/rox.sourceforge.net/OpenWith/.text_plain/"Open with leafpad"
fi


ln -fs /usr/local/apps/mtpaint  -T /root/.config/rox.sourceforge.net/OpenWith/mtpaint
ln -fs /usr/local/apps/abiword  -T /root/.config/rox.sourceforge.net/OpenWith/abiword
ln -fs /usr/local/apps/pupzip  -T /root/.config/rox.sourceforge.net/OpenWith/pupzip
ln -fs /usr/local/apps/inkscapelite  -T /root/.config/rox.sourceforge.net/OpenWith/inkscapelite
ln -fs /usr/local/apps/Pmusic_add  -T /root/.config/rox.sourceforge.net/OpenWith/pmusic
ln -fs /usr/local/apps/ffconvert  -T /root/.config/rox.sourceforge.net/OpenWith/ffconvert



ln -fs /usr/local/apps/Trash  -T /root/.config/rox.sourceforge.net/SendTo/Trash
rm  ./root/.config/rox.sourceforge.net/OpenWith/.audio_ogg/"Add To Pmusic Playlist"
rm  ./root/.config/rox.sourceforge.net/OpenWith/.audio_ogg/mhwaveedit
rm ./root/.config/rox.sourceforge.net/OpenWith/.audio_x-vorbis+ogg/"Add To Pmusic Playlist"
rm ./root/.config/rox.sourceforge.net/OpenWith/.audio_x-vorbis+ogg/mhwaveedit
rm   ./root/.config/rox.sourceforge.net/OpenWith/.application_pet/gtkhash
rm  ./root/.config/rox.sourceforge.net/OpenWith/.application_x-rar/gtkhash
rm  ./root/.config/rox.sourceforge.net/OpenWith/.application_x-rpm/gtkhash
rm  ./root/.config/rox.sourceforge.net/OpenWith/.application_x-bzip-compressed-tar/gtkhash
rm  ./root/.config/rox.sourceforge.net/OpenWith/.application_x-cd-image/gtkhash
rm  ./root/.config/rox.sourceforge.net/OpenWith/.application_x-compressed-tar/gtkhash
rm  ./root/.config/rox.sourceforge.net/OpenWith/.application_x-deb/gtkhash
rm  ./root/.config/rox.sourceforge.net/OpenWith/.application_x-rpm/gtkhash
rm  ./root/.config/rox.sourceforge.net/OpenWith/.application_x-squashfs-image/gtkhash
rm  ./root/.config/rox.sourceforge.net/OpenWith/.application_x-xz-compressed-tar/gtkhash
rm  ./root/.config/rox.sourceforge.net/OpenWith/.application_x-xz/gtkhash
rm  ./root/.config/rox.sourceforge.net/SendTo/.application_x-compressed-tar/pupzip
rm  ./root/.config/rox.sourceforge.net/SendTo/.image_x-xpixmap/mtpaint
rm  ./root/.config/rox.sourceforge.net/SendTo/.image_svg+xml/mtpaint
rm  ./root/.config/rox.sourceforge.net/SendTo/.image_bmp/mtpaint
rm  ./root/.config/rox.sourceforge.net/SendTo/.image_png/mtpaint

rm ./root/.config/rox.sourceforge.net/OpenWith/.audio_x-flac/"Add To Pmusic Playlist"
rm ./root/.config/rox.sourceforge.net/SendTo/.audio_x-flac/"Add To Pmusic Playlist"
rm ./root/.config/rox.sourceforge.net/SendTo/.inode_directory/"Search with Pfind"
rm ./root/.config/rox.sourceforge.net/SendTo/.image_png/"Send-to Backgrounds"
rm ./root/.config/rox.sourceforge.net/SendTo/.image_gif/"Send-to Backgrounds"
rm ./root/.config/rox.sourceforge.net/SendTo/.audio_x-wav/"Add To Pmusic Playlist"
rm ./root/.config/rox.sourceforge.net/OpenWith/.inode_directory/"Search with Pfind"
rm ./root/.config/rox.sourceforge.net/OpenWith/.image_png/"Send-to Backgrounds"
rm ./root/.config/rox.sourceforge.net/OpenWith/.image_jpeg/"Send-to Backgrounds"
rm ./root/.config/rox.sourceforge.net/OpenWith/.image_gif/"Send-to Backgrounds"
rm ./root/.config/rox.sourceforge.net/OpenWith/.audio_x-wav/"Add To Pmusic Playlist"

rm /root/.config/rox.sourceforge.net/OpenWith/.text_html/defaultbrowser
if [  -e /usr/share/applications/SeaMonkey-Composer-html-editor.desktop ] ; then
rm /root/.config/rox.sourceforge.net/OpenWith/defaulthtmleditor
ln -fs /usr/local/apps/defaulthtmleditor  -T /root/.config/rox.sourceforge.net/OpenWith/.text_html/"Open with HTML Editor"
fi

if [[ ! -e /usr/bin/gdmap ]]; then
rm /root/.config/rox.sourceforge.net/OpenWith/.inode_directory/"Graphical Disk Map"
rm /root/.config/rox.sourceforge.net/OpenWith/.inode_mount-point/"Graphical Disk Map"
fi
rm /root/.config/rox.sourceforge.net/OpenWith/.video_quicktime/"Fullscreen Play"
rm /root/.config/rox.sourceforge.net/OpenWith/.video_mp4/"Fullscreen Play"
rm /root/.config/rox.sourceforge.net/OpenWith/.video_mpeg/"Fullscreen Play"
rm /root/.config/rox.sourceforge.net/OpenWith/.video_x-flv/"Fullscreen Play"
rm /root/.config/rox.sourceforge.net/OpenWith/.video_x-ms-asf/"Fullscreen Play"
rm /root/.config/rox.sourceforge.net/OpenWith/.video_x-msvideo/"Fullscreen Play"
rm /root/.config/rox.sourceforge.net/OpenWith/.video_x-ms-wmv/"Fullscreen Play"



ln -s  /usr/local/apps/"Calculate MD5sum" $HOME/.config/rox.sourceforge.net/OpenWith/.application_pet
ln -s  /usr/local/apps/"Calculate MD5sum" $HOME/.config/rox.sourceforge.net/OpenWith/.application_x-bzip-compressed-tar
ln -s  /usr/local/apps/"Calculate MD5sum" $HOME/.config/rox.sourceforge.net/OpenWith/.application_x-bzip
ln -s  /usr/local/apps/"Calculate MD5sum" $HOME/.config/rox.sourceforge.net/OpenWith/.application_x-cd-image
ln -s  /usr/local/apps/"Calculate MD5sum" $HOME/.config/rox.sourceforge.net/OpenWith/.application_x-compressed-tar
ln -s  /usr/local/apps/"Calculate MD5sum" $HOME/.config/rox.sourceforge.net/OpenWith/.application_x-deb
ln -s  /usr/local/apps/"Calculate MD5sum" $HOME/.config/rox.sourceforge.net/OpenWith/.application_x-delta
ln -s  /usr/local/apps/"Calculate MD5sum" $HOME/.config/rox.sourceforge.net/OpenWith/.application_x-gzip
ln -s  /usr/local/apps/"Calculate MD5sum" $HOME/.config/rox.sourceforge.net/OpenWith/.application_x-iso9660
ln -s  /usr/local/apps/"Calculate MD5sum" $HOME/.config/rox.sourceforge.net/OpenWith/.application_x-rar
ln -s  /usr/local/apps/"Calculate MD5sum" $HOME/.config/rox.sourceforge.net/OpenWith/.application_x-rpm
ln -s  /usr/local/apps/"Calculate MD5sum" $HOME/.config/rox.sourceforge.net/OpenWith/.application_x-squashfs-image
ln -s  /usr/local/apps/"Calculate MD5sum" $HOME/.config/rox.sourceforge.net/OpenWith/.application_x-tgz
ln -s  /usr/local/apps/"Calculate MD5sum" $HOME/.config/rox.sourceforge.net/OpenWith/.application_zip

ln -s  /usr/local/apps/"Calculate MD5sum" $HOME/.config/rox.sourceforge.net/OpenWith/.application_x-ext3-image
ln -s  /usr/local/apps/"Calculate MD5sum" $HOME/.config/rox.sourceforge.net/OpenWith/.application_x-xz
ln -s  /usr/local/apps/"Calculate MD5sum" $HOME/.config/rox.sourceforge.net/OpenWith/.application_x-executable
ln -s  /usr/local/apps/"Calculate MD5sum" $HOME/.config/rox.sourceforge.net/OpenWith/.application_x-ext4-image

fixmenus
exit 0