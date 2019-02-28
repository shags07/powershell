[xml]$XmlDocument = Get-Content -Path C:\Users\Administrator\Downloads\employee_detail.xml
$name= $XmlDocument.Employees.Employee.name
$part= $XmlDocument.Employees.Employee.EmployeeType -eq 'Part-Time'
$EmployeeType=  Read-Host -Prompt "Enter the employee type whether full time or part time ?"
if ($EmployeeType -eq 'Part-Time' -and $XmlDocument.Employees.Employee.EmployeeType -eq 'Part-Time'){ 
    $XmlDocument.Employees.Employee.name
}
$Employeename=  Read-Host -Prompt "Enter the employee name ?"
   $Employeename
$opt1=  Read-Host -Prompt "1. Print the details of selected employee."
$opt2=  Read-Host -Prompt "2. Calculate the salary after some time period t with increment rate per year."
if ($opt1 -eq 1){
    $xmlDocument.Employees.Employee.Contains($Employeename)}
if ($opt2-eq 2){
    $salary=($salary+($o*$salary))
}
