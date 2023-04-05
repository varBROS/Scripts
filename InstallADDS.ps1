#Installs Active Directory Domain Services(ADDS)
Install-WindowsFeature AD-Domain-Services -IncludeManagementTools

#Restart Server
Restart-Computer -Force
