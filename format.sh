#!/usr/bin/bash

echo "Created by: twitter.com/crackd3vil"
echo "Date of Creation: 2022/08/08"
ROOT_UID=0
if [ "$UID" -eq "$ROOT_UID" ]
then
	echo "Go a head... :)"
else
	echo "Sorry You are not root :(, Pls type 'sudo' before you RUN this script..."
exit 0
fi
sudo df -h
read -p "Pls Enter the location of your PenDrive: " loc
sudo umount $loc
sudo mkfs.vfat -F 32 -n "crackd3vil" $loc
