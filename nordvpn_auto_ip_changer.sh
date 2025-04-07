#!/bin/bash

# Optional: enable colors
RED='\033[0;31m'
GREEN='\033[0;32m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

# 🖼️ Fancy header
clear
echo -e "${CYAN}"
echo "╔════════════════════════════════════════════╗"
echo "║     🌐 NordVPN Auto IP Changer Script      ║"
echo "╠════════════════════════════════════════════╣"
echo "║            Created by Angrido 🚀           ║"
echo "╚════════════════════════════════════════════╝"
echo -e "${NC}"
echo ""

# Interactive configuration
read -p "🌍 Enter the country code (e.g., it, us, de): " COUNTRY
read -p "⏳ Enter interval in minutes between IP changes: " INTERVAL

echo ""
echo -e "${GREEN}🌀 Starting NordVPN Auto IP Changer...${NC}"
echo "🌍 Country: $COUNTRY"
echo "🔁 Interval: $INTERVAL minutes"
echo ""

while true; do
    echo -e "${RED}🔌 Disconnecting from current VPN session...${NC}"
    nordvpn disconnect
    sleep 3

    echo -e "${CYAN}🔗 Connecting to a new VPN server in $COUNTRY...${NC}"
    nordvpn connect "$COUNTRY"
    sleep 5

    NEW_IP=$(curl -s ifconfig.me)
    echo -e "${GREEN}✅ New IP: $NEW_IP${NC}"
    echo ""

    echo "⏳ Waiting $INTERVAL minutes before next change..."
    sleep $(($INTERVAL * 60))
    echo ""
done
