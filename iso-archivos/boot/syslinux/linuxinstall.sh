#!/bin/bash

#set -x

# Find out which partition or disk are we using
export MYMNT=$(cd -P $(dirname $0) ; pwd)
while [ "$MYMNT" != "" -a "$MYMNT" != "." -a "$MYMNT" != "/" ]; do
   TARGET=$(egrep "[^[:space:]]+[[:space:]]+$MYMNT[[:space:]]+" /proc/mounts | cut -d " " -f 1)
   if [ "$TARGET" != "" ]; then break; fi
   MYMNT=$(dirname "$MYMNT")
done

if [ "$TARGET" = "" ]; then
   echo "Can't find device to install to."
   echo "Make sure you run this script from a mounted device."
   exit 1

fi

if [ "$(cat /proc/mounts | grep "^$TARGET" | grep noexec)" ]; then
   echo "The disk $TARGET is mounted with noexec parameter, trying to remount..."
   mount -o remount,exec "$TARGET"
fi

#Added for compatibility with sd cards mmcblk*
if echo $TARGET | grep "mmcblk" ; then
	export MBR=$(echo "$TARGET" | sed -r "s/p[0-9]+\$//g")
else  
	export MBR=$(echo "$TARGET" | sed -r "s/[0-9]+\$//g")
fi
##################################################
export NUM=${TARGET:${#MBR}}
cd "$MYMNT"

clear
echo "-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-"
echo "                        Welcome to Puppyes boot installer                         "
echo "-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-"
echo
echo "This installer will setup disk $TARGET to boot only Puppyes."
if [ "$MBR" != "$TARGET" ]; then
   echo
   echo "Warning! Master boot record (MBR) of $MBR will be overwritten."
   echo "If you use $MBR to boot any existing operating system, it will not work"
   echo "anymore. Only Puppyes will boot from this device. Be careful!"
fi
echo
echo "Press Enter to continue, or Ctrl+C to abort..."
read junk
clear

echo "Flushing filesystem buffers, this may take a while..."
sync

if mount | grep $MBR | egrep -iqv "ext2|ext3|vfat" ; then
		echo ""
		echo "Sorry, This filesystem is not supported"
		echo "Please use fat16, fat32, ext2, or ext3"
		read junk
		exit
fi
# setup MBR if the device is not in superfloppy format
if [ "$MBR" != "$TARGET" ]; then
	echo "Setting up MBR on $MBR..."
	./boot/syslinux/lilo -S /dev/null -M $MBR ext &> /dev/null # this must be here to support -A for extended partitions
	echo "Activating partition $TARGET..."
	./boot/syslinux/lilo -S /dev/null -A $MBR $NUM &> /dev/null # Added &> /dev/null to get rid of some annoying messages when installing to mmcblk
	echo "Updating MBR on $MBR..." # this must be here because LILO mbr is bad. mbr.bin is from syslinux
	dd if=./boot/syslinux/mbr.bin of=$MBR #Replaced cat with dd due to permission problems
	# Check for vfat filesystem 	
	if mount | grep $MBR | grep -q "vfat" ; then
		echo "Setting up boot record for $TARGET..."	
		./boot/syslinux/syslinux -d . $TARGET
		
	# Check for ext2, or ext3 filesystem
	elif mount | grep $MBR | egrep -iq "ext2|ext3" ; then
		while [ -e $DIR ] || [ $DIR == "" ]; do # Make a directory to mount filesystem. Extlinux only installs to a mounted filesystem
		NUMBER=$(($NUMBER + 1))
		DIR=/mnt/puppyes_install_$NUMBER		
		done		
		mkdir $DIR
		mount $TARGET $DIR
		echo "Setting up boot record for $TARGET..."	
		./boot/syslinux/extlinux -i $DIR
		# Next 2 commands needed for vesamenu to function with extlinux #		
		chattr -i $DIR/extlinux.sys
		chmod 777 $DIR/extlinux.sys
		###############################################################		
		if [ -e $DIR/syslinux.cfg ]; then #If syslinux.cfg exists then rename to extlinux.conf 
			mv $DIR/syslinux.cfg $DIR/extlinux.conf 	
		else		
			echo ""				
			echo "Please rename syslinux.cfg to extlinux.conf"
			echo "for compatibility with extlinux bootloader"
			echo ""
		fi	
		sleep 1		
		umount -fl $DIR
		if [ $? != 0 ]; then
			echo "Error! Unable to unmount $TARGET" 
			echo "Please try:"	
			echo "umount $TARGET"
			echo "rm -r $DIR"
			echo "and try running script again"		
			exit		
		else		
			rm -r $DIR
		fi	
	fi
fi
		
echo "Disk $TARGET should be bootable now. Installation finished."

echo
echo "Read the information above and then press any key to exit..."
read junk




