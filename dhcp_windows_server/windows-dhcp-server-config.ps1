# Install DHCP service
Import-Module -Name ServerManager
Install-WindowsFeature -Name DHCP -IncludeManagementTools

# Load cmdlets
Import-Module -Name DhcpServer

# Create local group
Add-DhcpServerSecurityGroup

# Update registry showing DHCP is ready
$RegUpdate = @{
  Path  = 'HKLM:\SOFTWARE\Microsoft\ServerManager\Roles\12'
  Name  = 'ConfigurationState'
  Value = 2
}
Set-ItemProperty @RegUpdate

# Create new DHCP pool
$DhcpScope = @{
  Name          = 'Scope1'
  StartRange    = '200.200.200.20'
  EndRange      = '200.200.200.200'
  SubnetMask    = '255.255.255.0'
  LeaseDuration = '0.08:00:00'
  State         = 'Active'
}
Add-DhcpServerV4Scope @DhcpScope

# Additional options
$DhcpOptions = @{
  ScopeID   = '200.200.200.0'
  Router    = '200.200.200.1'
  DnsDomain = 'red.net'
  DnsServer = '200.200.200.254'
}
Set-DhcpServerV4OptionValue @DhcpOptions

# Restart service
Restart-Service -Name DhcpServer
