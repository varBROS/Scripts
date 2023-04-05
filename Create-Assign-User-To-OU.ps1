# Create Users and Assign them to the Correct OU
# CEO
New-ADUser -Name "Adam Johnson" -GivenName "Adam" -Surname "Johnson" -Path "OU=CEO,DC=sunflow,DC=local" -AccountPassword (ConvertTo-SecureString "P@ssw0rd" -AsPlainText -Force) -Enabled $true

# Engineering Department
New-ADUser -Name "Aisha Khan" -GivenName "Aisha" -Surname "Khan" -Path "OU=Engineering Department,DC=sunflow,DC=local" -AccountPassword (ConvertTo-SecureString "P@ssw0rd" -AsPlainText -Force) -Enabled $true
New-ADUser -Name "Javier Rodriguez" -GivenName "Javier" -Surname "Rodriguez" -Path "OU=Engineering Department,DC=sunflow,DC=local" -AccountPassword (ConvertTo-SecureString "P@ssw0rd" -AsPlainText -Force) -Enabled $true
New-ADUser -Name "Amira Ahmed" -GivenName "Amira" -Surname "Ahmed" -Path "OU=Engineering Department,DC=sunflow,DC=local" -AccountPassword (ConvertTo-SecureString "P@ssw0rd" -AsPlainText -Force) -Enabled $true
New-ADUser -Name "Adam Ali" -GivenName "Adam" -Surname "Ali" -Path "OU=Engineering Department,DC=sunflow,DC=local" -AccountPassword (ConvertTo-SecureString "P@ssw0rd" -AsPlainText -Force) -Enabled $true
New-ADUser -Name "Maria Garcia" -GivenName "Maria" -Surname "Garcia" -Path "OU=Engineering Department,DC=sunflow,DC=local" -AccountPassword (ConvertTo-SecureString "P@ssw0rd" -AsPlainText -Force) -Enabled $true
New-ADUser -Name "Ahmed Ali" -GivenName "Ahmed" -Surname "Ali" -Path "OU=Engineering Department,DC=sunflow,DC=local" -AccountPassword (ConvertTo-SecureString "P@ssw0rd" -AsPlainText -Force) -Enabled $true
New-ADUser -Name "Tom Wright" -GivenName "Tom" -Surname "Wright" -Path "OU=Engineering Department,DC=sunflow,DC=local" -AccountPassword (ConvertTo-SecureString "P@ssw0rd" -AsPlainText -Force) -Enabled $true

# Operations Department
New-ADUser -Name "Sarah Patel" -GivenName "Sarah" -Surname "Patel" -Path "OU=Operations Department,DC=sunflow,DC=local" -AccountPassword (ConvertTo-SecureString "P@ssw0rd" -AsPlainText -Force) -Enabled $true
New-ADUser -Name "Mustafa Khan" -GivenName "Mustafa" -Surname "Khan" -Path "OU=Operations Department,DC=sunflow,DC=local" -AccountPassword (ConvertTo-SecureString "P@ssw0rd" -AsPlainText -Force) -Enabled $true
New-ADUser -Name "Emma Brown" -GivenName "Emma" -Surname "Brown" -Path "OU=Operations Department,DC=sunflow,DC=local" -AccountPassword (ConvertTo-SecureString "P@ssw0rd" -AsPlainText -Force) -Enabled $true
New-ADUser -Name "Naveed Ahmed" -GivenName "Naveed" -Surname "Ahmed" -Path "OU=Operations Department,DC=sunflow,DC=local" -AccountPassword (ConvertTo-SecureString "P@ssw0rd" -AsPlainText -Force) -Enabled $true
New-ADUser -Name "Abdul Rahman" -GivenName "Abdul" -Surname "Rahman" -Path "OU=Operations Department,DC=sunflow,DC=local" -AccountPassword (ConvertTo-SecureString "P@ssw0rd" -AsPlainText -Force) -Enabled $true
New-ADUser -Name "Isabel Lopez" -GivenName "Isabel" -Surname "Lopez" -Path "OU=Operations Department,DC=sunflow,DC=local" -AccountPassword (ConvertTo-SecureString "P@ssw0rd" -AsPlainText -Force) -Enabled $true

# Sales & Marketing Department
New-ADUser -Name "Harry Thompson" -GivenName "Harry" -Surname "Thompson" -Path "OU=Sales & Marketing Department,DC=sunflow,DC=local" -AccountPassword (ConvertTo-SecureString "P@ssw0rd" -AsPlainText -Force) -Enabled $true
New-ADUser -Name "Sofia Gomez" -GivenName "Sofia" -Surname "Gomez" -Path "OU=Sales & Marketing Department,DC=sunflow,DC=local" -AccountPassword (ConvertTo-SecureString "P@ssw0rd" -AsPlainText -Force) -Enabled $true
New-ADUser -Name "Mohammed Ali" -GivenName "Mohammed" -Surname "Ali" -Path "OU=Sales & Marketing Department,DC=sunflow,DC=local" -AccountPassword (ConvertTo-SecureString "P@ssw0rd" -AsPlainText -Force) -Enabled $true
New-ADUser -Name "Mira Patel" -GivenName "Mira" -Surname "Patel" -Path "OU=Sales & Marketing Department,DC=sunflow,DC=local" -AccountPassword (ConvertTo-SecureString "P@ssw0rd" -AsPlainText -Force) -Enabled $true
New-ADUser -Name "Ali Khan" -GivenName "Ali" -Surname "Khan" -Path "OU=Sales & Marketing Department,DC=sunflow,DC=local" -AccountPassword (ConvertTo-SecureString "P@ssw0rd" -AsPlainText -Force) -Enabled $true
New-ADUser -Name "Carmen Rodriquez" -GivenName "Carmen" -Surname "Rodriguez" -Path "OU=Sales & Marketing Department,DC=sunflow,DC=local" -AccountPassword (ConvertTo-SecureString "P@ssw0rd" -AsPlainText -Force) -Enabled $true
New-ADUser -Name "Liam Wilson" -GivenName "Liam" -Surname "Wilson" -Path "OU=Sales & Marketing Department,DC=sunflow,DC=local" -AccountPassword (ConvertTo-SecureString "P@ssw0rd" -AsPlainText -Force) -Enabled $true

# Customer Service Department
New-ADUser -Name "Olivia Green" -GivenName "Olivia" -Surname "Green" -Path "OU=Customer Service Department,DC=sunflow,DC=local" -AccountPassword (ConvertTo-SecureString "P@ssw0rd" -AsPlainText -Force) -Enabled $true
New-ADUser -Name "Rosa Hernandez" -GivenName "Rosa" -Surname "Hernandez" -Path "OU=Customer Service Department,DC=sunflow,DC=local" -AccountPassword (ConvertTo-SecureString "P@ssw0rd" -AsPlainText -Force) -Enabled $true
New-ADUser -Name "David Chen" -GivenName "David" -Surname "Chen" -Path "OU=Customer Service Department,DC=sunflow,DC=local" -AccountPassword (ConvertTo-SecureString "P@ssw0rd" -AsPlainText -Force) -Enabled $true
New-ADUser -Name "Georgia Evans" -GivenName "Georgia" -Surname "Evans" -Path "OU=Customer Service Department,DC=sunflow,DC=local" -AccountPassword (ConvertTo-SecureString "P@ssw0rd" -AsPlainText -Force) -Enabled $true
New-ADUser -Name "Antonio Rodriguez" -GivenName "Antonio" -Surname "Rodriguez" -Path "OU=Customer Service Department,DC=sunflow,DC=local" -AccountPassword (ConvertTo-SecureString "P@ssw0rd" -AsPlainText -Force) -Enabled $true
New-ADUser -Name "Aaliyah Ahmed" -GivenName "Aaliyah" -Surname "Ahmed" -Path "OU=Customer Service Department,DC=sunflow,DC=local" -AccountPassword (ConvertTo-SecureString "P@ssw0rd" -AsPlainText -Force) -Enabled $true
New-ADUser -Name "Tariq Khan" -GivenName "Tariq" -Surname "Khan" -Path "OU=Customer Service Department,DC=sunflow,DC=local" -AccountPassword (ConvertTo-SecureString "P@ssw0rd" -AsPlainText -Force) -Enabled $true


















