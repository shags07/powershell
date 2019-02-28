Set-ExecutionPolicy Unrestricted
Get-Date | set-Content 'C:\Users\Administrator\Desktop\process.txt'
Get-Process | Add-Content 'C:\Users\Administrator\Desktop\process.txt'



