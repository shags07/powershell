Write-Host "H - Handles
P - Paged Memory(K)
W - working set(K)"

$char = Read-Host -Prompt " Enter the character to view the processes"
if($char -eq "H")
        {
        $process = Read-Host "Enter Handle number"
        Get-Process | Where-Object {$_.Handles -gt $process} | Format-Table Id,Name,Handles
        }
    
elseif($char -eq "P")
    {
        $process = Read-Host "Enter Paged Memory number"
        Get-Process | Where-Object {$_.PM/1024 -gt $process} | Format-Table Id,Name,PM
    }
    
elseif($char -eq "W"){
        $process = Read-Host "Enter working set number"
        Get-Process | Where-Object {$_.WS/1024 -gt $process} | Format-Table Id,Name,WS
    }
  