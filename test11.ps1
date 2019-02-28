[xml]$ed = Get-Content -Path C:\Users\Administrator\Downloads\employee_detail.xml
#$ed.Employees.Employee | %{$_.Name} | Select-Object -Unique

$fir=Read-Host -Prompt "Select for Employee Type whether Regular or Part-Time"
$fir_ans=$ed.Employees.Employee | Where-Object {$_.EmployeeType -eq $fir} | %{$_.Name}
$fir_ans

[string]$sec= Read-Host -Prompt "Select the employee."
#$sec_ans=$ed.Employees.Employee | Where-Object {$_.EmployeeType -eq $sec} | %{$_.Name}
#$sec_ans

$thi= Read-Host -Prompt "1. Print the details of selected employee.
2. Calculate the salary after some time period t with increment rate per year."

if($thi -eq 1){
$thi_ans=$ed.Employees.Employee | Where-Object {$_.Name -eq $sec}
$thi_ans}

if($thi -eq 2){
[int]$t= Read-Host -Prompt "Enter the time period in years."
[int]$r = Read-Host -Prompt "Enter the rate of interest."
[int]$s= $ed.Employees.Employee | Where-Object {$_.Name -eq $sec} | %{$_.Salary}
[int]$result= 0
for($l=1;$l-le$t;$l++){
    $result+=$s+($s*($r/100))
}
$result
}