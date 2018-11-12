Vagrant.configure("2") do |config|

  config.vm.box = "firedot/xenial64"

  config.vm.define vm_name="Server" do |node|
    node.vm.provision "shell", path: "./scripts/bind_install.sh"
    node.vm.hostname = "Server"
    config.vm.network "private_network", type: "dhcp"
  end

  config.vm.define vm_name="Client" do |node|
    node.vm.provision "shell", path: "./scripts/dig_install.sh"
    node.vm.hostname = "Client"
    config.vm.network "private_network", type: "dhcp"
  end
end
