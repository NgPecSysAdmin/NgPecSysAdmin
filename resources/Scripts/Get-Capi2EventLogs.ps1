function Get-Capi2EventLogs {

Param (

  [parameter(ValueFromPipeline=$True,ValueFromPipelineByPropertyName=$True)]
  [Alias('DNSHostName','PSComputerName','CN','Hostname')]
  [string] $ComputerName = $env:COMPUTERNAME

) # End of Param section

Begin {

  $Capi2EventFilter = [xml] @"
<QueryList>
  <Query Id='0' Path='Microsoft-Windows-CAPI2/Operational'>
    <Select Path='Microsoft-Windows-CAPI2/Operational'>
      *[System[(Level=1  or Level=2 or Level=3) and TimeCreated[timediff(@SystemTime) &lt;= 86400000]]]
    </Select>
  </Query>
</QueryList>
"@

} # End of Begin ScriptBlock

Process {

  Get-WinEvent -ComputerName $ComputerName -FilterXml $Capi2EventFilter |

  ForEach-Object {

    $EventXml = [xml]$_.ToXml() ;

    $ServerName = $EventXml.Event.UserData.CertVerifyCertificateChainPolicy.SSLAdditionalPolicyInfo.serverName ;
    $ResultText = $EventXml.Event.UserData.CertVerifyCertificateChainPolicy.Result.'#text' ;
    $ProcessName = $EventXml.Event.UserData.CertVerifyCertificateChainPolicy.EventAuxInfo.ProcessName ;
    $Certificate = $EventXml.Event.UserData.CertVerifyCertificateChainPolicy.Certificate.fileRef ;
    $SubjectName = $EventXml.Event.UserData.CertVerifyCertificateChainPolicy.Certificate.subjectName ;
    $CorrelationTaskId = $EventXml.Event.UserData.CertVerifyCertificateChainPolicy.CorrelationAuxInfo.TaskId ;

    New-Object -TypeName psobject -Property (

      @{ 'TimeCreated' = $_.TimeCreated ;
         'Id' = $_.Id ;
         'TaskDisplayName' = $_.TaskDisplayName ;
         'LevelDisplayName' = $_.LevelDisplayName ;
         'MachineName' = $_.MachineName ;
         'ProcessId' = $_.ProcessId ;
         'ThreadId' = $_.ThreadId ;
         'ProcessName' = $ProcessName ;
         'ServerName' = $ServerName ;
         'SubjectName' = $SubjectName ;
         'Certificate' = $Certificate ;
         'ResultText' = $ResultText ;
         'CorrelationTaskId' = $CorrelationTaskId
      }
    )

  } |

  Select-Object -Property TimeCreated,Id,TaskDisplayName,LevelDisplayName,MachineName,ProcessId,ThreadId,ProcessName,ServerName,SubjectName,Certificate,ResultText,CorrelationTaskId

} # End of Process ScriptBlock

End {} # End of End ScriptBlock

} # End of function Get-Capi2EventLogs