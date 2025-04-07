#!/bin/bash

# CONFIGURATION
COUNTRY="it"         # Change to your preferred country code (e.g. us, ch, fr...)
INTERVAL=10          # Minutes between each IP change

echo "🌀 Starting automatic IP changer with NordVPN..."
echo "🌍 Country: $COUNTRY | 🔁 Every $INTERVAL minutes"

while true; do
    echo "🔌 Disconnecting..."
    nordvpn disconnect
    sleep 3

    echo "🔗 Connecting to a new server in $COUNTRY..."
    nordvpn connect $COUNTRY
    sleep 5

    NEW_IP=$(curl -s ifconfig.me)
    echo "✅ New IP: $NEW_IP"

    echo "⏳ Waiting $INTERVAL minutes before the next change..."
    sleep $(($INTERVAL * 60))
done
