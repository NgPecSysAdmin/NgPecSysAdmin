##############################################################################################
#
# In addition to writing to the standard textual W3C logs, Windows Firewall connections, port
# bindings, and dropped packets can be logged to the Windows event logs too, such as for
# troubleshooting or incident response.  Log events for successful connections and port bindings
# will include information about the associated process (name, path, PID, etc).  If even more
# information is required, install Microsoft Message Analyzer for a GUI to capture, filter and
# analyze events from the protocol stack.
#
##############################################################################################


# View current Windows Firewall audit policy settings:

auditpol.exe /get /subcategory:'Filtering Platform Connection,Filtering Platform Packet Drop'




# Enable Windows Firewall audit policies (choose one or both as needed):

auditpol.exe /set /subcategory:'Filtering Platform Connection' /success:enable /failure:enable 
auditpol.exe /set /subcategory:'Filtering Platform Packet Drop' /success:enable /failure:enable 




# Connection events are written to the Security log as IDs 5156 and 5158:

$xpath = '<QueryList><Query Id="0" Path="Security"><Select Path="Security">*[System[Provider[@Name="Microsoft-Windows-Security-Auditing"] and Task = 12810]]</Select></Query></QueryList>'

Get-WinEvent -LogName Security -FilterXPath $xpath 




# Dropped packet events are written to the Security log as ID 5152:

$xpath = '<QueryList><Query Id="0" Path="Security"><Select Path="Security">*[System[Provider[@Name="Microsoft-Windows-Security-Auditing"] and Task = 12809]]</Select></Query></QueryList>'

Get-WinEvent -LogName Security -FilterXPath $xpath 




# Disable Windows Firewall audit policies afterwards to avoid log clutter:

auditpol.exe /set /subcategory:'Filtering Platform Connection' /success:disable /failure:disable 
auditpol.exe /set /subcategory:'Filtering Platform Packet Drop' /success:disable /failure:disable 



