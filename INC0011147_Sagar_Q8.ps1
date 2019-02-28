function get-hailstone($n){

    while($n -gt 1){
        if ($n%2 -eq 0){
            $n=$n/2
            $n
            }
        else{
            $n=($n*3)+1
            $n
        }
    }
        if($n -eq 1){
    return }
}
