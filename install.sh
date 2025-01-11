#!/bin/bash

cd $(dirname "$0")

cp bootlogo.bmp /root/lichee/target/allwinner/generic/boot-resource/boot-resource/

cp etc/rc.local /root/lichee/target/allwinner/a133-aw3/base-files/etc/
cp etc/banner /root/lichee/package/base-files/files/etc/

cp -r usr /root/lichee/package/add-rootfs-demo/
gzip -c /root/lichee/.config > /root/lichee/package/add-rootfs-demo/usr/magicx/tina_config.gz

echo "after building run add-rootfs-demo"