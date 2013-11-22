#!/bin/sh
# compress a folder  -gzip or xz formats
# plus decompress some archives
# june1 2012 Don White (don570)
#June6 time estimate

APPDIR="`dirname $0`"
[ "$APPDIR" = "." ] && APPDIR="`pwd`"
export APPDIR="$APPDIR"


export APPDIR=`dirname $0`
[ $APPDIR = '.' ] && export APPDIR=`pwd`

#set language
TMP="`ls -1 $APPDIR/locals/ | grep ${LANG%.*}`"
. $APPDIR/locals/en_US:english #always run to fill gaps in translation
#fallback to macrolanguage if available (ISO 639-1 two letter code: en, es, fr, etc.)
[ -z $TMP ] && TMP="`ls -1 $APPDIR/locals/ | grep ${LANG%_*}:`" && echo $TMP
[ "$TMP" != "en_US:english" ] && . $APPDIR/locals/$TMP 2> /dev/null


export VERSION=1.5

for P in gtkdialog4 gtkdialog3 gtkdialog; do
    GTKDIALOG=$(which $P) && break
  done
  
rm -f /tmp/compression_*
export FOLDER="$1"
echo "$FOLDER"  > /tmp/compression_path
if [ -n "$FOLDER" ];then
if [ -f  "$FOLDER" ];then
Xdialog --title "$LOC100"   --wrap --screen-center --no-buttons --msgbox "
$LOC101 "   10 49 100 &
exit 0
fi
fi

#check if empty, but $FOLDER mustn't be null
if [ -n "$FOLDER" ] && [ ! "$(ls -A "$FOLDER")" ]; then 
 Xdialog --title "$LOC100"   --wrap --screen-center --no-buttons --msgbox "
$LOC104 "   9 45 100 &
rm -f  /tmp/image_*
exit 0
fi 

###############################################
#                                             #
#              CHECK_EXTENSION                #
#                                             #
###############################################
check_extension(){
EXTENSION="${FILE#*[.]}"
fbname=`basename "$FILE" .$EXTENSION`	
if [ -z "$EXTENSION" ] ;then
Xdialog --title "$LOC100"   --wrap --screen-center --no-buttons --msgbox "
$LOC102
$LOC103 "   10 49  100 &
exit 0
fi

DIRECTORY="$HOME"	
if [  "$CHECKBOX" = "false" ] ;then
DIRECTORY=`dirname "$FILE"`
fi


if [ "$EXTENSION" = "rar" ] ;then
if [  "CHECKBOX" = "false" ] ;then
cd  "$DIRECTORY"
mkdir -p Extracted_rar
cd Extracted_rar
unrar e "$FILE" 
else 
cd ~
mkdir -p Extracted_rar
cd Extracted_rar
unrar e "$FILE" 
fi

Xdialog --title "$LOC400"   --wrap --screen-center --left --no-buttons --msgbox   "$LOC700  Extracted_rar 
$LOC701   $DIRECTORY/Extracted_rar "   10 55 100  & 
exit 0
fi


# check for bzip2  extensions
CHECK=`echo  "$EXTENSION" | grep  "tb"`
CHECK2=`echo  "$EXTENSION" | grep  "bz2"`

if [  -n "$CHECK" ] || [  -n "$CHECK2" ] ;then
tar xjvf "$FILE" -C "$DIRECTORY"
Xdialog --title "$LOC400"   --wrap --screen-center --left --no-buttons --msgbox  "$LOC700  $fbname
$LOC701   $DIRECTORY  "   10 55 100  & 
exit 0
fi


# check for zip  extensions
CHECK=`echo  "$EXTENSION" | grep  "zip"`

if [  -n "$CHECK" ]  ;then
if [  "$CHECKBOX" = "false" ] ;then
cd  "$DIRECTORY"
mkdir -p Extracted_zip
cd Extracted_zip

unzip "$FILE"  

else 
cd ~
mkdir -p Extracted_zip
cd Extracted_zip
unzip "$FILE"  
fi


Xdialog --title "$LOC400"   --wrap --screen-center --left --no-buttons --msgbox  "$LOC700  Extracted_zip
$LOC701   $DIRECTORY/Extracted_zip  "   10 55 100  & 
exit 0
fi


extraction  &
exit 0
}
export -f  check_extension

###############################################
#                                             #
#              EXTRACTION                    #
#                                             #
###############################################
  
extraction(){
EXTENSION="${FILE#*[.]}"
fbname=`basename "$FILE" .$EXTENSION`	
DIRECTORY="$HOME"	
if [  "$CHECKBOX" = "false" ] ;then
DIRECTORY=`dirname "$FILE"`
fi



CHECK=`echo  "$EXTENSION" | grep  "xz"`

if [  -n "$CHECK" ];then
tar xJvf "$FILE" -C "$DIRECTORY"
Xdialog --title "$LOC400"   --wrap --screen-center --left --no-buttons --msgbox  "$LOC700  $fbname
$LOC701   $DIRECTORY  "   10 55 100  & 
else 


tar xzvf    "$FILE" -C "$DIRECTORY" 
Xdialog --title "$LOC400"   --wrap --screen-center --left --no-buttons --msgbox  "$LOC700  $fbname
$LOC701   $DIRECTORY  "   10 55 100  & 
fi

exit 0
}
export -f extraction
  
###############################################
#                                             #
#              COMPRESSION                    #
#                                             #
###############################################
  
compression(){
# remove final slash

# make correction if slash is final character
final=`echo ${DIR: -1}`
if [ "$final" = "/" ];then
DIR2="$DIR"/
DIR=`echo "$DIR2" | sed 's/\/\///'`
fi
  	
	
	# check if empty field
	if [ -z "$DIR" ] ;then
Xdialog --title "$LOC100"   --wrap --screen-center --no-buttons --msgbox "
$LOC702 "   10 49 100 &
exit 0
fi

# find directory name that will be compressed by removal between slashes
DIRECTORY="${DIR##/*/}"

# Correct this name for final ouput name
DIRNAME_CORRECTED="$DIRECTORY"
#  Check whether storage folder  contains space(s).
echo "$DIRECTORY" | grep -q " "       
if [ $? -eq "0" ]                   
then
# Substitute underscore for blank.
DIRNAME_CORRECTED=`echo "$DIRECTORY" | sed -e "s/ /_/g"`

fi

yaf-splash -close never -fontsize large -bg orange -fb black -text "$LOC410" & PID=$!

# move to directory that will be compressed
cd "$DIR"
cd ..
if [  "$GZIP_value" = "true" ] ; then
tar cvzf "$DIRNAME_CORRECTED".tar.gz "$DIRECTORY"
sync
s=`du -m  "$DIRNAME_CORRECTED".tar.gz | sed "s/\s.*//"` 
kill $PID
Xdialog --title "$LOC703"   --wrap --screen-center --left --no-buttons --msgbox  "
$LOC704  $DIRNAME_CORRECTED.tar.gz
$LOC701   $PWD  
$LOC705 $s MB
______________________________________"   0 0 100  & 
fi 
if [  "$XZ_value" = "true" ] ; then
tar cvJf "$DIRNAME_CORRECTED".tar.xz "$DIRECTORY"
sync
s=`du -m  "$DIRNAME_CORRECTED".tar.xz | sed "s/\s.*//"`
kill $PID
Xdialog --title "$LOC703"   --wrap --screen-center --left --no-buttons --msgbox  "
$LOC704  $DIRNAME_CORRECTED.tar.xz
$LOC701   $PWD  
$LOC705 $s MB
______________________________________"   0 0 100  & 
fi
if [  "$ZIP_value" = "true" ] ; then
zip -vr "$DIRNAME_CORRECTED".zip "$DIRECTORY"
sync
s=`du -m  "$DIRNAME_CORRECTED".zip | sed "s/\s.*//"`
kill $PID
Xdialog --title "$LOC703"   --wrap --screen-center --left --no-buttons --msgbox  "
$LOC704  $DIRNAME_CORRECTED.zip
$LOC701   $PWD  
$LOC705 $s MB
______________________________________"   0 0 100  & 
fi
rm -f  /tmp/compression_*
exit 0
}
export -f compression



###############################################
#                                             #
#                 ESTIMATE                    #
#                                             #
###############################################
estimate(){
if [ -z  "$DIR" ];then
SIZE=`ls -Ras1 "$FOLDER" | sed -n '/total/p'  | awk '{ print  $2 }'`
sync

COUNT=0

for number in $SIZE
do
let "COUNT=$COUNT + $number"
done
SIZE=$COUNT


let "TIME_ESTIMATE = $SIZE * 39 / 247000"
if  [  "$TIME_ESTIMATE" -le 0  ];then
TIME_ESTIMATE=1
fi

echo $TIME_ESTIMATE > /tmp/compression_estimate
else
SIZE=`ls -Ras1 "$DIR" | sed -n '/total/p'  | awk '{ print  $2 }'`
sync
COUNT=0

for number in $SIZE
do
let "COUNT=$COUNT + $number"
done
SIZE=$COUNT

let "TIME_ESTIMATE = $SIZE * 39 / 247000"
if  [   "$TIME_ESTIMATE" -le 0  ];then
TIME_ESTIMATE=1
fi
echo $TIME_ESTIMATE > /tmp/compression_estimate

fi
	

}
export -f estimate

# stop time field being filled in at startup from start menu
if [ -n "$FOLDER" ]   ; then
estimate
fi

###############################################
#                                             #
#               M A I N   G U I               #
#                                             #
###############################################

export COMPRESS='
<window title="'$LOC703' '$VERSION'" icon-name="mini-modules" resizable="false" decorated="true">
<vbox   width-request="340">
 <notebook labels="'$LOC600'|'$LOC601'">
<vbox>
<text height-request="10"><label>""</label></text>
        <text><label>"'$LOC403'
'$LOC404'"</label></text>
 
 <hbox>       
        <entry accept="directory">
        <label>'$LOC405'</label>
        <input>cat  /tmp/compression_path</input>
        <variable>DIR</variable>
        </entry>
        <button>
        <input file stock="gtk-open"></input>
        <action type="fileselect">DIR</action>
                <action>estimate</action>  
                <action>refresh:TIME</action>    

              
       </button>   
</hbox>

<radiobutton>
        <label>"'$LOC300'"</label>
        <default>true</default>
        <variable>GZIP_value</variable>
</radiobutton>
<radiobutton>
        <label>"'$LOC301'"</label>
        <variable>XZ_value</variable>
</radiobutton> 
<radiobutton>
        <label>"'$LOC302'"</label>
        <variable>ZIP_value</variable>
</radiobutton> 
<text height-request="20"><label>""</label></text>

<hbox homogeneous="true">
<text>
      <label>'$LOC406'</label>
</text>
  </hbox>
<hbox>
    
      <hbox width-request="130">    
 <entry editable="false">    
    <variable>TIME</variable>
    <input>cat /tmp/compression_estimate</input>
  </entry>
  <text>
      <label>'$LOC407'</label>
      </text>
  </hbox>
       <text><label>                      </label></text>
     </hbox>
  
        <text><label>____________________________________________</label></text>
        
<hbox homogeneous="true">

 <button>
        <input file stock="gtk-cancel"></input>
        <label>'$LOC200'</label>
        <action type="exit">CLOSE</action>
</button>

<button can-default="true" has-default="true" use-stock="true">
      <input file stock="gtk-ok"></input>
      <label>"'$LOC201'"</label>        
      <action>compression &</action>  
      <action type="exit">CLOSE</action>           
</button>     
</hbox>
</vbox>








<vbox>
<text height-request="40"><label>""</label></text>
        <text><label>"'$LOC402'
'$LOC408'"</label></text>

    <hbox>
      <entry>
        <variable>FILE</variable>
        
      </entry>
      
      <button>
        <input file stock="gtk-open"></input>
        <variable>FILE_BROWSE</variable>
        <action type="fileselect">FILE</action>
      </button>
    </hbox>
  
<checkbox active="false">
      <label>'$LOC409'</label>
      <variable>CHECKBOX</variable>
    </checkbox>
    <text height-request="90"><label>""</label></text>
    <text><label>____________________________________________</label></text>
<hbox homogeneous="true">

<button>
    <input file stock="gtk-help"></input>
<action>`Xdialog --title "$LOC500"   --wrap --screen-center --left --no-buttons --msgbox   "$LOC501\n\n$LOC502\n$LOC503\n\n$LOC504 "   17 65 100  & `</action>
</button>


<button>
        <input file stock="gtk-cancel"></input>
        <label>'$LOC200'</label>
        <action type="exit">CLOSE</action>
</button>

<button can-default="true" has-default="true" use-stock="true">
      <input file stock="gtk-ok"></input>
      <label>"'$LOC202'"</label>
      <action>check_extension &</action>  
      <action type="exit">CLOSE</action>           
</button>
     
</hbox>
</vbox>
 </notebook>

</vbox>

</window>'

$GTKDIALOG  --geometry=+200+100 -p COMPRESS


