#!/data/data/com.termux/files/usr/bin/sh

#prepare tmp directory
mkdir -p /data/data/com.termux/files/home/Psiphon/box-for-magisk/tmp
rm -rf /data/data/com.termux/files/home/Psiphon/box-for-magisk/tmp/*
cp /data/data/com.termux/files/home/Psiphon/box-for-magisk/bfm-settings.ini /data/data/com.termux/files/home/Psiphon/box-for-magisk/tmp/bfm-settings.ini
cp /data/data/com.termux/files/home/Psiphon/box-for-magisk/bfm-clash-v2ray-config.yaml /data/data/com.termux/files/home/Psiphon/box-for-magisk/tmp/bfm-clash-v2ray-config.yaml

sed -i 's/bin_name=\"xray\"/bin_name=\"clash\"/g' /data/data/com.termux/files/home/Psiphon/box-for-magisk/tmp/bfm-settings.ini
sed -i 's/bin_name=\"sing-box\"/bin_name=\"clash\"/g' /data/data/com.termux/files/home/Psiphon/box-for-magisk/tmp/bfm-settings.ini
sed -i 's/bin_name=\"v2fly\"/bin_name=\"clash\"/g' /data/data/com.termux/files/home/Psiphon/box-for-magisk/tmp/bfm-settings.ini

#replace bfm configs
su -c "mv -f /data/data/com.termux/files/home/Psiphon/box-for-magisk/tmp/bfm-settings.ini /data/adb/box/settings.ini && mv -f /data/data/com.termux/files/home/Psiphon/box-for-magisk/tmp/bfm-clash-v2ray-config.yaml /data/adb/box/clash/config.yaml"

#restart bfm
su -c /data/adb/box/scripts/box.service restart
