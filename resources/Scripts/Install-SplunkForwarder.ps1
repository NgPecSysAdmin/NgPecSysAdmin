Function Install-SplunkForwarder {

[cmdletbinding()]

Param (

[parameter(ValueFromPipeline=$True,ValueFromPipelineByPropertyName=$True)]
[Alias('DNSHostName','PSComputerName','CN','Hostname')]
[array] $ComputerName = @($env:COMPUTERNAME),

[string] $SplunkSource = "$env:TEMP\source_splunkforwarder.msi",

[string] $SplunkFwdrUrlWin64 = 'https://download.splunk.com/products/universalforwarder/releases/6.4.2/windows/splunkforwarder-6.4.2-00f5bb3fa822-x64-release.msi',

[string] $CurrentSplunkVersion = '6.4.2.0'

) # End of Param

Begin {

$StartTime = (Get-Date)

Write-Host ""
Write-Host "starting Splunk Universal Forwarder install on: $ComputerName"

if (!(Get-WinEvent -ListProvider 'Splunk Scripts' -ErrorAction SilentlyContinue)) {

  New-EventLog -LogName Application -Source 'Splunk Scripts'

} # if (Check for EventLog)

if (!(Test-Path -Path "$SplunkSource")) {

  Write-Host "can't find Splunk installer, downloading latest"

  Invoke-WebRequest -Uri $SplunkFwdrUrlWin64 -OutFile $SplunkSource | Out-Null

  Unblock-File -Path $SplunkSource

  Write-Host "download completed"

}

} # End of Begin ScriptBlock

Process {

$ComputerName | ForEach-Object {

  if (Test-Connection -ComputerName $_ -Count 1 -Quiet) {

    $RemoteCimQuery = Get-CimInstance -ComputerName $_ -ClassName CIM_Product -Filter "Name='UniversalForwarder'"

    if ((!($RemoteCimQuery)) -or ($RemoteCimQuery.Version -ne $CurrentSplunkVersion)) {

      $RemoteStagingPath = '\\' + $($($_.ToUpper())) + '\C$\Windows\Temp'

      Write-Host ""

      Write-Host "$($_.ToUpper())" -ForegroundColor 'Yellow' -NoNewline
      Write-Host ":" -ForegroundColor 'Yellow' -NoNewline
      Write-Host " purging remote staging path"

      Remove-Item -Path "$RemoteStagingPath\splunkforwarder.msi" -Force -ErrorAction SilentlyContinue | Out-Null

      Write-Host "$($_.ToUpper())" -ForegroundColor 'Yellow' -NoNewline
      Write-Host ":" -ForegroundColor 'Yellow' -NoNewline
      Write-Host " copying install package to remote staging path"

      Copy-Item -Path $SplunkSource -Destination "$RemoteStagingPath\splunkforwarder.msi" -Force | Out-Null

      Invoke-Command -ComputerName $_ -ScriptBlock {

        $CurrentSplunkVersion = '6.4.2.0'

        Write-Host "$($env:COMPUTERNAME.ToUpper())" -ForegroundColor 'Yellow' -NoNewline
        Write-Host ":" -ForegroundColor 'Yellow' -NoNewline
        Write-Host " purging config files"

        Remove-Item -Path 'C:\Program Files\SplunkUniversalForwarder\etc\system\local\deploymentclient.conf' `
          -Force -ErrorAction SilentlyContinue | Out-Null
        Remove-Item -Path 'C:\Program Files\SplunkUniversalForwarder\etc\system\local\inputs.conf' `
          -Force -ErrorAction SilentlyContinue | Out-Null
        Remove-Item -Path 'C:\Program Files\SplunkUniversalForwarder\etc\system\local\outputs.conf' `
          -Force -ErrorAction SilentlyContinue | Out-Null
        Remove-Item -Path 'C:\Program Files\SplunkUniversalForwarder\etc\apps\all_deploymentclients\local\deploymentclient.conf' `
          -Force -ErrorAction SilentlyContinue | Out-Null

        $DeploymentClientConf = 'C:\Program Files\SplunkUniversalForwarder\etc\apps\all_deploymentclients\local\deploymentclient.conf'

        Write-Host "$($env:COMPUTERNAME.ToUpper())" -ForegroundColor 'Yellow' -NoNewline
        Write-Host ":" -ForegroundColor 'Yellow' -NoNewline
        Write-Host " building deploymentclient.conf"

        New-Item -Path $DeploymentClientConf -ItemType File -Force -ErrorAction SilentlyContinue | Out-Null
        Add-Content -Path $DeploymentClientConf -Value '[deployment-client]'
        Add-Content -Path $DeploymentClientConf -Value ''
        Add-Content -Path $DeploymentClientConf -Value '[target-broker:deploymentServer]'
        Add-Content -Path $DeploymentClientConf -Value 'targetUri = <FQDN_OF_DEPLOYMENT_SERVER:8089>'

        $LocalCimQuery = Get-CimInstance -ComputerName $_ -ClassName CIM_Product -Filter "Name='UniversalForwarder'"

        [array] $InstallArgs = @(
          '/i',
          'C:\Windows\Temp\splunkforwarder.msi',
          '/quiet',
          '/norestart',
          'AGREETOLICENSE="YES"',
          'LAUNCHSPLUNK="1"',
          'SERVICESTARTTYPE="auto"'
        )

        if (!($LocalCimQuery)) {

          Write-Host "$($env:COMPUTERNAME.ToUpper())" -ForegroundColor 'Yellow' -NoNewline
          Write-Host ":" -ForegroundColor 'Yellow' -NoNewline
          Write-Host " no forwarder currently installed, invoking installer"

          Start-Process -FilePath 'C:\Windows\System32\msiexec.exe' -ArgumentList $InstallArgs -Verb runas -Wait | Out-Null

          Write-Host "$($env:COMPUTERNAME.ToUpper())" -ForegroundColor 'Yellow' -NoNewline
          Write-Host ":" -ForegroundColor 'Yellow' -NoNewline
          Write-Host " installer finished"

        }

        if (($LocalCimQuery) -and ($LocalCimQuery.Version -ne $CurrentSplunkVersion)) {

          Write-Host "$($env:COMPUTERNAME.ToUpper())" -ForegroundColor 'Yellow' -NoNewline
          Write-Host ":" -ForegroundColor 'Yellow' -NoNewline
          Write-Host " Splunk forwarder is installed but out of date, uninstalling"

          $SplunkService = Get-Service SplunkForwarder -ErrorAction SilentlyContinue

          if ($SplunkService) {

            Write-Host "$($env:COMPUTERNAME.ToUpper())" -ForegroundColor 'Yellow' -NoNewline
            Write-Host ":" -ForegroundColor 'Yellow' -NoNewline
            Write-Host " stopping splunk service"

            $SplunkService | Stop-Service | Out-Null

          }

          $LocalCimQuery | Invoke-CimMethod -Name Uninstall | Out-Null

          Write-Host "$($env:COMPUTERNAME.ToUpper())" -ForegroundColor 'Yellow' -NoNewline
          Write-Host ":" -ForegroundColor 'Yellow' -NoNewline
          Write-Host " uninstall finished, invoking new install"

          Start-Process -FilePath 'C:\Windows\System32\msiexec.exe' -ArgumentList $InstallArgs -Verb runas -Wait | Out-Null

          Write-Host "$($env:COMPUTERNAME.ToUpper())" -ForegroundColor 'Yellow' -NoNewline
          Write-Host ":" -ForegroundColor 'Yellow' -NoNewline
          Write-Host " installer finished"

        }

      } # End of Invoke-Command ScriptBlock

      Write-EventLog -LogName Application -EntryType Information -EventId 1 -Source 'Splunk Scripts' -Message (
        "$env:USERNAME just installed Splunk Universal Forwarder on $($($_.ToUpper())) from $($($env:COMPUTERNAME.ToUpper()))"
      )

    } else {

      if ($RemoteCimQuery.Version -eq $CurrentSplunkVersion) {

        Write-Host ""
        Write-Host "$($_.ToUpper())" -ForegroundColor 'Yellow' -NoNewline
        Write-Host ":" -ForegroundColor 'Yellow' -NoNewline
        Write-Host " the latest Splunk forwarder is already installed"

      } else {

        Write-Host ""
        Write-Host "$($_.ToUpper())" -ForegroundColor 'Yellow' -NoNewline
        Write-Host ":" -ForegroundColor 'Yellow' -NoNewline
        Write-Host " something went wrong, bailing out"

      } # End of if else (already installed or unknown failure)

    } # End of if else ((!(`$RemoteCimQuery)) -or (`$RemoteCimQuery.Version -ne `$CurrentSplunkVersion))

  } # End of if if (Test-Connection)

} # End of ForEach-Object (`$ComputerName)

} # End of Process ScriptBlock

End {

Write-Host ""
Write-Host "finished Splunk Universal Forwarder install on: $ComputerName" -ForegroundColor 'Green'
Write-Host ""

$EndTime = (Get-Date)

Write-Host "Elapsed Time: $(($EndTime - $StartTime).TotalSeconds) seconds"
Write-Host ""

} # End of End ScriptBlock

<#
  .SYNOPSIS
    Installs the Splunk Universal Forwarder

  .DESCRIPTION
    Installs the Splunk Universal Forwarder

  .EXAMPLE
    Install-SplunkForwarder -ComputerName host1
    Installs the Splunk Universal Forwarder on host1

  .EXAMPLE
    'host1','host2','host3' | Install-SplunkForwarder
    Installs the Splunk Universal Forwarder on the three host input via the pipeline

  .PARAMETER ComputerName
    The computer name/names to operate on. Defaults to `$env:COMPUTERNAME

  .PARAMETER SplunkSource
    FullPath of the installer

  .PARAMETER SplunkFwdrUrlWin64
    URL to download the Splunk Universal Forwarder from the internet

  .PARAMETER LocalStagingDir
    Staging directory for the installer

  .PARAMETER CurrentSplunkVersion
    Current version of the Splunk Universal Forwarder
#>

} # End of Install-SplunkForwarder Function