#!/bin/bash
sudo apt-get update -y
sudo apt-get install nginx software-properties-common -y
sudo mkdir /etc/nginx/ssl/
sudo systemctl restart nginx
sudo apt update
sudo apt-get install apt-transport-https ca-certificates curl gnupg-agent software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt update
sudo apt-get install -y docker-ce
sudo groupadd docker
sudo gpasswd -a $USER docker
sudo chmod 666 /var/run/docker.sock