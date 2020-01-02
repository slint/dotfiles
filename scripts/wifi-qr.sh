#!/bin/bash

wicd_conf="/etc/wicd/wireless-settings.conf"

if [ "$1" = "-s" ] || [ "$1" = "--select" ]; then
    # If not default, parse the "/etc/wicd/wireless-settings.conf" file to get
    # WiFi network names, and select via "fzf"
    ssid=$(sudo confget -f $wicd_conf -q sections | grep essid | sed 's/essid\://g' | fzf --prompt "WiFi SSID > ")
else
    # By default share QR code of the currently active network
    ssid="$(iwgetid -r)"
fi

if [ -z "$ssid" ]; then
    echo "No SSID was found..."
    exit 1
fi

wifi_pass="$(sudo confget -f $wicd_conf -s essid:$ssid apsk)"
wifi_hidden="$(sudo confget -f $wicd_conf -s essid:$ssid hidden | tr '[:upper:]' '[:lower:]')"
qr "WIFI:S:$ssid;T:WPA;P:$wifi_pass;H:$wifi_hidden;"
