# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  # Using geerlingguy/centos7 to save some time during the vagrant up process
  config.vm.box = "geerlingguy/centos7"
  config.vm.box_version = "1.2.25"
  
  # config.vm.synced_folder ".", "/vagrant"
  
  # This shell script will copy the public and private key for ansible
  config.vm.provision "shell", path: "scripts/ssh_script.sh"
  
  # This will allow vbguest plugin to work on centos/7
  # config.vbguest.installer_options = { allow_kernel_upgrade: true }

  config.vm.define "ansible" do |machine|
    machine.vm.hostname = "ansible"
    machine.vm.network "private_network", ip: "10.10.10.10"
    machine.vm.provision "shell", path: "scripts/ansible.sh"
  end

  config.vm.define "controlplane" do |machine|
    machine.vm.hostname = "controlplane"
    machine.vm.network "private_network", ip: "10.10.10.20"
  end

  config.vm.define "node1" do |machine|
    machine.vm.hostname = "node1"
    machine.vm.network "private_network", ip: "10.10.10.100"
  end

  # config.vm.define "node2" do |machine|
  #   machine.vm.hostname = "node2"
  #   machine.vm.network "private_network", ip: "10.10.10.101"
  # end

end
