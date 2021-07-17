#!/bin/sh -ux
#!/usr/bin/env bash

mkdir -pm 700 /home/vagrant/.ssh

curl --insecure https://raw.githubusercontent.com/k0itsu/devops-tutorial/main/scripts/ssh_files/public_key >> /home/vagrant/.ssh/authorized_keys
curl --insecure https://raw.githubusercontent.com/k0itsu/devops-tutorial/main/scripts/ssh_files/private_key > /home/vagrant/.ssh/id_rsa

chown -R vagrant:vagrant /home/vagrant/.ssh
chmod 644 /home/vagrant/.ssh/authorized_keys
chmod 600 /home/vagrant/.ssh/id_rsa

# yum update -y
# yum install -y python3