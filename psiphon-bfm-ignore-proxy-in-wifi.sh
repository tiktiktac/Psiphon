#!/data/data/com.termux/files/usr/bin/sh

#prepare tmp directory
mkdir -p /data/data/com.termux/files/home/Psiphon/box-for-magisk/tmp
rm -rf /data/data/com.termux/files/home/Psiphon/box-for-magisk/tmp/*
cp /data/data/com.termux/files/home/Psiphon/box-for-magisk/bfm-settings.ini /data/data/com.termux/files/home/Psiphon/box-for-magisk/tmp/bfm-settings.ini

sed -i 's/ignore_out_list=()/ignore_out_list=(\"wlan+\")/g' /data/data/com.termux/files/home/Psiphon/box-for-magisk/tmp/bfm-settings.ini

#replace bfm configs
su -c "mv -f /data/data/com.termux/files/home/Psiphon/box-for-magisk/tmp/bfm-settings.ini /data/adb/box/settings.ini"

#restart bfm
su -c /data/adb/box/scripts/box.service restart
