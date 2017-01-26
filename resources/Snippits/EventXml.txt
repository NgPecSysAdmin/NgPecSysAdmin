#Security log
#============
####
#4624 - Logon & Logoff events successful
#4625 - Logon unsucceful

####
# Get usernames
Get-WinEvent -path .\Security.evtx | Where {$_.id -eq "4624"} | Foreach {([xml]$_.ToXml()).GetElementsByTagName("Data").ItemOf(5)}| Select -ExpandProperty "#text" -Unique 
# Get domains
Get-WinEvent -path .\Security.evtx | Where {$_.id -eq "4624"} | Foreach {([xml]$_.ToXml()).GetElementsByTagName("Data").ItemOf(6)}| Select -ExpandProperty "#text" -Unique 
# Get ips
Get-WinEvent -path .\Security.evtx | Where {$_.id -eq "4624"} | Foreach {([xml]$_.ToXml()).GetElementsByTagName("Data").ItemOf(18)}| Select -ExpandProperty "#text" -Unique 
# Get process name
Get-WinEvent -path .\Security.evtx | Where {$_.id -eq "4624"} | Foreach {([xml]$_.ToXml()).GetElementsByTagName("Data").ItemOf(17)}| Select -ExpandProperty "#text" -Unique 
# Get auth package
Get-WinEvent -path .\Security.evtx | Where {$_.id -eq "4624"} | Foreach {([xml]$_.ToXml()).GetElementsByTagName("Data").ItemOf(10)}| Select -ExpandProperty "#text" -Unique 
# Get workstation name
Get-WinEvent -path .\Security.evtx | Where {$_.id -eq "4624"} | Foreach {([xml]$_.ToXml()).GetElementsByTagName("Data").ItemOf(11)}| Select -ExpandProperty "#text" -Unique 

# Group by examples
# Get usernames
Get-WinEvent -path .\Security.evtx | Where {$_.id -eq "4624"} | Foreach {([xml]$_.ToXml()).GetElementsByTagName("Data").ItemOf(5)}| Select -ExpandProperty "#text" | group


####
#4648 - login explicit creds
####
# Get logins
Get-WinEvent -path .\Security.evtx | Where {$_.id -eq "4648"} | Foreach {([xml]$_.ToXml()).GetElementsByTagName("Data").ItemOf(5)}| Select -ExpandProperty "#text" -Unique 
# Get domains
Get-WinEvent -path .\Security.evtx | Where {$_.id -eq "4648"} | Foreach {([xml]$_.ToXml()).GetElementsByTagName("Data").ItemOf(6)}| Select -ExpandProperty "#text" -Unique 
# get server name
Get-WinEvent -path .\Security.evtx | Where {$_.id -eq "4648"} | Foreach {([xml]$_.ToXml()).GetElementsByTagName("Data").ItemOf(8)}| Select -ExpandProperty "#text" -Unique 
# get process name
Get-WinEvent -path .\Security.evtx | Where {$_.id -eq "4648"} | Foreach {([xml]$_.ToXml()).GetElementsByTagName("Data").ItemOf(11)}| Select -ExpandProperty "#text" -Unique 
####
# 4776 - The domain controller attempted to validate the credentials for an account(or local computer)
####
# Get logins
Get-WinEvent -path .\Security.evtx | Where {$_.id -eq "4776"} | Foreach {([xml]$_.ToXml()).GetElementsByTagName("Data").ItemOf(1)}| Select -ExpandProperty "#text" -Unique 
# Get workstation names
Get-WinEvent -path .\Security.evtx | Where {$_.id -eq "4776"} | Foreach {([xml]$_.ToXml()).GetElementsByTagName("Data").ItemOf(2)}| Select -ExpandProperty "#text" -Unique 
#5140 - Network share accessed
####
# Get domains
Get-WinEvent -path .\Security.evtx | Where {$_.id -eq "5140"} | Foreach {([xml]$_.ToXml()).GetElementsByTagName("Data").ItemOf(2)}| Select -ExpandProperty "#text" -Unique 
# Get usernames
Get-WinEvent -path .\Security.evtx | Where {$_.id -eq "5140"} | Foreach {([xml]$_.ToXml()).GetElementsByTagName("Data").ItemOf(1)}| Select -ExpandProperty "#text" -Unique 
# Get ips
Get-WinEvent -path .\Security.evtx | Where {$_.id -eq "5140"} | Foreach {([xml]$_.ToXml()).GetElementsByTagName("Data").ItemOf(5)}| Select -ExpandProperty "#text" -Unique 
# Get shares
Get-WinEvent -path .\Security.evtx | Where {$_.id -eq "5140"} | Foreach {([xml]$_.ToXml()).GetElementsByTagName("Data").ItemOf(7)}| Select -ExpandProperty "#text" -Unique 
####
#5145 - A network share object was checked to see whether client can be granted desired access 
#5140 - A network share object was accessed
####
# Get domains
Get-WinEvent -path .\Security.evtx | Where {$_.id -eq "5145"} | Foreach {([xml]$_.ToXml()).GetElementsByTagName("Data").ItemOf(2)}| Select -ExpandProperty "#text" -Unique 
# Get ips
Get-WinEvent -path .\Security.evtx | Where {$_.id -eq "5145"} | Foreach {([xml]$_.ToXml()).GetElementsByTagName("Data").ItemOf(5)}| Select -ExpandProperty "#text" -Unique 
# Get shares
Get-WinEvent -path .\Security.evtx | Where {$_.id -eq "5145"} | Foreach {([xml]$_.ToXml()).GetElementsByTagName("Data").ItemOf(7)}| Select -ExpandProperty "#text" -Unique 
# Get files
Get-WinEvent -path .\Security.evtx | Where {$_.id -eq "5145"} | Foreach {([xml]$_.ToXml()).GetElementsByTagName("Data").ItemOf(9)}| Select -ExpandProperty "#text" -Unique 
####
# 4663 - An attempt was made to access an object
# 4670 - Permissions on an object were changed
# 4656 - A handle to an object was requested
####
# Get users
Get-WinEvent -path .\Security.evtx | Where {$_.id -eq "4663"} | Foreach {([xml]$_.ToXml()).GetElementsByTagName("Data").ItemOf(1)}| Select -ExpandProperty "#text" -Unique 
# Get domain 
Get-WinEvent -path .\Security.evtx | Where {$_.id -eq "4663"} | Foreach {([xml]$_.ToXml()).GetElementsByTagName("Data").ItemOf(2)}| Select -ExpandProperty "#text" -Unique 
# Get object type
Get-WinEvent -path .\Security.evtx | Where {$_.id -eq "4663"} | Foreach {([xml]$_.ToXml()).GetElementsByTagName("Data").ItemOf(5)}| Select -ExpandProperty "#text" -Unique 
# Get Object Name
Get-WinEvent -path .\Security.evtx | Where {$_.id -eq "4663"} | Foreach {([xml]$_.ToXml()).GetElementsByTagName("Data").ItemOf(6)}| Select -ExpandProperty "#text" -Unique 
# Get process name
Get-WinEvent -path .\Security.evtx | Where {$_.id -eq "4663"} | Foreach {([xml]$_.ToXml()).GetElementsByTagName("Data").ItemOf(11)}| Select -ExpandProperty "#text" -Unique 

#Task Scheduler Log
#=================
####
# Task-scheduler 100 - task run
# 101 - task failed to run
####
# Get task names
Get-WinEvent -path .\Microsoft-Windows-TaskScheduler%4Operational.evtx | Where {$_.id -eq "100"} | Foreach {([xml]$_.ToXml()).GetElementsByTagName("Data").itemOf(0)}| Select -ExpandProperty "#text" -Unique 
# Get users
Get-WinEvent -path .\Microsoft-Windows-TaskScheduler%4Operational.evtx | Where {$_.id -eq "100"} | Foreach {([xml]$_.ToXml()).GetElementsByTagName("Data").itemOf(1)}| Select -ExpandProperty "#text" -Unique 

####
# Task Scheduler 200 - action run
####
# Get task names
Get-WinEvent -path .\Microsoft-Windows-TaskScheduler%4Operational.evtx | Where {$_.id -eq "200"} | Foreach {([xml]$_.ToXml()).GetElementsByTagName("Data").itemOf(0)}| Select -ExpandProperty "#text" -Unique 
# Get task action 
Get-WinEvent -path .\Microsoft-Windows-TaskScheduler%4Operational.evtx | Where {$_.id -eq "200"} | Foreach {([xml]$_.ToXml()).GetElementsByTagName("Data").itemOf(1)}| Select -ExpandProperty "#text" -Unique 

#Terminal Services Local Session Log
#==================
####
# TS 301 - successful login
####
# Get ips
Get-WinEvent -Path ".\Microsoft-Windows-TerminalServices-LocalSessionManager%4Operational.evtx" | where {$_.id -eq "21"} | Foreach {([xml]$_.ToXml()).GetElementsByTagName("Address")}| Select -ExpandProperty "#text" -Unique 
# Get users
Get-WinEvent -Path ".\Microsoft-Windows-TerminalServices-LocalSessionManager%4Operational.evtx" | where {$_.id -eq "21"} | Foreach {([xml]$_.ToXml()).GetElementsByTagName("User")}| Select -ExpandProperty "#text" -Unique 


#Terminal Services Remote Connection Manager
#================
####
# 1149 - successful login(not really, unsucceful attempts also logged as successful)
####
# Get user names
Get-WinEvent -Path ".\Microsoft-Windows-TerminalServices-RemoteConnectionManager%4Operational.evtx" | where {$_.id -eq "1149"} | Foreach {([xml]$_.ToXml()).GetElementsByTagName("Param1")} | Select -ExpandProperty "#text" -Unique
# Get domains
Get-WinEvent -Path ".\Microsoft-Windows-TerminalServices-RemoteConnectionManager%4Operational.evtx" | where {$_.id -eq "1149"} | Foreach {([xml]$_.ToXml()).GetElementsByTagName("Param2")} | Select -ExpandProperty "#text" -Unique
# Get srcip
Get-WinEvent -Path ".\Microsoft-Windows-TerminalServices-RemoteConnectionManager%4Operational.evtx" | where {$_.id -eq "1149"} | Foreach {([xml]$_.ToXml()).GetElementsByTagName("Param3")} | Select -ExpandProperty "#text" -Unique

#Firewall Log
#===========
####
# FW 2004 - new exception rule was added
# 2005 - existing rule modified
####
# Get Rulenames
Get-WinEvent -Path ".\Microsoft-Windows-Windows Firewall With Advanced Security%4Firewall.evtx" | where {$_.id -eq "2004"} | Foreach {([xml]$_.ToXml()).GetElementsByTagName("Data").itemOf(1)}| Select -ExpandProperty "#text" -Unique 
# Get application path
Get-WinEvent -Path ".\Microsoft-Windows-Windows Firewall With Advanced Security%4Firewall.evtx" | where {$_.id -eq "2004"} | Foreach {([xml]$_.ToXml()).GetElementsByTagName("Data").itemOf(3)}| Select -ExpandProperty "#text" -Unique 
# Get service name
Get-WinEvent -Path ".\Microsoft-Windows-Windows Firewall With Advanced Security%4Firewall.evtx" | where {$_.id -eq "2004"} | Foreach {([xml]$_.ToXml()).GetElementsByTagName("Data").itemOf(4)}| Select -ExpandProperty "#text" -Unique 
# Get modified application
Get-WinEvent -Path ".\Microsoft-Windows-Windows Firewall With Advanced Security%4Firewall.evtx" | where {$_.id -eq "2004"} | Foreach {([xml]$_.ToXml()).GetElementsByTagName("Data").itemOf(22)}| Select -ExpandProperty "#text" -Unique 
# Get action 
# 3 = allow
Get-WinEvent -Path ".\Microsoft-Windows-Windows Firewall With Advanced Security%4Firewall.evtx" | where {$_.id -eq "2004"} | Foreach {([xml]$_.ToXml()).GetElementsByTagName("Data").itemOf(9)}| Select -ExpandProperty "#text" -Unique 
# Get remote port
Get-WinEvent -Path ".\Microsoft-Windows-Windows Firewall With Advanced Security%4Firewall.evtx" | where {$_.id -eq "2004"} | Foreach {([xml]$_.ToXml()).GetElementsByTagName("Data").itemOf(8)}
# get src ips
Get-WinEvent -Path ".\Microsoft-Windows-Windows Firewall With Advanced Security%4Firewall.evtx" | where {$_.id -eq "2004"} | Foreach {([xml]$_.ToXml()).GetElementsByTagName("Data").itemOf(11)}
# get dest ips
Get-WinEvent -Path ".\Microsoft-Windows-Windows Firewall With Advanced Security%4Firewall.evtx" | where {$_.id -eq "2004"} | Foreach {([xml]$_.ToXml()).GetElementsByTagName("Data").itemOf(12)}
# get modifying user
# short sid = SYSTEM
Get-WinEvent -Path ".\Microsoft-Windows-Windows Firewall With Advanced Security%4Firewall.evtx" | where {$_.id -eq "2004"} | Foreach {([xml]$_.ToXml()).GetElementsByTagName("Data").itemOf(21)}
####
# FW 2006 - rule was deleted
####
# get rulenames
Get-WinEvent -Path ".\Microsoft-Windows-Windows Firewall With Advanced Security%4Firewall.evtx" | where {$_.id -eq "2006"} | Foreach {([xml]$_.ToXml()).GetElementsByTagName("Data").itemOf(1)}
# get modifying user
Get-WinEvent -Path ".\Microsoft-Windows-Windows Firewall With Advanced Security%4Firewall.evtx" | where {$_.id -eq "2006"} | Foreach {([xml]$_.ToXml()).GetElementsByTagName("Data").itemOf(2)}
# get modifyig application
Get-WinEvent -Path ".\Microsoft-Windows-Windows Firewall With Advanced Security%4Firewall.evtx" | where {$_.id -eq "2006"} | Foreach {([xml]$_.ToXml()).GetElementsByTagName("Data").itemOf(3)}
####
# FW 2011 - incoming connection was blocked
####
# get application
Get-WinEvent -Path ".\Microsoft-Windows-Windows Firewall With Advanced Security%4Firewall.evtx" | where {$_.id -eq "2011"} | Foreach {([xml]$_.ToXml()).GetElementsByTagName("Data").itemOf(1)}| Select -ExpandProperty "#text" -Unique
# get port
Get-WinEvent -Path ".\Microsoft-Windows-Windows Firewall With Advanced Security%4Firewall.evtx" | where {$_.id -eq "2011"} | Foreach {([xml]$_.ToXml()).GetElementsByTagName("Data").itemOf(4)}| Select -ExpandProperty "#text" -Unique
# get modifying user
Get-WinEvent -Path ".\Microsoft-Windows-Windows Firewall With Advanced Security%4Firewall.evtx" | where {$_.id -eq "2011"} | Foreach {([xml]$_.ToXml()).GetElementsByTagName("Data").itemOf(6)}| Select -ExpandProperty "#text" -Unique
####
# FW 5156
####
Get-WinEvent -path .\Security.evtx | Where {$_.id -eq "5156"} | Foreach {([xml]$_.ToXml()).GetElementsByTagName("Data").ItemOf(0)}| Select -ExpandProperty "#text" -Unique 

# System log
# ==========
####
# 7045 - new service installed in system
####
# Get service name
Get-WinEvent -Path ".\System.evtx" | where {$_.id -eq "7045"} | Foreach {([xml]$_.ToXml()).GetElementsByTagName("Data").itemOf(0)}| Select -ExpandProperty "#text" -Unique
# Get service path
Get-WinEvent -Path ".\System.evtx" | where {$_.id -eq "7045"} | Foreach {([xml]$_.ToXml()).GetElementsByTagName("Data").itemOf(1)}| Select -ExpandProperty "#text" -Unique