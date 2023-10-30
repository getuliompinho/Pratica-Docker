#!/bin/bash

sudo yum update -y

sudo yum install docker -y

sudo systemctl start docker
sudo systemctl enable docker

curl -L "https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

curl -sL "https://github.com/getuliompinho/Pratica-Docker/blob/main/docker-compose.yaml" --output "/home/ec2-user/docker-compose.yaml"

sudo yum install nfs-utils -y

sudo mkdir /mnt/efs

sudo chmod 777 /mnt/efs

sudo mount -t nfs4 -o nfsvers=4.1,rsize=1048576,wsize=1048576,hard,timeo=600,retrans=2,noresvport fs-07c68e847f4ea9744.efs.us-east-1.amazonaws.com:/ /mnt/efs

echo "fs-07c68e847f4ea9744.efs.us-east-1.amazonaws.com:/ /mnt/efs nfs defaults 0 0" | sudo tee -a /etc/fstab

sudo usermod -aG docker ${USER}

sudo chmod 666 /var/run/docker.sock

docker-compose -f /home/ec2-user/docker-compose.yaml up -d
