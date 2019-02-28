function Rabbit(){
{
    param
    (
    [Object[]]
    $jump)

    $jump | ForEach-Object {
    $X1,$v1,$x2,$v2 = $_ }
    $jump=0
    $final=0
    $a=Write-Host(" Enter Respective values " ) format $x1,$v1,$x2,$v2 
    $a 
    for ($x1=1; $x1 -lt $v2){
    if ($x1 -gt 0 -and $v1 -eq $x1){
        return $v2
    }
    if ($x2 -eq $x1 -and $v2){
        return $jump + 1
        }
    $jump=$x1 -and $v1+$jump
    $final = $v2 -lt $final
    }
    if ($jump -eq $final){
    $jump= $final
    Write-Output "YES"
    Write-Output "Count to reach the final jump is $jump "}
    else 
    {
    Write-Output "no"
    }
    }}
   

  
    