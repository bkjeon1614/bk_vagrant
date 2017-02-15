# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  # box name
  config.vm.box = "trusty-server-cloudimg-amd64-vagrant-disk1.box"
  # port forward
  config.vm.network "forwarded_port", guest: 80, host: 8080
  # network adapter
  config.vm.network "private_network", ip: "192.168.33.10" 
  # shared folder
  config.vm.synced_folder "..", "/var/www/html/data"
end
