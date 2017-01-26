[cmdletbinding()]

Param (

  [datetime] $StartDateTime = ((Get-Date).AddDays(-1)),

  [datetime] $EndDateTime = (Get-Date),

  [string] $UserName = $env:USERNAME,

  [array] $LogFilePath = (
    '\\server1\path\to\logs\'
  )

)

Begin {} # End of Begin ScriptBlock

Process {

  # The XPath filter needs single quotes (') to work. So we need to concatenate the parts so the $UserName variable will still get evaluated.

  $XpathFilterLeft = "*[EventData[Data and (Data='"

  $XpathFilterRight = "')]]"

  # Filter the events

  $LogXpathFilter = ($XpathFilterLeft + $UserName + $XpathFilterRight)

  Get-ChildItem $LogFilePath -File -Filter *.evt -ErrorAction SilentlyContinue |
  Where-Object {

    $_.LastWriteTime -ge $StartDateTime -and $_.LastWriteTime -le $EndDateTime

  } |

  # Start Parsing Logs

  ForEach-Object {

    Get-WinEvent -Path $_.FullName -Oldest -FilterXPath $LogXpathFilter -ErrorAction SilentlyContinue

  } |

  #  If EventId='4776' (Credential Validation)
  #  You need to extract the data fields at index 1 (TargetUserName) and index 2 (Workstation)
  #
  #  If EventId='4624' (Logon)
  #  You need to extract the data fields at index 5 (TargetUserName) index 7 (TargetLogonId), and index 18 (IpAddress)
  #
  #  If EventId='4634' (Logff)
  #  You need to extract the data fields at index 1 (TargetUserName) and index 3 (TargetLogonId)

  # Extract deep XML content and and append it to the parent as a NoteProperty

  ForEach-Object {

    $EventXml = [xml]$_.ToXml() ;

    $EventData = $EventXml.Event.EventData.Data ;

    if ( $_.Id -eq '4776' ) {

      Add-Member -InputObject $_ -MemberType NoteProperty -Name $EventData[1].name -Value $EventData[1].'#text' -Force ;
      Add-Member -InputObject $_ -MemberType NoteProperty -Name 'TargetLogonId' -Value 'Must Correlate By TargetEndPoint' -Force ;
      Add-Member -InputObject $_ -MemberType NoteProperty -Name 'TargetEndPoint' -Value $EventData[2].'#text' -Force ;
      Add-Member -InputObject $_ -MemberType NoteProperty -Name 'Summary' -Value 'The computer attempted to validate the credentials for an account.' -Force -PassThru |
      Select-Object -Property TimeCreated,Id,Summary,TargetUserName,TargetLogonId,TargetEndPoint,MachineName,ContainerLog

    } elseif ( $_.Id -eq '4624' ) {

      Add-Member -InputObject $_ -MemberType NoteProperty -Name $EventData[5].name -Value $EventData[5].'#text' -Force ;
      Add-Member -InputObject $_ -MemberType NoteProperty -Name $EventData[7].name -Value $EventData[7].'#text' -Force ;
      Add-Member -InputObject $_ -MemberType NoteProperty -Name 'TargetEndPoint' -Value $EventData[18].'#text' -Force ;
      Add-Member -InputObject $_ -MemberType NoteProperty -Name 'Summary' -Value 'An account was successfully logged on.' -Force -PassThru |
      Select-Object -Property TimeCreated,Id,Summary,TargetUserName,TargetLogonId,TargetEndPoint,MachineName,ContainerLog

    } elseif ( $_.Id -eq '4634' ) {

      Add-Member -InputObject $_ -MemberType NoteProperty -Name $EventData[1].name -Value $EventData[1].'#text' -Force ;
      Add-Member -InputObject $_ -MemberType NoteProperty -Name $EventData[3].name -Value $EventData[3].'#text' -Force ;
      Add-Member -InputObject $_ -MemberType NoteProperty -Name 'TargetEndPoint' -Value 'Must Correlate By TargetLogonId' -Force ;
      Add-Member -InputObject $_ -MemberType NoteProperty -Name 'Summary' -Value 'An account was logged off.' -Force -PassThru |
      Select-Object -Property TimeCreated,Id,Summary,TargetUserName,TargetLogonId,TargetEndPoint,MachineName,ContainerLog

    }

  }

} # End of Process ScriptBlock

End {} # End of End ScriptBlock

<#

  .SYNOPSIS

    Parses DC logs for user logon and logoff events.


  .DESCRIPTION

    Parses DC logs for user logon and logoff events.


  .PARAMETER StartDateTime

    The date and time to start looking for event logs.
    Defaults to the current DateTime minus 1 day.


  .PARAMETER EndDateTime

    The date and time to stop looking for event logs.
    Defaults to the current DateTime.


  .PARAMETER LogFilePath

    The paths for each DC's security log back-ups on the tool server.


  .EXAMPLE

    .\Get-UserLogonReport.ps1 -StartDateTime '4/1/2016 12:00 AM' -EndDateTime '7/1/2016 12:00 AM' -UserName 'john.doe'
    Gets events where a user logged on or off.


  .NOTES

    ###################################################################

    Author:     @oregon-national-guard/systems-administration
    Version:    1.0

    ###################################################################

    License
    -------
    This Work was prepared by a United States Government employee and,
    therefore, is excluded from copyright by Section 105 of the Copyright
    Act of 1976. Copyright and Related Rights in the Work worldwide are
    waived through the CC0 1.0 Universal license. Portions of specific
    scripts are licensed under Microsoft Limited Public License.

    ###################################################################

    Disclaimer of Warranty
    ----------------------
    This Work is provided "as is." Any express or implied warranties,
    including but not limited to, the implied warranties of merchantability
    and fitness for a particular purpose are disclaimed. In no event shall
    the United States Government be liable for any direct, indirect,
    incidental, special, exemplary or consequential damages (including,
    but not limited to, procurement of substitute goods or services,
    loss of use, data or profits, or business interruption) however caused
    and on any theory of liability, whether in contract, strict liability,
    or tort (including negligence or otherwise) arising in any way out of
    the use of this Guidance, even if advised of the possibility of such damage.

    The User of this Work agrees to hold harmless and indemnify the
    United States Government, its agents and employees from every claim or
    liability (whether in tort or in contract), including attorneys' fees,
    court costs, and expenses, arising in direct consequence of Recipient's
    use of the item, including, but not limited to, claims or liabilities
    made for injury to or death of personnel of User or third parties, damage
    to or destruction of property of User or third parties, and infringement or
    other violations of intellectual property or technical data rights.

    Nothing in this Work is intended to constitute an endorsement, explicit or implied,
    by the United States Government of any particular manufacturer's product or service.

    ###################################################################

    Disclaimer of Endorsement
    -------------------------
    Reference herein to any specific commercial product, process,
    or service by trade name, trademark, manufacturer, or otherwise,
    in this Work does not constitute an endorsement, recommendation,
    or favoring by the United States Government and shall not be used
    for advertising or product endorsement purposes.

    ###################################################################


  .LINK

    https://github.com/oregon-national-guard


  .LINK

    https://creativecommons.org/publicdomain/zero/1.0/

#>