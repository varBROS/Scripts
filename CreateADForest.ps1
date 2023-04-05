# Create the AD forest and set the forest functional level to Windows Server 2019
# First you need to check if you have Active Directory Module installed on computer. 
# Get-Module -ListAvailable -Name ActiveDirectory
# If not run the below code
Install-WindowsFeature RSAT-AD-PowerShell
# Define the domain name
$DomainName = "sunflow.local"

# Define the safe mode administrator password
$AdminPassword = "P@ssw0rd"

# Create the AD Forest
Install-ADDSForest -DomainName $DomainName -SafeModeAdministratorPassword (ConvertTo-SecureString -String $AdminPassword -AsPlainText -Force) -Force

