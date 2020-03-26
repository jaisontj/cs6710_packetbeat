#!/bin/bash
echo "setting packetbeat repo"
wget -O - https://raw.githubusercontent.com/RaoulDuke-Esq/Beats-Pi/master/beats-pi.gpg.key | sudo apt-key add -
echo "deb https://raw.githubusercontent.com/RaoulDuke-Esq/Beats-Pi/master buster main" | sudo tee -a /etc/apt/sources.list.d/beats-pi.list
echo "getting packetbeat"
sudo apt-get -y update && sudo apt-get sudo apt-get install packetbeat
