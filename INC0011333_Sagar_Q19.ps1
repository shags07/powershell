$a= Get-ChildItem -path HKCU:\ -Recurse | Where-Object {$_.Name -eq "subkey"}
$a
if ($a= ' ' ){
    New-Item -Path HKCU:\ -name Dummy
    New-Item -Path HKCU:\Dummy\ -name newsubkey
}
else{
                $a}

Rename-ItemProperty -Path HKCU:\Dummy -Name newsubkey -NewName Renamedsubkey

