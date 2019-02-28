$x = [int] (Read-Host "Enter 1st number")
$y = [int] (Read-Host "Enter 2nd number")
$z = $x + $y
for($i=1; $i -le $z; $i++){ 
   for($j=1; $j -le $z -$i; $j++ ){
      Write-Host -NoNewLine " "
   }

   for($k=1; $k -le 2 * $i - 1; $k++){ 
     Write-Host -NoNewLine "*" 
   }

   Write-Host " "
}