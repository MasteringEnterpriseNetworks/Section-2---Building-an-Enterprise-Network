/system/identity
set name=router

/ip/dhcp-client
remove 0

/ip/address
add address=192.168.5.1/24 interface=ether1
add address=89.30.80.33/29 interface=ether2
