function Get-UserGroupAddsRemoves {

Param (

  [datetime] $StartDateTime = (Get-Date),

  [datetime] $EndDateTime = ((Get-Date).AddDays(-1)),

  [array] $LogFilePath = (
    '\\server1\path\to\logs\'
  )

)

Begin {} # End of Begin ScriptBlock

Process {

Get-ChildItem $LogFilePath |

Where-Object {

  $_.LastWriteTime -ge $StartDateTime -and $_.LastWriteTime -le $EndDateTime

} |

Select-Object -ExpandProperty FullName |

ForEach-Object {

  $QueryLeft = "<QueryList><Query Id='0' Path='file://" ;

  $QueryMiddle = "'><Select Path='file://" ;

  $QueryRight = "'>
*[System[(EventID=4728 or EventID=4729 or EventID=4732 or EventID=4733 or EventID=4756 or EventID=4757)]]
and
*[EventData[(
Data[@Name='SubjectUserName']!='NGORA1D300$'
and
Data[@Name='SubjectUserName']!='NGORA1D301$'
and
Data[@Name='SubjectUserName']!='NGORA1D310$'
and
Data[@Name='SubjectUserName']!='NGORA1D320$'
)]]</Select></Query></QueryList>
" ;

  $QueryString = $QueryLeft + $_ + $QueryMiddle + $_ + $QueryRight ;

  $QueryXml = [xml]$QueryString ;

  Get-WinEvent -FilterXml $QueryXml -Oldest -ErrorAction SilentlyContinue

} |

Tee-Object -Variable AllEvents

} # End of Process ScriptBlock

End {

# Uncomment the following to get the count
<#
  $TotalAdds = $AllEvents | Where-Object { $_.Id -eq 4728 -or $_.Id -eq 4732 -or $_.Id -eq 4756 } | Measure-Object | Select-Object -ExpandProperty Count

  $TotalRemoves = $AllEvents | Where-Object { $_.Id -eq 4729 -or $_.Id -eq 4733 -or $_.Id -eq 4757 } | Measure-Object | Select-Object -ExpandProperty Count

  Write-Host ""
  Write-Host "Total number of user group adds between $StartDateTime and $EndDateTime = $TotalAdds" -ForegroundColor "Green"
  Write-Host ""
  Write-Host "Total number of user group removes between $StartDateTime and $EndDateTime = $TotalRemoves" -ForegroundColor "Red"
  Write-Host ""
#>

} # End of End ScriptBlock

<#
  .SYNOPSIS
    Parses DC logs for user group add and remove events.

  .DESCRIPTION
    Parses DC logs for user group add and remove events.

  .PARAMETER StartDateTime
    The date and time to start looking for event logs.
    Defaults to the current DateTime minus 1 day.

  .PARAMETER EndDateTime
    The date and time to stop looking for event logs.
    Defaults to the current DateTime.

  .PARAMETER LogFilePath
    The paths for each DC's security log back-ups on the tool server.

  .EXAMPLE
    Get-UserGroupAddsRemoves -StartDateTime '4/1/2016 12:00 AM' -EndDateTime '7/1/2016 12:00 AM'
    Gets events where a user was added or removed from a group in Active Directory

  .NOTES
    Be patient. The search could take a long time if you defined a large DateTime range.
#>

} # End of Get-UserGroupAddsRemoves function