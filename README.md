# Crystal Reports generated by PowerShell
This script shows a simple example of how PowerShell can generate a Crystal Report into other formats and then sends an HTML email with the file as an attachment.

# Prerequisites
PowerShell v5.1+
<a href url="https://www.sap.com/cmp/td/sap-crystal-reports-visual-studio-trial.html">SAP Crystal Reports for Visual Studio</a>

# Instructions
Parameters:
* <b>Format</b> - Desired format for the resulting file
* <b>Destination</b> - Destination folder and file name (minus extension)
* <b>Source</b> - Source folder/file path of the Crystal Report (.report) file
* <b>SMTP</b> - Email smtp server
* <b>To</b> - Who the email should go to
* <b>From</b> - Who the email is coming from
* <b>User</b> - Email user name for authenticating to the SMTP server
* <b>Password</b> - Email user password for authenticating to the SMTP server
* <b>Port</b> - Port to connect to on the SMTP server (SSL is 587)
* <b>Subject</b> - Subject of the email
* <b>Body</b> - Body of the email

Example:
```
powershell.exe -ExecutionPolicy Bypass -File "C:\mypowershell.ps1" -source "C:\MyCrystalReport.rpt" -format "pdf" -destination "C:\Destination\MyNewReport" -to "myemail@email.com" -password "12345"
```

# Disclaimer
No Support and No Warranty are provided by SMA Technologies for this project and related material. The use of this project's files is on your own risk.

SMA Technologies assumes no liability for damage caused by the usage of any of the files offered here via this Github repository.

# License
Copyright 2020 SMA Technologies

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at [apache.org/licenses/LICENSE-2.0](http://www.apache.org/licenses/LICENSE-2.0)

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

# Contributing
We love contributions, please read our [Contribution Guide](CONTRIBUTING.md) to get started!

# Code of Conduct
[![Contributor Covenant](https://img.shields.io/badge/Contributor%20Covenant-v2.0%20adopted-ff69b4.svg)](code-of-conduct.md)
SMA Technologies has adopted the [Contributor Covenant](CODE_OF_CONDUCT.md) as its Code of Conduct, and we expect project participants to adhere to it. Please read the [full text](CODE_OF_CONDUCT.md) so that you can understand what actions will and will not be tolerated.
