# Various Bits of Command Line Kung-Fu
## Change Windows Script Host to CLI Mode
```
wscript.exe //H:CScript //B
```
## Disable Office Start Screen
```
reg add HKCU\Software\Microsoft\Office\15.0\Common\General /v DisableBootToOfficeStart /t REG_DWORD /d 1 /f
```
## Disable Office Online Content
```
reg add HKCU\Software\Microsoft\Office\15.0\Common\Internet /v UseOnlineContent /t REG_DWORD /d 0 /f
```
## Replace CMD with PowerShell in WinX Menu
```
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced /v DontUsePowerShellOnWinX /t REG_DWORD /d 0 /f
```
## Disable UAC
```
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\policies\system /v ConsentPromptBehaviorAdmin /t REG_DWORD /d 0 /f
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\policies\system /v EnableLUA /t REG_DWORD /d 0 /f
```
## Literal string match recursively in all .txt files
```
findstr /pinsc:"somestring" C:\*.txt
```
## RegEx string match recursively in all .txt files
```
findstr /pinsr ^some.tring C:\*.txt
```
