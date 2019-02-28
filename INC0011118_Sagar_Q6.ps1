function os-info{

$computers= "C:\Users\Administrator\hostname.txt"
foreach ($comp in $computers) {

    $custom_object = Get-CimInstance -ClassName Win32_ComputerSystem -ComputerName $comp
    $bios = Get-CimInstance -ClassName Win32_BIOS -ComputerName $comp

    $custom_object = @{
        'ComputerName' = $comp;
        'Manufacturer' = $custom_object.Manufacturer;
        'InstallDate' = $custom_object.InstallDate;
        'BIOSVersion' = $bios.SMBIOSBIOSVersion


    }
    
}

}
$report = New-Object -Property $custom_object | ConvertTo-Html | Out-File \info.html