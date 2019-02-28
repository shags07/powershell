$a=Get-ChildItem -Path HKCU:\  | where-Object {($_.SubkeyCount -gt 3)} 
$a