#!/sbin/sh

mkdir -p /lta-label
mount -o ro /dev/block/platform/msm_sdcc.1/by-name/LTALabel /lta-label
ls lta-label/*.html | grep -q d6603
if [ $? -eq 0 ]; then
	mount /dev/block/platform/msm_sdcc.1/by-name/system /system
	cp /system/etc/firmware/d6603/* /system/etc/firmware/
	umount /system
fi
umount /lta-label
