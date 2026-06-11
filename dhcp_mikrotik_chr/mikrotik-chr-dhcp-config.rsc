/system/identity
set name=mikrotik-chr

/ip/dhcp-client
remove 0

/ip/address
add address=178.58.58.254/24 interface=ether1

/ip/pool
add name=blue_pool ranges=178.58.58.1-178.58.58.253

/ip/dhcp-server
add name=blue_dhcp interface=ether1 lease-time=1800 address-pool=blue_pool
