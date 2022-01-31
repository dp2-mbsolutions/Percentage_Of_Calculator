[void][System.Reflection.Assembly]::Load('System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a')
[void][System.Reflection.Assembly]::Load('System.Windows.Forms, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089')
$Percentage_Of_Calculator = New-Object -TypeName System.Windows.Forms.Form
[System.Windows.Forms.Button]$button2 = $null
[System.Windows.Forms.TextBox]$textBox2 = $null
[System.Windows.Forms.TextBox]$textBox1 = $null
[System.Windows.Forms.TextBox]$textBox3 = $null
[System.Windows.Forms.Label]$label1 = $null
[System.Windows.Forms.Label]$label2 = $null
[System.Windows.Forms.Label]$label3 = $null
[System.Windows.Forms.Label]$label4 = $null
[System.Windows.Forms.Label]$label5 = $null
function InitializeComponent
{
$button2 = (New-Object -TypeName System.Windows.Forms.Button)
$textBox2 = (New-Object -TypeName System.Windows.Forms.TextBox)
$textBox1 = (New-Object -TypeName System.Windows.Forms.TextBox)
$textBox3 = (New-Object -TypeName System.Windows.Forms.TextBox)
$label1 = (New-Object -TypeName System.Windows.Forms.Label)
$label2 = (New-Object -TypeName System.Windows.Forms.Label)
$label3 = (New-Object -TypeName System.Windows.Forms.Label)
$label4 = (New-Object -TypeName System.Windows.Forms.Label)
$label5 = (New-Object -TypeName System.Windows.Forms.Label)
$Percentage_Of_Calculator.SuspendLayout()
#
#button2
#
$button2.BackColor = [System.Drawing.Color]::AliceBlue
$button2.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Impact',[System.Single]8.25,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$button2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]90,[System.Int32]153))
$button2.Name = [System.String]'button2'
$button2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]203,[System.Int32]55))
$button2.TabIndex = [System.Int32]1
$button2.Text = [System.String]'Calculate'
$button2.UseVisualStyleBackColor = $false
$button2.add_Click{(Get-ComparitivePercent)}

#
#textBox2
#
$textBox2.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]12,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$textBox2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]27,[System.Int32]66))
$textBox2.Multiline = $true
$textBox2.MaxLength = [System.Int32]4
$textBox2.Name = [System.String]'textBox2'
$textBox2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]76,[System.Int32]31))
$textBox2.TabIndex = [System.Int32]2
$textBox2.TextAlign = [System.Windows.Forms.HorizontalAlignment]::Center
$textBox2.add_TextChanged($textBox2_TextChanged)
#
#textBox1
#
$textBox1.BackColor = [System.Drawing.SystemColors]::ScrollBar
$textBox1.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]12,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$textBox1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]144,[System.Int32]66))
$textBox1.Multiline = $true
$textBox1.Name = [System.String]'textBox1'
$textBox1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]76,[System.Int32]31))
$textBox1.TabIndex = [System.Int32]3
$textBox1.TextAlign = [System.Windows.Forms.HorizontalAlignment]::Center
#
#textBox3
#
$textBox3.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Microsoft Sans Serif',[System.Single]12,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$textBox3.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]267,[System.Int32]66))
$textBox3.Multiline = $true
$textBox3.MaxLength = [System.Int32]5
$textBox3.Name = [System.String]'textBox3'
$textBox3.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]76,[System.Int32]31))
$textBox3.TabIndex = [System.Int32]4
$textBox3.TextAlign = [System.Windows.Forms.HorizontalAlignment]::Center
#
#label1
#
$label1.AutoSize = $true
$label1.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Franklin Gothic Medium',[System.Single]8.25,[System.Drawing.FontStyle]::Italic,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$label1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]24,[System.Int32]100))
$label1.Name = [System.String]'label1'
$label1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]102,[System.Int32]15))
$label1.TabIndex = [System.Int32]5
$label1.Text = [System.String]'Enter Smaller Value'
#
#label2
#
$label2.AutoSize = $true
$label2.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Franklin Gothic Medium',[System.Single]8.25,[System.Drawing.FontStyle]::Italic,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$label2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]252,[System.Int32]100))
$label2.Name = [System.String]'label2'
$label2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]96,[System.Int32]15))
$label2.TabIndex = [System.Int32]6
$label2.Text = [System.String]'Enter Larger Value'
#
#label3
#
$label3.AutoSize = $true
$label3.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Franklin Gothic Medium',[System.Single]12,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$label3.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]113,[System.Int32]79))
$label3.Name = [System.String]'label3'
$label3.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]25,[System.Int32]21))
$label3.TabIndex = [System.Int32]7
$label3.Text = [System.String]'IS'
#
#label4
#
$label4.AutoSize = $true
$label4.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Franklin Gothic Medium',[System.Single]12,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$label4.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]231,[System.Int32]79))
$label4.Name = [System.String]'label4'
$label4.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]30,[System.Int32]21))
$label4.TabIndex = [System.Int32]8
$label4.Text = [System.String]'OF'
#
#label5
#
$label5.AutoSize = $true
$label5.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Impact',[System.Single]14.25,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$label5.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]87,[System.Int32]18))
$label5.Name = [System.String]'label5'
$label5.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]206,[System.Int32]23))
$label5.TabIndex = [System.Int32]9
$label5.Text = [System.String]'Percentage Of Calculator'
#
#Percentage_Of_Calculator
#
$Percentage_Of_Calculator.BackColor = [System.Drawing.SystemColors]::ActiveCaption
$Percentage_Of_Calculator.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]400,[System.Int32]236))
$Percentage_Of_Calculator.Controls.Add($label5)
$Percentage_Of_Calculator.Controls.Add($label4)
$Percentage_Of_Calculator.Controls.Add($label3)
$Percentage_Of_Calculator.Controls.Add($label2)
$Percentage_Of_Calculator.Controls.Add($label1)
$Percentage_Of_Calculator.Controls.Add($textBox3)
$Percentage_Of_Calculator.Controls.Add($textBox1)
$Percentage_Of_Calculator.Controls.Add($textBox2)
$Percentage_Of_Calculator.Controls.Add($button2)
$Percentage_Of_Calculator.FormBorderStyle = [System.Windows.Forms.FormBorderStyle]::FixedDialog
$Percentage_Of_Calculator.Name = [System.String]'Percentage_Of_Calculator'
$Percentage_Of_Calculator.Text = [System.String]'Percentage Of Calculator'
$Percentage_Of_Calculator.ResumeLayout($false)
$Percentage_Of_Calculator.PerformLayout()
Add-Member -InputObject $Percentage_Of_Calculator -Name base -Value $base -MemberType NoteProperty
Add-Member -InputObject $Percentage_Of_Calculator -Name button2 -Value $button2 -MemberType NoteProperty
Add-Member -InputObject $Percentage_Of_Calculator -Name textBox2 -Value $textBox2 -MemberType NoteProperty
Add-Member -InputObject $Percentage_Of_Calculator -Name textBox1 -Value $textBox1 -MemberType NoteProperty
Add-Member -InputObject $Percentage_Of_Calculator -Name textBox3 -Value $textBox3 -MemberType NoteProperty
Add-Member -InputObject $Percentage_Of_Calculator -Name label1 -Value $label1 -MemberType NoteProperty
Add-Member -InputObject $Percentage_Of_Calculator -Name label2 -Value $label2 -MemberType NoteProperty
Add-Member -InputObject $Percentage_Of_Calculator -Name label3 -Value $label3 -MemberType NoteProperty
Add-Member -InputObject $Percentage_Of_Calculator -Name label4 -Value $label4 -MemberType NoteProperty
Add-Member -InputObject $Percentage_Of_Calculator -Name label5 -Value $label5 -MemberType NoteProperty
}
. InitializeComponent


###############################################################################################################################
#                                                             Function Elements                                               #
###############################################################################################################################

#Hide Console 

Add-Type -Name Window -Namespace Console -MemberDefinition '
[DllImport("Kernel32.dll")]
public static extern IntPtr GetConsoleWindow();
[DllImport("user32.dll")]
public static extern bool ShowWindow(IntPtr hWnd, Int32 nCmdShow);
'
$consolePtr = [Console.Window]::GetConsoleWindow()
[Console.Window]::ShowWindow($consolePtr, 0)



#Button Functions

function Get-ComparitivePercent
{
 $textBox1.text = ""
 [decimal] $val1 = $Textbox2.Text
 [decimal] $val2 = $Textbox3.Text
  write-host ($val1/$val2).ToString("P")
 $Result = ($val1/$val2).ToString("P")
 $Textbox1.Text = $Result
 
    
}





###############################################################################################################################
#                                                             Start Form                                                      #
###############################################################################################################################



$Percentage_Of_Calculator.ShowDialog()