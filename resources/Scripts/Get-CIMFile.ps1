Function Get-CIMFile {
    <#
        .SYNOPSIS
            Gets all files using the specified name or extension against multiple systems.

        .DESCRIPTION
            Gets all files using the specified name or extension against multiple systems.

        .PARAMETER Computername
            List of computers to run the query against

        .PARAMETER FileName
            Name of File/s to search for. Accepts wildcard values (*,%,?,_)
    
        .PARAMETER Drive
            Drive to search for file, If no drive is specified, all drives will be scanned.

        .PARAMETER Credential
            Specify alternate credentials

        .PARAMETER Throttle
            Number of concurrently running jobs to run at a time

        .NOTES
            Author: Boe Prox
            Name: Get-CIMFile.ps1
            Date Created: 31 Jan 2013
            Last Modified: 1 Feb 2013 
                Version 1.2 - Added support for wildcards
                Version 1.1 - Added Credential parameter
                Version 1.0 - Initial Creation

        .EXAMPLE
            Get-CimFile -Name powershell.log | Select Caption,CSName

            Caption                                                     CSName
            -------                                                     ------
            c:\users\Administrator\desktop\powershell.log               Boe-PC

            Description
            -----------
            Get the location of powershell.log using the default comptuername of the local computer

        .EXAMPLE
            Get-CIMFile -Name power*.lo? | Select Caption,CSName

            Caption                                                     CSName
            -------                                                     ------
            c:\users\Administrator\desktop\powershell.log               Boe-PC

            Description
            -----------
            Get the location of powershell.log using the default computername of the local computer as well as
            allowing the use of wildcards. The use of wildcards does cause a performance hit to the query.

        .EXAMPLE
            Get-CimFile -name .ps1,*update,ha?dle.exe -Drive C: | Select Caption

            Description
            -----------
            Gets multiple files based on the extension and filenames as well as looking in hte C: drive.
    #>

    [cmdletbinding()]
    #region Parameters
    Param (
        [parameter(ValueFromPipeline=$True,ValueFromPipelineByPropertyName=$True)]
        [Alias("Computer","__Server","IPAddress","CN","dnshostname")]
        [string[]]$Computername = $env:COMPUTERNAME,
        [parameter(Mandatory=$True,ParameterSetName='File')]
        [ValidateNotNullOrEmpty()]
        [Alias('File','Path','Fullname')]
        [string[]]$Name,
        [parameter()]
        [string]$Drive,
        [parameter()]
        [Alias('RunAs')]
        [System.Management.Automation.Credential()]$Credential = [System.Management.Automation.PSCredential]::Empty,    
        [parameter()]
        [Alias("MaxJobs")]
        [int]$Throttle = 10
    )
    #endregion Parameters
    Begin {
        [regex]$regex_wildcards = "\*|%|_|\?"
        $oldTitle = [console]::Title
        #region Functions
        #Function to perform runspace job cleanup
        Function Get-RunspaceData {
            [cmdletbinding()]
            param(
                [switch]$Wait
            )
            Do {
                $more = $false         
                Foreach($runspace in $runspaces) {
                    If ($runspace.Runspace.isCompleted) {
                        $runspace.powershell.EndInvoke($runspace.Runspace)
                        $runspace.powershell.dispose()
                        $runspace.Runspace = $null
                        $runspace.powershell = $null                 
                    } ElseIf ($runspace.Runspace -ne $null) {
                        $more = $true
                    }
                }
                If ($more -AND $PSBoundParameters['Wait']) {
                    Start-Sleep -Milliseconds 100
                }   
                #Clean out unused runspace jobs
                $temphash = $runspaces.clone()
                $temphash | Where {
                    $_.runspace -eq $Null
                } | ForEach {
                    Write-Verbose ("Removing {0}" -f $_.computer)
                    $Runspaces.remove($_)
                }  
                [console]::Title = ("Remaining Runspace Jobs: {0}" -f ((@($runspaces | Where {$_.Runspace -ne $Null}).Count)))           
            } while ($more -AND $PSBoundParameters['Wait'])
        }
        #endregion Functions
        #region Begin Filter Build
        If ($Drive.Length -gt 0) {
            $Filter = "Drive='{0}' AND (" -f $Drive
        }
        #endregion Begin Filter Build
        #region Reformat for WMI    
        $firstRun = $True
        ForEach ($item in $name) {
            If ($item -match "\.") {
                $index = $item.LastIndexOf(".")
                $filename = $item.Substring(0,$index)
                $_extension = $item.Substring($index+1)
                $filenameFilter= ("Filename='{0}'" -f $filename)
                $_extensionFilter= ("Extension='{0}'" -f $_extension)
                If ($filenameFilter -match $regex_wildcards) {
                    $filenameFilter = $filenameFilter -replace "="," LIKE "
                }
                If ($_extensionFilter -match $regex_wildcards) {
                    $_extensionFilter = $_extensionFilter -replace "="," LIKE "
                }
                If ($firstRun) {
                    If ($filename.length -gt 0 -AND $_extension.length -gt 0) {
                        $filter = "{0}({1} AND {2})" -f $filter,$filenameFilter,$_extensionFilter
                        $firstRun = $False                
                    } ElseIf ($filename.length -gt 0) {
                        $filter = "{0}{1}" -f $filter,$filenameFilter
                        $firstRun = $False 
                    } ElseIf ($_extension.length -gt 0) {
                        $filter = "{0}{1}" -f $filter,$_extensionFilter
                        $firstRun = $False                 
                    }
                } Else {
                    If ($filename.length -gt 0 -AND $_extension.length -gt 0) {
                        $filter = "{0} OR ({1} AND {2})" -f $filter,$filenameFilter,$_extensionFilter
                        $firstRun = $False                
                    } ElseIf ($filename.length -gt 0) {
                        $filter = "{0} OR {1}" -f $filter,$filenameFilter
                        $firstRun = $False 
                    } ElseIf ($_extension.length -gt 0) {
                        $filter = "{0} OR {1}" -f $filter,$_extensionFilter
                        $firstRun = $False                 
                    }
                }
            } Else {
                $filenameFilter= ("Filename='{0}'" -f $item)
                If ($filenameFilter -match $regex_wildcards) {
                    $filenameFilter = $filenameFilter -replace "="," LIKE "
                }
                If ($firstRun) {
                    $filter = "{0}{1}" -f $filter,$filenameFilter
                    $firstRun = $False 
                } Else {
                    $filter = "{0} OR {1}" -f $filter,$filenameFilter
                }
            }
        }  
        #Add a closing ) at the end of the filter
        If ($Drive.Length -gt 0) {
            $Filter = "{0})" -f $filter
        }        
        #Use the appropriate method to handle illegal wildcards
        If ($host.version.Major -eq 3) {
            #Format the filter so it has the correct WQL wildcards, if applicable - V3 only
            $filter = (([Management.Automation.WildcardPattern]$filter).ToWql()).Trim()            
        } Else {
            #Using V2 so we have to use a little different approach
            $Filter = ($Filter -replace "\*","%") -replace "\?","_"
        }
        Write-Verbose ("Filter: {0}" -f $Filter)
        #endregion Reformat for WMI

        #region Splat Tables
        #Define hash table for Get-RunspaceData function
        $runspacehash = @{}

        #Define hash table for WMI
        $wmi = @{
            Class = 'CIM_DataFile'
            Filter = $filter
            ErrorAction = 'Stop'
        }
        If ($Credential) {
            $wmi.Credential = $Credential
        }
        #Define Test-Connection hash table
        $testConn = @{
            Count = 1
            Quiet = $True
        }
        #endregion Splat Tables

        #region ScriptBlock
        $scriptBlock = {
            Param ($Computer,$wmi,$testConn)
            $testConn.Computername = $Computer
            If (Test-Connection @testConn){
                $wmi.Computername = $Computer
                If ($Computer -eq $env:COMPUTERNAME) {
                    #Alternate credentials are not valid for a local query
                    $wmi.Remove('Credential')
                }
                Get-WmiObject @wmi
                Try {
                } Catch {
                    Write-Warning ("{0}: {1}" -f $Computer,$_.Exception.Message)
                }
            } Else {
                Write-Warning ("{0}: Unavailable" -f $Computer)
            }               
        }
        #endregion ScriptBlock

        #region Runspace Creation
        Write-Verbose ("Creating runspace pool and session states")
        $sessionstate = [system.management.automation.runspaces.initialsessionstate]::CreateDefault()
        $runspacepool = [runspacefactory]::CreateRunspacePool(1, $Throttle, $sessionstate, $Host)
        $runspacepool.Open()  
        
        Write-Verbose ("Creating empty collection to hold runspace jobs")
        $Script:runspaces = New-Object System.Collections.ArrayList        
        #endregion Runspace Creation
    }
    Process {
        ForEach ($Computer in $Computername) {
            #Create the powershell instance and supply the scriptblock with the other parameters 
            $powershell = [powershell]::Create().AddScript($scriptBlock).AddArgument($computer).AddArgument($wmi).AddArgument($testConn)
           
            #Add the runspace into the powershell instance
            $powershell.RunspacePool = $runspacepool
           
            #Create a temporary collection for each runspace
            $temp = "" | Select-Object PowerShell,Runspace,Computer
            $Temp.Computer = $Computer
            $temp.PowerShell = $powershell
           
            #Save the handle output when calling BeginInvoke() that will be used later to end the runspace
            $temp.Runspace = $powershell.BeginInvoke()
            Write-Verbose ("Adding {0} collection" -f $temp.Computer)
            $runspaces.Add($temp) | Out-Null
           
            Write-Verbose ("Checking status of runspace jobs")
            Get-RunspaceData @runspacehash        
        }
    }
    End {
        Write-Verbose ("Finish processing the remaining runspace jobs: {0}" -f ((@($runspaces | Where {$_.Runspace -ne $Null}).Count)))
        $runspacehash.Wait = $true
        Get-RunspaceData @runspacehash
        [console]::Title = $oldTitle
        #region Cleanup Runspace
        Write-Verbose ("Closing the runspace pool")
        $runspacepool.close()  
        $runspacepool.Dispose() 
        #endregion Cleanup Runspace
    }
}