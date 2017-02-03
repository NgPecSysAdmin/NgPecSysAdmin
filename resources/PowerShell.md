# Useful PowerShell Code Snippets  
## Working with Group Policy Settings  
```
$SplatArgs = @{ Namespace = 'root/RSOP/Computer';
                ClassName = 'RSOP_RegistryPolicySetting' }

Get-CimInstance @SplatArgs
```
## Making sure the AD cmdlets are installed  
```
Add-WindowsFeature -Name RSAT-AD-PowerShell
```
## Force DotNet to Use TLS 1.2  
```
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
```
## Enable RDP  
Via Set-ItemProperty  
```
$SplatArgs = @{ Path  = 'HKLM:\SYSTEM\CurrentControlSet\Control\Terminal Server';
                Name  = 'fDenyTSConnections';
                Value = '0';
                Force = $true }

Set-ItemProperty @SplatArgs
```
## DnsClientLogging  
Enables DNS client logging.  
Sets the max log size to 128 MB.  
```
$logName = 'Microsoft-Windows-DNS-Client/Operational'
$log = New-Object System.Diagnostics.Eventing.Reader.EventLogConfiguration $logName
$log.IsEnabled=$true
$log.MaximumSizeInBytes=131072000
$log.SaveChanges()
```
## Download Google Chrome  
```
$SplatArgs = @{ Uri     = 'https://dl.google.com/chrome/install/GoogleChromeStandaloneEnterprise64.msi';
                OutFile = '.\googlechromestandaloneenterprise64.msi' }

Invoke-WebRequest @SplatArgs
```
## Scrape Links From a Web Page  
```
((Invoke-WebRequest -Uri "http://powershell.org/wp/").Links).href
```
## Extract the .msp files out of windows Update .cab archives
```
Get-ChildItem -Path C:\Windows\SoftwareDistribution\Download\*.cab -Recurse |
Select-Object -ExpandProperty FullName |
ForEach-Object { expand.exe $_ -F:* C:\Updates\ }
```
## Filtering Saved Windows Event Log Files With PowerShell
Substitute 'user.name' and 'host-name' for desired values  
```
$LogPath = "\\server\share\name-of-log.evt"
$XpathFilter = "*[EventData[Data[@Name='TargetUserName'] = 'user.name']] or *[EventData[Data[@Name='Workstation'] = 'host-name']]"
Get-WinEvent -Path $LogPath -Oldest -FilterXPath $XpathFilter
```
