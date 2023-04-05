
# Create Organizational Units
New-ADOrganizationalUnit -Name "CEO" -Path "DC=sunflow,DC=local"
New-ADOrganizationalUnit -Name "Engineering Department" -Path "DC=sunflow,DC=local"
New-ADOrganizationalUnit -Name "Operations Department" -Path "DC=sunflow,DC=local"
New-ADOrganizationalUnit -Name "Sales & Marketing Department" -Path "DC=sunflow,DC=local"
New-ADOrganizationalUnit -Name "Customer Service Department" -Path "DC=sunflow,DC=local"
