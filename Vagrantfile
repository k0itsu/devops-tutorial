# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "centos/7"
  config.vm.box_version = "2004.01"
  config.vm.synced_folder ".", "/vagrant"
  # This shell script will copy the public and private key for ansible
  config.vm.provision "shell", path: "ssh_script.sh"
  # This will allow vbguest plugin to work on centos/7
  config.vbguest.installer_options = { allow_kernel_upgrade: true }

  config.vm.define "node1" do |machine|
    machine.vm.network "private_network", ip: "10.10.10.100"
  end

  config.vm.define "node2" do |machine|
    machine.vm.network "private_network", ip: "10.10.10.101"
  end

  config.vm.define "controller" do |machine|
    machine.vm.network "private_network", ip: "10.10.10.10"

    machine.vm.provision :ansible_local do |ansible|
      ansible.playbook = "example.yml"
      ansible.verbose = true
      ansible.install = true
      # ansible.limit = "all"
      ansible.inventory_path = "inventory"
    end
  end
end
