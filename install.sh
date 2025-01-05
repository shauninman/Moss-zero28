#!/bin/bash

cd $(dirname "$0")

cp bootlogo.bmp /root/lichee/target/allwinner/generic/boot-resource/boot-resource/

cp etc/rc.local /root/lichee/target/allwinner/a133-aw3/base-files/etc/
cp etc/banner /root/lichee/package/base-files/files/etc/

cp -r usr /root/lichee/package/add-rootfs-demo/
echo "after building run add-rootfs-demo"