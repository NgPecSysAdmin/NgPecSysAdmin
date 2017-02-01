# Various Bits of Command Line Kung-Fu
## Change Windows Script Host to CLI Mode
```
wscript.exe //H:CScript //B
```
## Disable Office Start Screen
```
reg add HKCU\Software\Microsoft\Office\15.0\Common\General /v DisableBootToOfficeStart /t REG_QWORD /d 1 /f
```
## Disable Office Online Content
```
reg add HKCU\Software\Microsoft\Office\15.0\Common\Internet /v UseOnlineContent /t REG_QWORD /d 0 /f
```
