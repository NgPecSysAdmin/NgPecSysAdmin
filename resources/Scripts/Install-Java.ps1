Function Install-Java {

[cmdletbinding()]

Param (

  [parameter(ValueFromPipeline=$True,ValueFromPipelineByPropertyName=$True)]
  [Alias('DNSHostName','PSComputerName','CN','Hostname')]
  [array] $ComputerName = @($env:COMPUTERNAME),

  [string] $JavaSource = '\\server1\packages\Oracle\Java-Latest',

  [string] $JcePath = '\\server1\packages\Oracle\UnlimitedJCEPolicyJDK8'

) # End of Param

Begin {

$StartTime = (Get-Date)

Write-Verbose 'starting Java install'

if (!(Get-WinEvent -ListProvider 'Awesome Scripts' -ErrorAction SilentlyContinue)) {

  New-EventLog -LogName Application -Source 'Awesome Scripts'

} # if (Check for EventLog)

} # End of Begin ScriptBlock

Process {

$ComputerName | ForEach-Object {

  $RemoteStagingPath = '\\' + $_ + '\C$\Windows\Temp'

  Write-Verbose 'purging remote java staging path'

  Remove-Item -Path "$RemoteStagingPath\Java-Latest" -Recurse `
    -ErrorAction SilentlyContinue | Out-Null

  Write-Verbose 'copying install package to remote staging path'

  Copy-Item -Path $JavaSource -Container -Recurse -Destination $RemoteStagingPath `
    -ErrorAction SilentlyContinue | Out-Null

  Write-Verbose 'purging remote jce staging path'

  Remove-Item -Path "$RemoteStagingPath\UnlimitedJCEPolicyJDK8" -Recurse -Force `
    -ErrorAction SilentlyContinue | Out-Null

  Write-Verbose 'copying Java encryption policy to remote staging path'

  Copy-Item -Path $JcePath -Container -Recurse -Destination $RemoteStagingPath `
    -ErrorAction SilentlyContinue | Out-Null

  Invoke-Command -ComputerName $_ -ScriptBlock {

    $LocalJcePath = 'C:\Windows\Temp\UnlimitedJCEPolicyJDK8'

    Write-Verbose 'purging the install config directory'

    Remove-Item -Path "$env:ALLUSERSPROFILE\Oracle" -Recurse -Force `
      -ErrorAction SilentlyContinue | Out-Null

    Write-Verbose 're-creating install config file'

    New-Item -Path "$env:ALLUSERSPROFILE\Oracle\Java\java.settings.cfg" -ItemType File -Force `
      -ErrorAction SilentlyContinue | Out-Null

    $JavaConfig = "$env:ALLUSERSPROFILE\Oracle\Java\java.settings.cfg"

    Write-Verbose 'populating the java.settings.cfg file'

    Add-Content -Path $JavaConfig -Value 'INSTALL_SILENT=1'
    Add-Content -Path $JavaConfig -Value 'AUTO_UPDATE=0'
    Add-Content -Path $JavaConfig -Value 'EULA=0'
    Add-Content -Path $JavaConfig -Value 'NOSTARTMENU=1'
    Add-Content -Path $JavaConfig -Value 'WEB_ANALYTICS=0'
    Add-Content -Path $JavaConfig -Value 'WEB_JAVA=1'
    Add-Content -Path $JavaConfig -Value 'WEB_JAVA_SECURITY_LEVEL=H'
    Add-Content -Path $JavaConfig -Value 'REMOVEOUTOFDATEJRES=1'

    Write-Verbose 'installing Java'

    Start-Process -FilePath 'C:\Windows\Temp\Java-Latest\Java-Latest-x86.exe' `
      -NoNewWindow -Wait | Out-Null

    Start-Process -FilePath 'C:\Windows\Temp\Java-Latest\Java-Latest-x64.exe' `
      -NoNewWindow -Wait | Out-Null

    Write-Verbose 'purging the system level config directories'

    Remove-Item -Path "$env:SystemDrive\Users\*\Appdata\LocalLow\Sun" -Recurse -Force `
      -ErrorAction SilentlyContinue | Out-Null

    Remove-Item -Path "$env:windir\Sun" -Recurse -Force `
      -ErrorAction SilentlyContinue | Out-Null

    Write-Verbose 're-creating system level config files'

    New-Item -Path "$env:windir\Sun\Java\Deployment\deployment.config" -ItemType File -Force `
      -ErrorAction SilentlyContinue | Out-Null

    New-Item -Path "$env:windir\Sun\Java\Deployment\deployment.properties" -ItemType File -Force `
      -ErrorAction SilentlyContinue | Out-Null

    New-Item -Path "$env:windir\Sun\Java\Deployment\exception.sites" -ItemType File -Force `
      -ErrorAction SilentlyContinue | Out-Null

    $DepConf = "$env:windir\Sun\Java\Deployment\deployment.config"
    $DepProps = "$env:windir\Sun\Java\Deployment\deployment.properties"
    $ExceptionSites = "$env:windir\Sun\Java\Deployment\exception.sites"

    Write-Verbose 'populating the deployment.config file'

    Add-Content -Path $DepConf -Value `
      'deployment.system.config=file:///C:/Windows/Sun/Java/Deployment/deployment.properties'
    Add-Content -Path $DepConf -Value `
      'deployment.system.config.mandatory=true'

    Write-Verbose 'populating the deployment.properties file'

    Add-Content -Path $DepProps -Value '#deployment.properties'
    Add-Content -Path $DepProps -Value 'deployment.webjava.enabled=true'
    Add-Content -Path $DepProps -Value 'deployment.security.level=HIGH'
    Add-Content -Path $DepProps -Value 'deployment.security.level.locked'
    Add-Content -Path $DepProps -Value `
      'deployment.user.security.exception.sites=file:///C:/Windows/Sun/Java/Deployment/exception.sites'

    Write-Verbose 'populating the exception.sites file'

    Add-Content -Path $ExceptionSites -Value 'https://java.com'
	# Just add more lines to add more sites.

    Write-Verbose 'setting 256 bit aes encryption policy'

    Remove-Item -Path 'C:\Program Files\Java\jre1.8.0_121\lib\security\local_policy.jar' -Force | Out-Null
    Remove-Item -Path 'C:\Program Files\Java\jre1.8.0_121\lib\security\US_export_policy.jar' -Force | Out-Null
    Remove-Item -Path 'C:\Program Files (x86)\Java\jre1.8.0_121\lib\security\local_policy.jar' -Force | Out-Null
    Remove-Item -Path 'C:\Program Files (x86)\Java\jre1.8.0_121\lib\security\US_export_policy.jar' -Force | Out-Null

    Copy-Item -Path "$LocalJcePath\local_policy.jar" -Destination 'C:\Program Files\Java\jre1.8.0_121\lib\security\' `
      -Force | Out-Null
    Copy-Item -Path "$LocalJcePath\US_export_policy.jar" -Destination 'C:\Program Files\Java\jre1.8.0_121\lib\security\' `
      -Force | Out-Null
    Copy-Item -Path "$LocalJcePath\local_policy.jar" -Destination 'C:\Program Files (x86)\Java\jre1.8.0_121\lib\security\' `
      -Force | Out-Null
    Copy-Item -Path "$LocalJcePath\US_export_policy.jar" -Destination 'C:\Program Files (x86)\Java\jre1.8.0_121\lib\security\' `
      -Force | Out-Null

    $JavaAutoUpdater = Get-CimInstance -ClassName CIM_Product -Filter "Name LIKE '%Java Auto Updater%'"

    if ($JavaAutoUpdater) {

      $JavaAutoUpdater | Invoke-CimMethod -MethodName Uninstall | Out-Null

    }

  } # End of Invoke-Command ScriptBlock

  Write-EventLog -LogName Application -EntryType Information -EventId 1 -Source 'Awesome Scripts' -Message (
    "$env:USERNAME just installed Java on $($($_.ToUpper())) from $($($env:COMPUTERNAME.ToUpper()))"
  )

} # End of ForEach-Object (`$ComputerName)

} # Process

End {

$EndTime = (Get-Date)

Write-Verbose 'finished Java install'

Write-Verbose "Elapsed Time: $(($EndTime - $StartTime).TotalSeconds) seconds"

}

<#
  .SYNOPSIS
    Installs the latest version of Java

  .DESCRIPTION
    Installs the latest version of Java

  .EXAMPLE
    Install-Java -ComputerName host1
    Installs Java on host1

  .EXAMPLE
    'host1','host2','host3' | Install-Java
    Installs Java on the three host input via the pipeline

  .PARAMETER ComputerName
    The computer name/names to operate on. Defaults to `$env:COMPUTERNAME
#>

} # End of Install-Java Function