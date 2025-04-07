# 🌐 NordVPN Auto IP Changer

A simple and interactive bash script that automatically changes your NordVPN IP address every X minutes — perfect for privacy-focused users, torrenting, or bypassing IP-based restrictions.

---

## ✨ Features

- 🔄 Auto reconnect to a new NordVPN server
- 🌍 Choose your preferred country
- ⏱️ Set custom time interval between IP changes
- ✅ Displays your new public IP after each reconnect
- 📦 Lightweight and terminal-friendly

---

## ⚙️ Requirements

- 🧭 [NordVPN](https://nordvpn.com/)
- 🛜 Active NordVPN subscription & logged in (`nordvpn login -token YOURTOKEN`)

---

## 🚀 How to Use

1. **Clone the repo or download the script:**
```bash
wget https://raw.githubusercontent.com/Angrido/NordVPN-Auto-IP-Changer/main/nordvpn_auto_ip_changer.sh
```
**Or:**
```bash
curl -O https://raw.githubusercontent.com/Angrido/NordVPN-Auto-IP-Changer/main/nordvpn_auto_ip_changer.sh
```


2. **Make the script executable:**
```bash
chmod +x nordvpn_auto_ip_changer.sh
```

3. **Run the script:**
```bash
./nordvpn_auto_ip_changer.sh
```
---

## 📷 Example

🌍 Enter the country code (e.g., it, us, de): it  
⏳ Enter the interval in minutes between IP changes: 10  

🌀 Starting NordVPN Auto IP Changer...  
🌍 Country: it  
🔁 Interval: 10 minutes  
🔌 Disconnecting...  
🔗 Connecting to a new VPN server in Italy...  
✅ New IP: 185.66.XX.XXX  
⏳ Waiting 10 minutes before the next change...

