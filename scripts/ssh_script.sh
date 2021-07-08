#!/bin/sh -ux
#!/usr/bin/env bash

mkdir -pm 700 /home/vagrant/.ssh
chown -R vagrant:vagrant /home/vagrant/.ssh

curl --insecure https://raw.githubusercontent.com/k0itsu/devops-tutorial/main/scripts/ssh_files/id_rsa.pub >> /home/vagrant/.ssh/authorized_keys
curl --insecure https://raw.githubusercontent.com/k0itsu/devops-tutorial/main/scripts/ssh_files/id_rsa > /home/vagrant/.ssh/id_rsa

chmod 644 /home/vagrant/.ssh/authorized_keys
chmod 600 /home/vagrant/.ssh/id_rsa