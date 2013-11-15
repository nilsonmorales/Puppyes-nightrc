#!/bin/sh
scrot -b -d 3 -q 98 '%d%m%I%M%S.png' -e 'mv $f /root/my-documents/images/'
