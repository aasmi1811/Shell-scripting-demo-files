#!/bin/bash
#
#
#Monitoring filesystem/disk space and send report on mail
#prerequisite is postfix and s-nail should be installed on server to send mail
#
FS=$(df -H | grep -Ev "Filesystem|tmpfs" | grep /dev/nvme0n1p3 | awk '{print $5}' | tr -d %)
TO="contrast1811@gmail.com"
if [[  $FS -ge 80 ]]
then
	echo "Warning: disk space is running low- $FS" | mail -s "Low disk space ALERT!" $TO
else
	echo "Disk space is fine"
fi

