function Get-UserAccountDeletions {

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
*[System[(EventID=4720 or EventID=4726)]] 
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

  $TotalCreations = $AllEvents | Where-Object { $_.Id -eq 4720 } | Measure-Object | Select-Object -ExpandProperty Count

  $TotalDeletions = $AllEvents | Where-Object { $_.Id -eq 4726 } | Measure-Object | Select-Object -ExpandProperty Count

  Write-Host ""
  Write-Host "Total number of user account creations between $StartDateTime and $EndDateTime = $TotalCreations" -ForegroundColor "Green"
  Write-Host ""
  Write-Host "Total number of user account deletions between $StartDateTime and $EndDateTime = $TotalDeletions" -ForegroundColor "Red"

} # End of End ScriptBlock

<#
  .SYNOPSIS
    Parses DC logs for user account deletion events.

  .DESCRIPTION
    Parses DC logs for user account deletion events.

  .PARAMETER StartDateTime
    The date and time to start looking for event logs.
    Defaults to the current DateTime minus 1 day.

  .PARAMETER EndDateTime
    The date and time to stop looking for event logs.
    Defaults to the current DateTime.

  .PARAMETER LogFilePath
    The paths for each DC's security log back-ups on the tool server.

  .EXAMPLE
    Get-UserAccountDeletions -StartDateTime '4/1/2016 12:00 AM' -EndDateTime '7/1/2016 12:00 AM'
    Gets the deletion events

  .NOTES
    Be patient. The search could take a long time if you defined a large DateTime range.
#>

} # End of Get-UserAccountDeletions function