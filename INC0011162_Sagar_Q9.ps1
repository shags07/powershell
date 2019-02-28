 get-service |
 % {
    
    if ($_.Status -eq 'Stopped')  
      {write-host  $_.Status -f red -nonewline}
    else
      {write-host $_.Status -f green -nonewline}
    write-host ' ' -nonewline
    write-host  $( $_.Name )
     } | Format-Table -Property Name, Status
