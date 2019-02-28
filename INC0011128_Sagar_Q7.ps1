$n = Read-Host 

function feb ($n) { 

$current = 0 ; 
$previous = 1; 
while ($current -lt $n) { 
$current; 
$current,$previous = ($current+$previous),$current} 
$res={if($current % 2 -eq 1 ) 
    {Write-Host $current "is even" }
} 
}