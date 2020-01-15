param(
     $format
    ,$destination
    ,$source
    ,$smtp
    ,$to
    ,$from
    ,$user
    ,$password
    ,$port
    ,$subject
    ,$body
)

<#
NoFormat, CrystalReport, RichText, WordForWindows, Excel, PortableDocFormat, 
HTML32, HTML40, ExcelRecord, Text, CharacterSeparatedValues, TabSeperatedText, 
EditableRTF, Xml, RPTR, ExcelWorkbook
#>
switch($format)
{
    "RichText" {$extension = ".rtf";break}
    "WordForWindows" {$extension = ".doc";break}
    "Excel" {$extension = ".xlsx";break}
    "PortableDocFormat" {$extension = ".pdf";break}
    "Text" {$extension = ".txt";break}
    "CharacterSeparatedValues" {$extension = ".csv";break}
    "XML" {$extension = ".xml";break}
}

[reflection.assembly]::LoadWithPartialName('CrystalDecisions.Shared')
[reflection.assembly]::LoadWithPartialName('CrystalDecisions.CrystalReports.Engine')  

$report = New-Object CrystalDecisions.CrystalReports.Engine.ReportDocument
$report.Load($source)
$report.ExportToDisk($format,$destination + $extension)


$body = '
<!DOCTYPE html>
<html>
<body>
    <div>See attached report.</div>
</body>
</html>'
 
$secpasswd = ConvertTo-SecureString "$password" -AsPlainText -Force
$mycreds = New-Object System.Management.Automation.PSCredential ($user, $secpasswd)
Send-MailMessage -SmtpServer $smtp -To $to -From $from -Subject $subject -Body $body -BodyAsHtml -UseSSL -Credential $mycreds -Port $port -Attachments ($destination + $extension)
