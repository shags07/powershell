Get-process | where cpu -gt 300 | sort -Descending | out-file processinfo_INC0011046
start processinfo_INC0011046
