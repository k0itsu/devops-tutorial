# devops-tutorial

This is based off hands-on-Devops course located at
https://github.com/nemonik/hands-on-DevOps

Trying to run his vagrant config on my home machine wouldn't work,
so I took the opportunity to try and recreate his coursework as best
as I could.

TODO:
- set up k3s using ansible
- import ansible playbooks to install:
  GitLab, DroneCI, SonarQube, etc...
- Add a way to install the following vagrant plugins if it's not installed
  vagrant-vbguest
- The original course builds a box (to save time during re-provisioning).
  Our version doesn't do this. Might be good to try and replicate building a
  base box.
- Add hostnames to virtualbox vm's?
- Add requirements for this project.
- Hello World!