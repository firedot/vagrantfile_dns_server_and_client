# vagrantfile_dns_server_and_client
Vagrant file which will configure two VMs - a DNS Server running BIND and a DNS client


## TO-DO: 

- Create a provisioning script for the Server VM that installs and configures ```DNS Bind``` for the following:

```
zone `visitbg.local`

ns
soa

`www.visitbg.local` -> A / ip -> 10.10.10.10
````

- Create a provisioning script for the Client that installs ```dig``` if not already installed
- On the Client VM configure ```/etc/resolv.conf``` to use the server provided by our Server VM 


## DONE

- Created a Vagrantfile
