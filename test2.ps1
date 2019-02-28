$i= Read-Host -Prompt "Enter Two Numbers"
$i=$i.split(" ")
[int]$n1=$i[0]
[int]$n2=$i[1]
[int]$s=$n1 + $n2

$a="*"
Write-Host "The Output Pyramid is:"
for($i=1;$i-le $s;$i++){
    for($b=$i;$b -lt $s; $b++){
    Write-Host -NoNewline (" ")
    }
    for($j=1;$j -le (2*$i-1);$j++){
    Write-Host -NoNewline ("*")
    }
    Write-Host ""
    }

                                                                                                                                                                                                                                                                  