# vagrantfile_dns_server_and_client
Vagrant file which will configure two VMs - a DNS Server running BIND and a DNS client

## HOW TO USE:

- `vagrant up`
- `vagrant ssh client`
- `dig www.visitbg.local @172.28.128.3`

## TO-DO: 


## DONE

- Created a Vagrantfile
- Create a provisioning script for the Server VM that installs BIND
- Create a provisioning script for the Client that installs ```dig``` if not already installed
- Created a script that configures ```BIND``` on ```Server```
- On the Client VM configure ```/etc/resolv.conf``` to use the server provided by our Server VM 
