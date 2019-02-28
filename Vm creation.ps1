# Set VM Name, Switch Name, and Installation Media Path.
$VMName = 'TESTVM'
$Switch = 'switch1'
$InstallMedia = 'C:\Users\Administrator\Desktop\Sagar\rhel-server-6.5-x86_64-dvd.iso'

# Create New Virtual Machine
New-VM -Name $VMName -MemoryStartupBytes 1610612736  -Generation 1 -NewVHDPath "C:$VMName\$VMName.vhdx" -NewVHDSizeBytes 22011707392 -Path "C:$VMName" -SwitchName $Switch

# Add DVD Drive to Virtual Machine
#Add-VMScsiController -VMName $VMName
Add-VMDvdDrive -VMName $VMName -Path $InstallMedia

# Mount Installation Media
$DVDDrive = Get-VMDvdDrive -VMName $VMName

# Configure Virtual Machine to Boot from DVD
#Set-BiosFirmware -VMName $VMName -BootOrder $DVDDrive -EnableSecureBoot Off

