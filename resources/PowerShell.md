# Useful PowerShell Code Snippets  
## Working with Group Policy Settings  
```
Get-CimInstance -Namespace root/RSOP/Computer `
                -ClassName RSOP_RegistryPolicySetting
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
Via Remote Registry  
```
$computerName = $env:COMPUTERNAME

$ExePath = 'C:\Windows\System32\reg.exe'

$RegKey = '\HKLM\SYSTEM\CurentControlSet\Control\Terminal Server'

$RemoteRegKeyString = '\\' + $ComputerName + $RegKey

[array] $InstallArgs = @(
    'add',
    $RemoteRegKeyString,
    '/v fDenyTSConnections',
    '/t REG_DWORD',
    '/d 0',
    '/f'
)

Start-Process -FilePath $ExePath -ArgumentList $InstallArgs -NoNewWindow -Wait | Out-Null
```
Via Set-ItemProperty  
```
Set-ItemProperty -Path 'HKLM:\SYSTEM\CurrentControlSet\Control\Terminal Server' `
                 -Name fDenyTSConnections `
                 -Value 0 `
                 -Force
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
Invoke-WebRequest `
    -Uri 'https://dl.google.com/chrome/install/GoogleChromeStandaloneEnterprise64.msi' `
    -OutFile '.\googlechromestandaloneenterprise64.msi'
```
## Scrape Links From a Web Page  
```
((Invoke-WebRequest -Uri "http://powershell.org/wp/").Links).href
```
