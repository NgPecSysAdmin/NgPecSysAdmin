Function Install-AcrobatPro {

[cmdletbinding()]

Param (

  [parameter(ValueFromPipeline=$True,ValueFromPipelineByPropertyName=$True)]
  [Alias('DNSHostName','PSComputerName','CN','Hostname')]
  [string] $ComputerName = $env:COMPUTERNAME,

  [string] $CurrentVersion = '11.0.19'

) # Param

Begin {

if (!(Get-WinEvent -ListProvider 'Awesome Scripts' -ErrorAction SilentlyContinue)) {

  New-EventLog -LogName Application -Source 'Awesome Scripts'

} # if (Check for EventLog)

}

Process {

  $AcrobatProPath = '\\server1\packages\Adobe\Adobe_Acrobat'
  $RemoteStagingPath = '\\' + $ComputerName + '\C$\Windows\Temp'
  $CimQuery = Get-CimInstance -ComputerName $ComputerName -ClassName CIM_Product -Filter "IdentifyingNumber='{AC76BA86-1033-FFFF-7760-000000000006}'"
  $InstalledAdobeVersion = $CimQuery.Version
  $CurrentInstallState = if ( !(($CimQuery) -eq $null) ) { $true } else { $false }
  $VersionMatches = if ( $InstalledAdobeVersion -eq $CurrentVersion ) { $true } else { $false }

  if ( $CurrentInstallState -eq $false ) {

    if ((Test-Path $RemoteStagingPath\Adobe_Acrobat) -eq $false ) {

      Write-Host "Copying Adobe Acrobat Pro XI installer to $ComputerName"

      Copy-Item -Path $AcrobatProPath -Container -Recurse -Destination $RemoteStagingPath | Out-Null

      Write-Host 'Copy complete. Invoking Adobe Acrobat Pro XI installer'

      Invoke-Command -ComputerName $ComputerName -ScriptBlock {

        Start-Process -FilePath 'C:\Windows\Temp\Adobe_Acrobat\Setup.exe' -WorkingDirectory 'C:\Windows\Temp\Adobe_Acrobat\' -NoNewWindow -Wait

        Set-ItemProperty -Path HKLM:\SOFTWARE\Classes\.pdf -Name '(default)' -Value 'Acrobat.Document.11' -Force | Out-Null

        Set-ItemProperty -Path HKLM:\SOFTWARE\Classes\.pdf -Name 'Content Type' -Value 'application/pdf' -Force | Out-Null

      }

      Write-Host "Adobe Acrobat Pro XI has been installed on $ComputerName" -ForegroundColor "Green"

      Write-EventLog -LogName Application -EntryType Information -EventId 1 -Source 'Awesome Scripts' -Message (
        "$env:USERNAME just installed Adobe Acrobat Pro XI on $($ComputerName.ToUpper()) from $($env:COMPUTERNAME.ToUpper())"
      )

    } elseif ((Test-Path $RemoteStagingPath\Adobe_Acrobat) -eq $true ) {

      Write-Host "Staging path on $ComputerName not clean. Performing cleanup now"

      Remove-Item -Path $RemoteStagingPath\Adobe_Acrobat -Recurse -Force

      Write-Host "Copying Adobe Acrobat Pro XI installer to $ComputerName"

      Copy-Item -Path $AcrobatProPath -Container -Recurse -Destination $RemoteStagingPath

      Write-Host 'Copy complete. Invoking Adobe Acrobat Pro XI installer'

      Invoke-Command -ComputerName $ComputerName -ScriptBlock {

        Set-Location -Path 'C:\Windows\Temp\Adobe_Acrobat\'

        Start-Process -FilePath 'C:\Windows\Temp\Adobe_Acrobat\Setup.exe' -Verb runas -Wait | Out-Null

        Set-ItemProperty -Path HKLM:\SOFTWARE\Classes\.pdf -Name '(default)' -Value 'Acrobat.Document.11' -Force | Out-Null

        Set-ItemProperty -Path HKLM:\SOFTWARE\Classes\.pdf -Name 'Content Type' -Value 'application/pdf' -Force | Out-Null

      }

      Write-Host "Adobe Acrobat Pro XI has been installed on $ComputerName" -ForegroundColor "Green"

      Write-EventLog -LogName Application -EntryType Information -EventId 1 -Source 'Awesome Scripts' -Message (
        "$env:USERNAME just installed Adobe Acrobat Pro XI on $($ComputerName.ToUpper()) from $($env:COMPUTERNAME.ToUpper())"
      )

    } # End of if else (path)

  } elseif (($CurrentInstallState -eq $true) -and ($VersionMatches -eq $false)) {

    Write-Host "Adobe Acrobat Pro XI is installed on $ComputerName but it's out of date"

    if ((Test-Path $RemoteStagingPath\AcrobatUpd11019.msp) -eq $false ) {

      Write-Host "Copying Adobe Acrobat Pro XI update to $ComputerName"

      Copy-Item -Path ($AcrobatProPath + '\patches\AcrobatUpd11019.msp') -Destination $RemoteStagingPath | Out-Null

      Write-Host "Copy complete. Updating existing Adobe Acrobat Pro XI installation on $ComputerName"

      Invoke-Command -ComputerName $ComputerName -ScriptBlock {

        msiexec /update "C:\Windows\Temp\AcrobatUpd11019.msp" /quiet /norestart

      }

      Write-Host "Adobe Acrobat Pro XI has been updated on $ComputerName" -ForegroundColor "Green"

    } elseif ((Test-Path $RemoteStagingPath\AcrobatUpd11019.msp) -eq $true ) {

      Write-Host "Updating existing Adobe Acrobat Pro XI installation on $ComputerName"

      Invoke-Command -ComputerName $ComputerName -ScriptBlock {

        msiexec /update "C:\Windows\Temp\AcrobatUpd11019.msp" /quiet /norestart

      }

      Write-Host "Adobe Acrobat Pro XI has been updated on $ComputerName" -ForegroundColor "Green"

    } # End of if else (path)

  } else {

    Write-Host "Adobe Acrobat Pro XI is already installed on $ComputerName" -ForegroundColor "Green"

  } # End of if else (CurrentInstallState and Version)

} # Process

End {}

<#
  .SYNOPSIS
    Installs Adobe Acrobat Pro

  .DESCRIPTION
    Installs Adobe Acrobat Pro

  .EXAMPLE
    Give an example of how to use it

  .EXAMPLE
    Give another example of how to use it

  .PARAMETER ComputerName
    The computer name to query. Just one.
#>

} # End of Install-AcrobatPro Function