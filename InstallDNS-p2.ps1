#Install DNS
Install-WindowsFeature -Name DNS -IncludeManagementTools

#Restart Server/DC
Restart-Computer -Force
