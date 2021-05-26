#!/bin/bash
# Set system configuration to known values for Player 2 MiSTer

echo "Remounting root filesystem as read-write..."
mount | grep "on / .*[(,]ro[,$]" -q && RO_ROOT="true"
[ "${RO_ROOT}" == "true" ] && mount / -o remount,rw
echo "Copying identity files..."
cp /media/fat/linux/hosts_p4 /etc/hosts
cp /media/fat/linux/hostname_p4 /etc/hostname
cp /media/fat/linux/u-boot.txt_p4 /media/fat/linux/u-boot.txt
echo "Remounting root filesystem as read-only..."
sync
[ "${RO_ROOT}" == "true" ] && mount / -o remount,ro
sync
echo "Done!"
echo "Rebooting in..."
for i in {5..1}; do
	echo "${i} seconds"
	sleep 1
done
reboot now
exit 0
