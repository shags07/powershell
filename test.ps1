hostname | Out-File -Append hostname.txt

function OS_info(){

$hname = Invoke-Expression hostname
$Bman= Invoke-Expression (Get-WmiObject -Class Win32_Bios | Format-List -Property Manufacturer)
$Overs= Invoke-Expression (Get-WMIObject win32_operatingsystem).Version
$Oinda= Invoke-Expression (Get-WMIObject win32_operatingsystem).InstallDate
$CustomObject = New-Object -TypeName psobject
$CustomObject | Add-Member -MemberType NoteProperty -Name ComputerName -Value $hname
$CustomObject | Add-Member -MemberType NoteProperty -Name OSVersion -Value $Overs
$CustomObject | Add-Member -MemberType NoteProperty -Name InstallDate -Value $OInda
$CustomObject | Add-Member -MemberType NoteProperty -Name BIOSMAnufacturer -Value $Bman
$CustomObject | ConvertTo-Html | Out-File output.html



}