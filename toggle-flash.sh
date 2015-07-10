#!/bin/sh
STATE=/storage/emulated/0/.flashlight-on
FLASH=/sys/class/camera/rear/rear_flash
if test -e $STATE; then
    rm $STATE
    echo 0 > $FLASH
else
    touch $STATE
    echo 1 > $FLASH
fi