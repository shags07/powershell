function factorial( [int] $n ) 
{ 
    $result = 1; 
    if ( $n -gt 1 ) 
    { 
        $result = $n * ( factorial ( $n - 1 ) ) 
    } 

    $result 
}