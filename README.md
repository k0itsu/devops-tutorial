# devops-tutorial

This is based off hands-on-Devops course located at
https://github.com/nemonik/hands-on-DevOps

Trying to run his vagrant config on my home machine wouldn't work,
so I took the opportunity to try and recreate his coursework as best
as I could.

k3s-ansible playbooks/roles are from https://github.com/k3s-io/k3s-ansible

vagrant ssh k3s_master to reach the k3s cluster
make sure to run kubectl commands as sudo

TODO:
- set up k3s using ansible
    > k3s github repo doesn't add the nodes,
      try and build a kubernetes cluster using kubeadm instead
- import ansible playbooks to install:
    > GitLab, DroneCI, SonarQube, etc...
- Add a way to install the following vagrant plugins if it's not installed
    > vagrant-vbguest
- The original course builds a box (to save time during re-provisioning).
  Our version doesn't do this. Might be good to try and replicate building a
  base box.
- Add requirements for this project.
    - scripts/ansible.sh : change this to install 2.9.21 explicitly

DONE: 
- Add hostnames to virtualbox vm's?

VERSIONS:
- ansible 2.9.21
- vagrant 2.2.16
- virtualbox 6.2.22
