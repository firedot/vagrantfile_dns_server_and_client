Vagrant.configure("2") do |config|

  config.vm.box = "firedot/xenial64"

  config.vm.define "server" do |server|
    server.vm.hostname = "server"
    server.vm.provision "shell", path: "./scripts/install_bind.sh"
    server.vm.provision "shell", path: "./scripts/setup_bind.sh"
    server.vm.network "private_network", ip: "172.28.128.3"
  end

  config.vm.define "client" do |client|
    client.vm.hostname = "client"
    client.vm.provision "shell", path: "./scripts/install_dig.sh"
    client.vm.provision "shell", path: "./scripts/client_netconfig.sh"
    client.vm.network "private_network", ip: "172.28.128.4",
        auto_config: false
  end
end
