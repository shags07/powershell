

$a =300
$b =0

try
{
 $c = $a/$b
 $content = get-content -Path “C:\SomeFolder”


}
catch [System.Exception]
{
   Write-Output  "WARNING: Found  System.Exception"
}
catch [ CommandNotFoundException]
{
    Write-Output "WARNING: Found  CommandNotFoundException"
}
catch [ DirectoryNotFoundException]
{
     Write-Output "WARNING: Found  DirectoryNotFoundException"
}


