Vagrant.configure("2") do |config|
  config.vm.box = "centos/7"
  config.vm.hostname = "tools"
  config.vm.network "private_network", ip: "11.11.11.11"
  config.vm.network "forwarded_port", guest:8080, host:8080
  config.vm.provider "virtualbox" do |v|
	v.memory = 4096
	v.cpus = 2
  end
end
