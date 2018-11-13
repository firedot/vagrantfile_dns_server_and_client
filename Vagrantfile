Vagrant.configure("2") do |config|

  #base box
  config.vm.box = "firedot/xenial64"

  #our dns server
  config.vm.define "server" do |server|
    server.vm.hostname = "server"
    server.vm.provision "shell", path: "./scripts/install_bind.sh"
    server.vm.provision "shell", path: "./scripts/setup_bind.sh"
    server.vm.network "private_network", ip: "172.28.128.3"
  end

  #our dns client
  config.vm.define "client" do |client|
    client.vm.hostname = "client"
    client.vm.provision "shell", path: "./scripts/install_dig.sh"
    client.vm.provision "shell", path: "./scripts/client_netconfig.sh"
    client.vm.network "private_network", ip: "172.28.128.4"
  end

end
