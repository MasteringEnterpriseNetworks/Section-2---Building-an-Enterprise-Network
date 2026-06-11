# Set static address
$StaticIP = @{
  InterfaceAlias = 'Ethernet'
  PrefixLength   = 24
  IPAddress      = '200.200.200.254'
  AddressFamily  = 'IPv4'
}
New-NetIPAddress @StaticIP
