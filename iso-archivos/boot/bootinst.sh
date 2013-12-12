#!/bin/bash
set -x
set -e
export TARGET=""
export MBR=""

[ `which sudo` ] && SUDO=sudo

WD=`dirname $0`


${WD}/syslinux/rxvt -e $SUDO ${WD}/syslinux/linuxinstall.sh
exit




