[void] [System.Reflection.Assembly]::LoadWithPartialName("System.Drawing")  
[void] [System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms") 
[void] [System.Windows.Forms.Application]::EnableVisualStyles() 
$Form = New-Object system.Windows.Forms.Form 
$Form.Size = New-Object System.Drawing.Size(400,200) 
$form.MaximizeBox = $true 
$Form.StartPosition = "CenterScreen" 
$Form.FormBorderStyle = 'Fixed3D' 
$Form.Text = "Event Log Reader"
$Label = New-Object System.Windows.Forms.Label 
$Label.Text = "Please Select the log name" 
$Label.AutoSize = $true 
$Label.Location = New-Object System.Drawing.Size(25,15) 
$Font = New-Object System.Drawing.Font("Arial",15,[System.Drawing.FontStyle]::Bold) 
$form.Font = $Font 


$listBox =New-Object System.Windows.Forms.ListBox
$listBox.Location = New-Object System.Drawing.Point(10,40)
$listBox.Size = New-Object System.Drawing.Size(125,150)
$listBox.Height = 80

[void] $listBox.Items.Add('System')
[void] $listBox.Items.Add('Application')
[void] $listBox.Items.Add('Security')
[void] $listBox.Items.Add('Hardware')


$Okbutton = New-Object System.Windows.Forms.Button 
$Okbutton.Location = New-Object System.Drawing.Size(165,120) 
$Okbutton.Size = New-Object System.Drawing.Size(100,30) 
$Okbutton.Text = "OK" 
$Okbutton.Add_Click({$log}) 

$log= {Get-EventLog -LogName $listbox.SelectedIndex -Newest 5}
$log



$CancelButton = New-Object System.Windows.Forms.Button
$CancelButton.Location = New-Object System.Drawing.Point(180,180)
$CancelButton.Size = New-Object System.Drawing.Size(100,30)
$CancelButton.Text = 'Cancel'
$CancelButton.DialogResult = [System.Windows.Forms.DialogResult]::Cancel
$form.CancelButton = $CancelButton


$form.Topmost = $true


if ($result -eq [System.Windows.Forms.DialogResult]::OK)
{
    $x = $listBox.SelectedItem
    $x
}
$form.Controls.Add($CancelButton)
$form.Controls.Add($listBox)
$Form.Controls.Add($Label)
$Form.Controls.Add($Okbutton)
$Form.ShowDialog()