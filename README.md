## Overview
The following script is a powershell script design to stand up a Directory controller in Windows Server 2019.
The script takes each step and accomplishes it's task before calling on the next.
The powershell script is to accomplish the following:
1. Install Active-Directory Domain Services(ADDS)
2. Install Active-Directory Domain Name System(ADDS)
3. Promote the Windows Server to Domain Controller(DC)
4. Reserve static IP address and DNS
5. Create an AD Forest, Organizational Units (OU), and users

## Breakdown
To accomplish all the task above. We separated our script into dirent files because some of the steps require the machine to restart for changes to take effect.

We accomplished automation by commanding the scripts to copy the next script file in line to the StartUp folder while simultaneously deleting itself from the folder.
For example:

    #Set startup folder var
    $startup_folder = "$env:APPDATA\Microsoft\Windows\Start Menu\Programs\Startup"

    #Remove and Set next script
    Remove-Item -Path "$startup_folder\Part2.ps1" -Force

    $current_dir = Get-Location

    Copy-Item -Path "$current_dir\Part3.ps1" -Destination $startup_folder -Force
    
After setting up the script for continuity the first step to is to setup the tool used to stand up the DC

- Step one
>>    
    #Installs Active Directory Domain Services(ADDS) and DNS
    Install-WindowsFeature AD-Domain-Services -IncludeManagementTools
    Install-WindowsFeature -Name DNS -IncludeManagementTools
    Import-Module ADDSDeployment
    #Restart Server
    Restart-Computer -Force
    
***AT THIS POINT THE COMPUTER RESTARTS TO APPLY CHANGES***

- Step 2
>>
    # Promote Server to DC
    Install-ADDSForest `
    -CreateDnsDelegation:$false `
    -DatabasePath "C:\Windows\NTDS" `
    -DomainMode "WinThreshold" `
    -DomainName "sunflow.local" `
    -DomainNetbiosName "Sunflow" `
    -ForestMode "WinThreshold" `
    -InstallDns:$true `
    -LogPath "C:\Windows\NTDS" `
    -NoRebootOnCompletion:$false `
    -SysvolPath "C:\Windows\SYSVOL" `
    -Force:$true
    
***AT THIS POINT THE COMPUTER RESTARTS TO APPLY CHANGES***
    
- Step 3
>>
    #Set the DNS server to use the specified IP address
    $netAdapter = Get-NetAdapter | Where-Object {$_.Status -eq "Up"}
    Set-DnsClientServerAddress -InterfaceIndex $netAdapter.ifIndex -ServerAddresses “192.168.1.1”

### varBROS individual scripts

Group member colors:
Marco:closed_book:
Dericus:green_book:
Josh:blue_book:
___
- [x][Create OU](https://github.com/varBROS/Scripts/blob/main/CreatOU.ps1) :green_book:
- [x][Assign User to OU](https://github.com/varBROS/Scripts/blob/main/Create-Assign-User-To-OU.ps1) :green_book:
- [x][Create AD Forest](https://github.com/varBROS/Scripts/blob/main/CreateADForest.ps1) :green_book:
- [x][Installs AD](https://github.com/varBROS/Scripts/blob/main/InstallADDS-p1.ps1) :closed_book:
- [x][Installs DNS](https://github.com/varBROS/Scripts/blob/main/InstallDNS-p2.ps1) :closed_book:
- [x][Rename](https://github.com/varBROS/Scripts/blob/main/Rename.ps1) :blue_book:
- [x][Creates AD](https://github.com/varBROS/Scripts/blob/main/creates-AD-DS.ps1) :closed_book:
- [x][Promote to DC](https://github.com/varBROS/Scripts/blob/main/promoteToDC-p3.ps1) :closed_book:
- [x][Set DNS](https://github.com/varBROS/Scripts/blob/main/setDNS-p4) :closed_book:
- [x][Set static IP](https://github.com/varBROS/Scripts/blob/main/setStatic-p5.ps1) :closed_book:
