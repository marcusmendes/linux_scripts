#!/bin/bash

echo "INSTALL PACKAGES"

sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common

echo "ADD DOCKER OFFICIAL GPG KEY"
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

echo "SETUP STABLE REPOSITORY"
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

echo "INSTALL DOCKER"
sudo apt-get update && sudo apt-get install -y docker-ce docker-ce-cli containerd.io

echo "ADD YOUR USER TO DOCKER GROUP"
sudo usermod -aG docker $USER

echo "INSTALL DOCKER COMPOSE"
sudo curl -L "https://github.com/docker/compose/releases/download/1.27.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

sudo chmod +x /usr/local/bin/docker-compose

echo "FINISH - RESTART YOUR COMPUTER!!!"
