# Set Network adapter name and IP config
$adapterName = "Ethernet"

#Enter IP outside range
$IPAddress = "192.168.1.9"
$subnetMask = "255.255.255.0"

#pfSense LAN IP
$defaultGateway = "192.168.1.1"
$dns1 = "192.168.1.1"
$dns2 = "8.8.4.4"

# Set Network adapter to use static IP
$interface = Get-NetAdapter -InterfaceAlias $adapterName
New-NetIPAddress -InterfaceIndex $interface.ifIndex -IPAddress $IPAddress -PrefixLength 24 -DefaultGateway $defaultGateway

# Set subnetmask
New-NetIPAddress -InterfaceIndex $interface.ifIndex -AddressFamily IPV4 -PrefixLength 24 -SkipAsSource $true

# Set DNS servers
Set-DnsClientServerAddress -InterfaceAlias $adapterName -ServerAddresses @($dns1, $dns2)
