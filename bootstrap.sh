#!/bin/bash
echo "[+] Run me as root!"
echo "Setting up Docker"
curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh
usermod -aG docker pi
systemctl start docker.service
echo "Setting up Docker Compose"
curl -L "https://github.com/docker/compose/releases/download/1.25.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
