$fir=Read-Host -Prompt "Enter Directory Path"
(Get-ChildItem -Path $fir | ? {
  $_.LastAccessTime -gt (Get-Date).AddDays(-3) 
}) | ft Name , LastAccessTime 
