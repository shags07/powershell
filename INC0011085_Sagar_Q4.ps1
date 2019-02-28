function Add-Matrix($array,$n)
 {
   $d1=0
   $d2=0

    for($i = 0; $i -lt $array.length; $i++){ $array[$i]}
    for($j = 0; $j -lt $array.length; $j++){ $array[$j]}
    if ($i = $j){ $d1 =+ $array[$i][$j]}
    if ($i = $n-$j+1){ $d2 += $array[$i][$j]}
    $sum = $d1 + $d2;
    return $sum;
}