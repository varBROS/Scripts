# Define variables for the old and new computer names
$oldName = "WIN-6RU7A1VDDIS"
$newName = "Sunflow"
# Rename the computer
Rename-Computer -ComputerName $oldName -NewName $newName -Force -Restart
