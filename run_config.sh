#!/bin/bash

# Install Docker
sudo yum install docker -y
sudo systemctl start docker
sudo systemctl enable docker
sudo docker version

# Add the user to the docker group
sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker

# Install Docker Compose
curl -SL https://github.com/docker/compose/releases/download/v2.23.0/docker-compose-linux-x86_64 -o docker-compose
chmod +x docker-compose
sudo mv docker-compose /usr/bin/

docker-compose --version
mkdir tugas
curl -O https://raw.githubusercontent.com/PutuGdeUKDW/CloudProject/main/docker-compose.yml
curl -O https://github.com/PutuGdeUKDW/CloudProject/blob/main/nginx.conf
sudo mv docker-compose.yml tugas/
sudo mv nginx.conf tugas/


