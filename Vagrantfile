# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|

  config.ssh.insert_key = false
  config.vm.box = "vStone/centos-7.x-puppet.3.x"
  config.vm.box_check_update = true

  config.vm.synced_folder "puppet/hiera_data", "/var/lib/hiera"

  config.vm.provision "puppet" do |puppet|
    env = 'dev'
    puppet.hiera_config_path = "puppet/hiera.yaml"
    puppet.manifest_file = ""
    puppet.manifests_path = "puppet/#{env}/manifests"
    puppet.module_path = "puppet/modules"
    puppet.options = "--environment #{env}"
    # puppet.options = "--verbose --debug"
    # puppet.options = "--graph"
  end

  config.vm.define "jenkins-install" do |node|
    node.vm.hostname = "jenkins-install"
    node.vm.network "private_network", ip: "10.7.0.44"
    config.vm.provider "virtualbox" do |v|
      v.memory = 1024
      v.cpus = 1
    end
  end
end