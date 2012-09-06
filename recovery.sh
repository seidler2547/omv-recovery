#!/bin/sh

echo ===============================================
echo == Resetting the NAS to the factory firmware ==
echo ===============================================

cd /tmp/usb
dd if=vmlinuz.orig of=/dev/sda bs=512 seek=1290
dd if=initrd.orig of=/dev/sda bs=512 seek=16674
cd ..
umount usb
sync
sleep 3
echo "1" > /sys/class/nasled/power_off
