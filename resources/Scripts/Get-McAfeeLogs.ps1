function Get-McAfeeLogs {

[cmdletbinding()]

Param (

  [parameter(ValueFromPipeline=$True,ValueFromPipelineByPropertyName=$True)]
  [Alias('CN','Hostname','Target','IP','IpAddress')]
  [string] $ComputerName = $env:COMPUTERNAME,

  [datetime] $epoch = '01/01/1970',

  [string] $IpAddressRegEx = '^(?:(?:1\d\d|2[0-5][0-5]|2[0-4]\d|0?[1-9]\d|0?0?\d)\.){3}(?:1\d\d|2[0-5][0-5]|2[0-4]\d|0?[1-9]\d|0?0?\d)$',

  [string] $RelativePathToHipsNetworkLog = '\C$\ProgramData\McAfee\Host Intrusion Prevention\Event.log',

  [string] $RelativePathToHipShieldLog = 'C$\ProgramData\McAfee\Host Intrusion Prevention\HipShield.log',

  [string] $RelativePathToAccessProtectionLog = '\C$\ProgramData\McAfee\DesktopProtection\AccessProtectionLog.txt'

) # End of Param

Begin {

# Nothing to see here. Move along.

} # End of Begin ScriptBlock

Process  {

if (Test-Connection $ComputerName -Count 1 -Quiet) {

# Start McAfee HIPS Log Collection

  $McAfeeHipsNetworkLogPath = 'filesystem::\\' + $ComputerName + $RelativePathToHipsNetworkLog

  if (Test-Path $McAfeeHipsNetworkLogPath) {

    Get-Content -Path $McAfeeHipsNetworkLogPath -Encoding Unicode |

    ForEach-Object { $_.Replace("`t`t","`t") } |

    ForEach-Object { $_.Replace("`t",",") } |

    ForEach-Object { $_.Substring(0,(($_.Length) - 1)) } |

    Where-Object { $_ -match '^7,' } |

    ConvertFrom-Csv -Header Id,EpochTime,h3,Guid,h5,h6,LocalIp,LocalPort,RemoteIp,RemotePort,h11,h12,h13,Subject,Action |

    Select-Object -Property EpochTime,LocalIp,LocalPort,RemoteIp,RemotePort,Subject,Action |

    ForEach-Object {

      Add-Member -InputObject $_ -MemberType NoteProperty -Name DateTime -Value (

        [timezone]::CurrentTimeZone.ToLocalTime(($epoch).AddSeconds($_.EpochTime))

      ) -Force ;

      Add-Member -InputObject $_ -MemberType NoteProperty -Name TimeStamp -Value (

        ((([timezone]::CurrentTimeZone.ToLocalTime(

          ($epoch).AddSeconds($_.EpochTime)

        )).GetDateTimeFormats('s'))) -as [string]

      ) -Force ;

      Add-Member -InputObject $_ -MemberType NoteProperty -Name ComputerName -Value $ComputerName -Force ;

      Add-Member -InputObject $_ -MemberType NoteProperty -Name ContainerLog -Value (

        ($McAfeeHipsNetworkLogPath).Replace('filesystem::','')

      ) -Force -PassThru

    }

  } # End of if else (Path Validation)

# End McAfee HIPS Log Collection

  <#

  # Still working on this part. Having trouble parsing the useful XML from the text.

  $McAfeeHipShieldLogPath = 'filesystem::\\' + $ComputerName + $RelativePathToHipShieldLog

  if (Test-Path $McAfeeHipShieldLogPath) {

    Get-Content -Path $McAfeeHipShieldLogPath

  } # End of if (Path Validation)

  #>

# Start McAfee Access Protection Log Collection

  $McAfeeAccessProtectionLogPath = 'filesystem::\\' + $ComputerName + $RelativePathToAccessProtectionLog

  if (Test-Path $McAfeeAccessProtectionLogPath) {

    Get-Content -Path $McAfeeAccessProtectionLogPath |

    ForEach-Object { $_.Replace("`t`t","`t") } |

    ForEach-Object { $_.Replace("`t",",") } |

    ConvertFrom-Csv -Header Date,Time,Action,User,Process,Target,Reason |

    ForEach-Object {

      Add-Member -InputObject $_ -MemberType NoteProperty -Name DateTime -Value (

        ($_.date + ' ' + $_.time) -as [datetime]

      ) -Force ;

      Add-Member -InputObject $_ -MemberType NoteProperty -Name EpochTime -Value ((

        New-TimeSpan -Start $epoch -End (

          [system.timezoneinfo]::ConvertTime(($_.DateTime),([system.timezoneinfo]::UTC))

        )).TotalSeconds

      ) -Force ;

      Add-Member -InputObject $_ -MemberType NoteProperty -Name ComputerName -Value $ComputerName -Force ;

      Add-Member -InputObject $_ -MemberType NoteProperty -Name TimeStamp -Value (

        (($_.DateTime).GetDateTimeFormats('s')

      ) -as [string]) -Force ;

      Add-Member -InputObject $_ -MemberType NoteProperty -Name ContainerLog -Value (

        ($McAfeeAccessProtectionLogPath).Replace('filesystem::','')

      ) -Force -PassThru

    } |

    Select-Object -Property EpochTime,User,Process,Target,Action,Reason,DateTime,TimeStamp,ComputerName,ContainerLog

  } # End of if (Path Validation)

# End McAfee Access Protection Log Collection

} else {

  Write-Host "$ComputerName is not reachable!" -ForegroundColor 'Red'

} # End of if else (Connectivity Test)

} # End of Process ScriptBlock

End  {

# Nothing to see here. Move along.

} # End of End ScriptBlock

<#
  .SYNOPSIS
    Retrieves McAfee text-based log files, parses them, and transforms them into objects.

  .DESCRIPTION
    Retrieves McAfee text-based log files, parses them, and transforms them into objects, like a BOSS!

  .PARAMETER ComputerName
    The computer name to query. Defaults to localhost (actually... $env:COMPUTERNAME)

  .PARAMETER epoch
    Just a reference to epoch time.

  .PARAMETER IpAddressRegEx
    Regular expression for matching IP addresses. (Not implemented yet)

  .PARAMETER RelativePathToHipsNetworkLog
    Where to find the McAfee NIPS Log on the system.

  .PARAMETER RelativePathToHipShieldLog
    Where to find the McAfee HIPS Log on the system.

  .PARAMETER RelativePathToAccessProtectionLog
    Where to find the McAfee AccessProtection Log on the system.

  .INPUTS
    String - Reads a list of ComputerNames from the pipeline.

  .OUTPUTS
    PSCustomObject - Outputs normalized McAfee logs as custom objects.

  .EXAMPLE
    Get-McAfeeLogs -ComputerName 'SERVER1','SERVER2'
    This would fetch the AccessProtection Logs and HIPS logs from SERVER1 and SERVER2.

  .EXAMPLE
    'SERVER1','SERVER2','SERVER3' | Get-McAfeeLogs
    This would fetch logs from the list of servers from the incoming pipeline.

  .EXAMPLE
    (New-Object System.Net.WebClient).DownloadString('https://gist.githubusercontent.com/jasonadsit/dc9ffb527a1be391262fd63834df538f/raw/6e6bbc2e01be559da888a54a16d6ac36c03b6c00/Get-McAfeeLogs.ps1') | iex ; Get-McAfeeLogs
    One-Liner to load it from the interwebs.

  .NOTES
    Author:   Jason Adsit (@CipherScruples)
    Version:  1.0
    Date:     2016-06-29T21:47:28
    Tag:      Q2lwaGVyU2NydXBsZXM=
    orcid:    0000-0002-0030-5301
    guid:     4bb0d974-570b-4d6d-9b88-70f54bac493f

  .LINK
    https://gist.github.com/jasonadsit/dc9ffb527a1be391262fd63834df538f
#>

} # End of Get-McAfeeLogs Function