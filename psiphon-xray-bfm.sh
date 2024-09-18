#!/data/data/com.termux/files/usr/bin/sh

if [ ! -f /data/data/com.termux/files/home/Psiphon/box-for-magisk/bfm-xray-config.json ]; then
    echo "V2ray config not found!"
    exit 1
fi

#prepare tmp directory
mkdir -p /data/data/com.termux/files/home/Psiphon/box-for-magisk/tmp
rm -rf /data/data/com.termux/files/home/Psiphon/box-for-magisk/tmp/*
cp /data/data/com.termux/files/home/Psiphon/box-for-magisk/bfm-settings.ini /data/data/com.termux/files/home/Psiphon/box-for-magisk/tmp/bfm-settings.ini
cp /data/data/com.termux/files/home/Psiphon/box-for-magisk/bfm-clash-config.yaml /data/data/com.termux/files/home/Psiphon/box-for-magisk/tmp/bfm-clash-config.yaml
cp /data/data/com.termux/files/home/Psiphon/box-for-magisk/bfm-xray-config.json /data/data/com.termux/files/home/Psiphon/box-for-magisk/tmp/bfm-xray-config.json

sed -i 's/bin_name=\"clash\"/bin_name=\"xray\"/g' /data/data/com.termux/files/home/Psiphon/box-for-magisk/tmp/bfm-settings.ini
sed -i 's/bin_name=\"sing-box\"/bin_name=\"xray\"/g' /data/data/com.termux/files/home/Psiphon/box-for-magisk/tmp/bfm-settings.ini
sed -i 's/bin_name=\"v2fly\"/bin_name=\"xray\"/g' /data/data/com.termux/files/home/Psiphon/box-for-magisk/tmp/bfm-settings.ini

#replace bfm configs
su -c "mv -f /data/data/com.termux/files/home/Psiphon/box-for-magisk/tmp/bfm-settings.ini /data/adb/box/settings.ini && mv -f /data/data/com.termux/files/home/Psiphon/box-for-magisk/tmp/bfm-xray-config.json /data/adb/box/xray/config.json"

#restart bfm
su -c /data/adb/box/scripts/box.service restart
