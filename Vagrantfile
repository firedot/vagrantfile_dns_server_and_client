Vagrant.configure("2") do |config|

    config.vm.box = "firedot/xenial64"

    config.vm.define vm_name="Server" do |node|
      node.vm.hostname = vm_name
    end

    config.vm.define vm_name2="Client" do |node|
      node.vm.hostname = vm_name2
    end
end
