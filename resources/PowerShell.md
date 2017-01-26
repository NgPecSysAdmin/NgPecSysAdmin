# Useful PowerShell Code Snippets  
## Making sure the AD cmdlets are installed  
`Add-WindowsFeature -Name RSAT-AD-PowerShell`  
## Enable RDP Remotely via Remote Registry  
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
