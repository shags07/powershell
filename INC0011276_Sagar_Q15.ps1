Start-BitsTransfer https://ocw.mit.edu/ans7870/6/6.006/s08/lecturenotes/files/t8.shakespeare.txt  C:\Powershell\New.txt 
#$a= Get-Content "C:\Powershell\New.txt" | Measure-Object -Line -Character -Word -IgnoreWhiteSpace | fl lines, Words, Characters
#$a

$line = Get-Content "C:\Powershell\New.txt" | Measure-Object -Line | Select-Object lines 
$a= "Number of lines are $line "
$word = Get-Content "C:\Powershell\New.txt" | Measure-Object -word | Select-Object words
$b = "Number of Words are $word"
$char = Get-Content "C:\Powershell\New.txt" | Measure-Object -IgnoreWhiteSpace -Character  | Select-Object characters
$c="Number of Characters are $char" 
$a
$b
$c
$word=Read-Host -Prompt "Enter number of letter to form one word"
