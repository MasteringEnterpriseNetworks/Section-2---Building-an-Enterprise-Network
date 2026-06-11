/system/identity
set name=dhcp-relay

/ip/dhcp-client
remove 0

/ip/address
add address=100.10.10.1/24 interface=ether1
add address=200.20.20.1/25 interface=ether2
add address=150.30.30.1/28 interface=ether3

/ip/dhcp-relay
add name=Red-Relay interface=ether1 dhcp-server=150.30.30.5 local-address=100.10.10.1
add name=Blue-Relay interface=ether2 dhcp-server=150.30.30.5 local-address=200.20.20.1
