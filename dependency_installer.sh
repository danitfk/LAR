#!/bin/bash
check_kali=$(grep -o kali /etc/debian_version)
if [[ "$check_kali" == "kali" ]]; then
echo "OS detected successfully"
else
echo "OS Not supported. Only KALI LINUX"
exit 1
fi
echo ""
echo "Step 0/6: Natural requirements"
apt install build-essential curl -qy
echo "Step 1/6: Running apt-get update"
echo "Installing packages"
echo "Step 2/6: Checking/Installing Theharvester"
apt install theharvester -qy
echo ""
echo "Step 3/6: Checking/Installing Whois"
apt install whois -qy
echo ""
echo "Step 4/6: Checking/Installing DNSrecom"
apt install dnsrecon -qy
echo ""
echo "Step 5/6: Checking/Installing Metagoofil"
apt install metagoofil -qy
echo ""
echo "Step 6/6: Checking/Installing Knockpy"
apt install knockpy -qy
echo ""
echo "Done"
