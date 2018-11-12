Vagrant.configure("2") do |config|

  config.vm.box = "firedot/xenial64"

  config.vm.define vm_name="server" do |server|
    server.vm.hostname = vm_name
    server.vm.provision "shell", path: "./scripts/install_bind.sh"
    server.vm.network "private_network", ip: "172.28.128.3"
  end

  config.vm.define vm_name="client" do |client|
    client.vm.hostname = vm_name
    client.vm.provision "shell", path: "./scripts/install_dig.sh"
    client.vm.network "private_network", ip: "172.28.128.4"
  end
end
