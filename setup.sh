#!/bin/env bash

################################################################

set -e

################################################################

echo "🏠 Moving to the home directory..."
cd ~
echo "✅ Done"

################################################################

#echo "🧹 Removing any Docker Engine dependencies..."
#for pkg in docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc; do sudo apt-get remove $pkg; done
#echo "✅ Done"

################################################################

echo "📦 Installing Docker Engine...: https://docs.docker.com/engine/install/ubuntu/"
# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "${UBUNTU_CODENAME:-$VERSION_CODENAME}") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
echo "✅ Done"

################################################################

echo "🧪 Testing correct installation..."
sudo docker run hello-world
echo "✅ Done"

################################################################

echo "📥 Cloning 'metrics-agent'..."
git clone https://github.com/ROBotics-OBServability/metrics-agent.git
echo "✅ Done"

################################################################

echo "📂 Move to the 'metrics-agent' directory..."
cd metrics-agent
echo "✅ Done"

################################################################

echo "🐳 Starting Docker services..."
sudo docker compose up -d
echo "✅ Done"

################################################################

echo "🚀 Ready to fly."
