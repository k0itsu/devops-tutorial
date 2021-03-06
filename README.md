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



# TODO:
- Before starting lendy-app improvements, add jenkins to demonstrate ci/cd
  - lendy-app improvements:
    - move the sqlite server to a different docker container
    - add user registration
- use k8s to deploy jenkins
- Add secrets management to ci/cd pipeline
- import ansible playbooks to install:
    > GitLab, DroneCI, SonarQube, etc...
- Add requirements for this project.
    - scripts/ansible.sh : change this to install 2.9.21 explicitly
- Find better way to handle ssh key copy script
    ssh-keygen -b 2048 -t rsa -f /tmp/sshkey -q -N ""
- Add check for kubeadm init and join command if it already ran.
- Create a sample 3-tier application to practice ci/cd with.
- refactor ansible playbooks to use roles and templates.
- add-on ansible packages for:
  - dashboard
  - jenkins
  - prometheus
  - grafana



# DONE: 
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


# INSTRUCTIONS:
spin up the virtual machines with:
`vagrant up`


# NOTE:
`vagrant halt` breaks the cluster. use `vagrant suspend`.

This will deploy 4 centos7 vms.
- controlplane : k8s controlplane/master node
- node1 : worker node for k8s cluster
- node2 : worker node for k8s cluster
- ansible: ansible machine to provision the k8s cluster and other add-on apps

After vagrant does its thing, ssh into the ansible vm with:
`vagrant ssh ansible`

inside the ansible vm run the following playbooks
`cd /vagrant/kube-cluster`
`ansible-playbook kube-dependencies.yml master.yml workers.yml`

TODO: ADD-ONS INSTRUCTIONS

TODO: DEPLOYMENT AND NODEPORT DEMO INSTRUCTIONS

TODO: USING JENKINS FOR CI/CD WHILE WE MAKE IMPROVEMENTS TO LENDY-APP

# FAQ:
- Why centos?

Why not? hahah. While working through a kubernetes course (from kodekloud), the labs were using a version of centos.
Quick google searches led to a lot tutorials of setting up k8s with ansible on ubuntu machines. 
I figured, there's proof in the labs that an automated deploy of k8s on centos is possible, 
so why don't I try to do it myself using the ubuntu tutorials as a base. 
This line of thinking leads to...


- Why is everything not one-click automated?

I wanted this project to highlight the learning process I went through to set up the this project.
My hopes are that a prospective employer will look at this and see a person that is on the path to be competent devops engineer,
at the same time, anyone who is also on this path can follow along with the commit history/logs and learn the very basics of some of the devops tools.
