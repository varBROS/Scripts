#Install Active Directory Domain Services(ADDS)
Install-WindowsFeature AD-Domain-Services -IncludeManagementTools
#Restart Server
Restart-Computer -Force
----
#Promote server to Domain controller and ser domain
Write-Output
Intall-ADDSforest `
-CreateDnsDelegatio:$false `
-DatabasePath "C:\Windows\NTDS" `
-DomainMode "Winthreshold" `
-DomainName "sunflow.com" `
-DomainNetbiosName "Sunflow" `
-ForestMode "WinThreshold `
-InstallDns:$true `
-LogPath "C:\Windows\NTDS" `
-NoRebootCompletion::$false `
-SysvolPath "C:\Windows\SYSVOL"
-Forece:$true
#Follow prompt to specify the Directory Services Restore MOde()DSRM
#Restart computer if not done by DC promotion
Restart-Computer -F
