# devops-tutorial

This is based off hands-on-Devops course located at
https://github.com/nemonik/hands-on-DevOps

Trying to run his vagrant config on my home machine wouldn't work,
so I took the opportunity to try and recreate his environment
as a learning process.

kubeadm ansible install are a modified version of digital ocean's tutorial:
https://www.digitalocean.com/community/tutorials/how-to-create-a-kubernetes-cluster-using-kubeadm-on-ubuntu-18-04

VERSIONS:
- ansible 2.9.21
- vagrant 2.2.16
- virtualbox 6.2.22

NOTE:
vagrant halt breaks the cluster. use vagrant suspend.

TODO:
- import ansible playbooks to install:
    > GitLab, DroneCI, SonarQube, etc...
- Add requirements for this project.
    - scripts/ansible.sh : change this to install 2.9.21 explicitly
- Find better way to handle ssh key copy script
    ssh-keygen -b 2048 -t rsa -f /tmp/sshkey -q -N ""
- Add check for kubeadm init and join command if it already ran.
- Create a sample 3-tier application to practice ci/cd with.

DONE: 
- Add hostnames to virtualbox vm's?
- The original course builds a box (to save time during re-provisioning).
  Our version doesn't do this. Might be good to try and replicate building a
  base box.
    - geerlingguy/centos7 image has new version of guest addons in.
      This cuts down on the initial provision time.
- set up k3s using ansible
    > k3s github repo doesn't add the nodes,
      try and build a kubernetes cluster using kubeadm instead
    *** used https://www.digitalocean.com/community/tutorials/how-to-create-a-kubernetes-cluster-using-kubeadm-on-ubuntu-18-04
    as a template to create kubeadm cluster ansible scripts
- Digital Ocean is expecting python3, should we install it as part of prereq?
    *** there was an issue with ansible modules using python3 in centos, using python2 for now.