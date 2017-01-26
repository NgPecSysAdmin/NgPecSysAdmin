Function Get-TargetedEvents  {

[cmdletbinding()]

Param (

  [parameter(ValueFromPipeline=$True,ValueFromPipelineByPropertyName=$True)]
  [Alias('DNSHostName','PSComputerName','CN','Hostname')]
  [array] $ComputerName = @($env:COMPUTERNAME),

  [int] $Hours = 1,

  [string] $SearchTerm = $env:USERNAME

) # Param

Begin  {

  $SearchTimeSpan = $Hours * 3600000

  $QueryLeft = "<QueryList><Query Id='0' Path='Security'><Select Path='Security'>*[System[TimeCreated[timediff(@SystemTime) &lt;= $SearchTimeSpan]]] and *[EventData[Data='"

  $QueryRight = "']]</Select></Query></QueryList>"

  $QueryString = $QueryLeft + $SearchTerm + $QueryRight

  $QueryFilterXml = [xml] $QueryString

} # Begin

Process  {

  $ComputerName | ForEach-Object {

    Get-WinEvent -ComputerName $_ -FilterXml $QueryFilterXml

  }

} # Process

End {} # End

<#

  .SYNOPSIS

    Parses Windows logs for events related to a specific username or other metadata value


  .DESCRIPTION

    Parses Windows logs for events related to a specific username or other metadata value


  .PARAMETER ComputerName

    The computer name/names to operate on. Defaults to `$env:COMPUTERNAME


  .PARAMETER Hours

    Number of hours to go back and search


  .PARAMETER SearchTerm

    The term to search for


  .EXAMPLE

    Get-TargetedEvents -Hours 6 -SearchTerm user.name
    Gets local events for user.name in the last 6 hours


  .EXAMPLE

    'host1','host2' | Get-TargetedEvents -Hours 6 -SearchTerm user.name
    Gets events from both hosts input via the pipeline for user.name in the last 6 hours


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

} # Get-TargetedEvents