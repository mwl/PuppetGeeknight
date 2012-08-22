# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|
  config.vm.box = "lucid64"
  config.vm.box_url = "http://files.vagrantup.com/lucid64.box"

  config.vm.provision :puppet, :module_path => "modules" do |puppet|
    puppet.manifests_path = "manifests"
    puppet.manifest_file = "site.pp"
  end

  config.vm.define :www do |config|
    config.vm.forward_port 8080, 8080
    config.vm.host_name = "www.git.io"
  end

  config.vm.define :riak01 do |config|
    config.vm.host_name = "riak01.git.io"
  end
end
