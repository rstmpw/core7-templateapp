# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "CentOS7"
  config.vm.box_url = "http://files.rstm.pw/vagrant/CentOS7.json"

  config.vm.network "private_network", ip: "192.168.222.200"

  config.vm.synced_folder "./", "/vagrant", type: "virtualbox"

  config.vm.provision "shell", inline: <<-SHELL
    bash <(curl -Ls https://raw.githubusercontent.com/rstmpw/docker/master/dist/install.sh)
    /vagrant/provisioning/php-fpm.sh
    /vagrant/provisioning/php-cli.sh
	/vagrant/provisioning/nginx.sh
  SHELL

  config.vm.provision "shell", run: "always", inline: <<-SHELL
  	/vagrant/provisioning/envrestart.sh
  SHELL
end
