#Installs Active Directory Domain Services(ADDS)
Install-WindowsFeature AD-Domain-Services -IncludeManagementTools
Import-Module ADDSDeployment

#Restart Server
Restart-Computer -Force
