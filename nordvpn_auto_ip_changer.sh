#!/bin/bash

# Interactive configuration
read -p "🌍 Enter the country code (e.g., it, us, de): " COUNTRY
read -p "⏳ Enter interval in minutes between IP changes: " INTERVAL

echo ""
echo "🌀 Starting NordVPN Auto IP Changer..."
echo "🌍 Country: $COUNTRY"
echo "🔁 Interval: $INTERVAL minutes"
echo ""

while true; do
    echo "🔌 Disconnecting from current VPN session..."
    nordvpn disconnect
    sleep 3

    echo "🔗 Connecting to a new VPN server in $COUNTRY..."
    nordvpn connect "$COUNTRY"
    sleep 5

    NEW_IP=$(curl -s ifconfig.me)
    echo "✅ New IP: $NEW_IP"
    echo ""

    echo "⏳ Waiting $INTERVAL minutes before next change..."
    sleep $(($INTERVAL * 60))
    echo ""
done