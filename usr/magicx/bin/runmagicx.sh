#!/bin/sh

export PATH=/usr/magicx/bin:$PATH
export LD_LIBRARY_PATH=/usr/magicx/lib:$LD_LIBRARY_PATH

MOUNTED=`cat /proc/mounts | grep SDCARD`
COUNT=0
while [ "x$MOUNTED" == "x" ] && [ $COUNT -lt 6 ] ; do
   sleep 0.5
   COUNT=`expr $COUNT + 1`
   MOUNTED=`cat /proc/mounts | grep SDCARD`
done

MAGICX_PATH=/mnt/SDCARD/magicx/init.sh
UPDATER_PATH=/mnt/SDCARD/.tmp_update/updater
if [ -f "$MAGICX_PATH" ]; then
	"$MAGICX_PATH"
elif [ -f "$UPDATER_PATH" ]; then
	"$UPDATER_PATH"
else
	poweroff
fi

