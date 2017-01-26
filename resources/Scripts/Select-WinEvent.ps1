Function Select-WinEvent {
  [CmdletBinding(DefaultParameterSetName = 'Select')]
  Param (
    [Parameter(Mandatory = $True, Position = 0, ValueFromPipeline = $True)]
    [System.Diagnostics.Eventing.Reader.EventLogRecord] $Event,

    [Parameter(ParameterSetName = 'Select')]
    [String[]] $Property,

    [Parameter(ParameterSetName = 'Select')]
    [Switch] $IncludeData,

    [Parameter(ParameterSetName = 'Select')]
    [String[]] $DataProperty,

    [Parameter(Mandatory = $True, ParameterSetName = 'Extract')]
    [String] $ExpandDataProperty
  )
  Begin {
    # XML namespace of windows events required for Select-XML
    $Namespace = @{
      'ns' = 'http://schemas.microsoft.com/win/2004/08/events/event'
    } 
    # Format string for selecting named data fields
    $xpath = "//ns:Data[@Name = '{0}']" 
  } #Begin
  Process  {
    ForEach ($e in $Event) {
      # An XMLDocument used for Data selection
      # and XPath searching
      $xml = [xml]$e.toxml()
      Switch ($PSCmdlet.ParameterSetName) {
        'Select' {
          If( -not $Property -and -not $DataProperty -and -not $IncludeData ) {
            Throw "No properties selected."
          }
          # Hashtable used to build properties
          # of resultant object.
          $properties = @{}

          #region Property Selection
          If($Property)  {       
            
            If($Property -contains "*") {
              # And asterisk means to select
              # all properties of the object
              $propertyset = $e | 
              Get-Member -MemberType Property |
              Select-Object -ExpandProperty Name
            }
            Else  {
              $propertyset = $Property
            }
            ForEach($item in $propertyset) {
              $properties[$item] = $e."$item"
            } 
          }
          #endregion Property Selection
          
          #region IncludeData Section
          # IncludeData creates a property called
          # Data that is a hash table of all the
          # named data properties of the event's
          # XML
          If($IncludeData) {
            $nameddata = @{}
            ForEach($item in $xml.Event.EventData.Data) {
              If($item.Name) {
                $nameddata[$item.Name] = $item.'#text'
              }
            }
          $properties['Data'] = $nameddata
          }
          #endregion IncludeData Section           

          #region DataProperty Section
          If($DataProperty) {
            If($DataProperty -contains "*") {
              # And asterisk means to select all
              # of the named data fields.
              $dataset = $xml.Event.EventData.Data.Name
            }
            Else {
              $dataset = $DataProperty
            }
            ForEach($item in $dataset) {
              # Determine if there is already a property
              # of the same name defined.  If so, prefix
              # the data property with 'DATA-'
              If($properties.Keys -notcontains $item) {
                $name = $item
              }
              Else {
                $name = "DATA-$item"
              }
              $properties[$name] = (
                $xml |
                Select-Xml -XPath ($xpath -f $item) -Namespace $namespace
              ).Node.'#text'
            }
          }
          #endregion DataProperty Section
         Return New-Object -TypeName PSObject -Property $properties
        }
        #endregion ParameterSet Select

        #region ParameterSet Extract
        'Extract' {                    
          Return (
            $xml |
            Select-Xml -XPath ($xpath -f $ExpandDataProperty) -Namespace $Namespace
          ).Node.'#text'
        }
        #endregion ParameterSet Extract
      } # Switch
    } # ForEach ($e in $Event)
  } # Process

<#
.SYNOPSIS
This function takes events from Get-WinEvent and allows the selection
of properties including properties from the Data section of
the XML.
.DESCRIPTION
This function takes events from Get-WinEvent and allows the selection
of properties including properties from the Data section of
the XML.

You can select both the normal properties of the event and the named
data properties.

If there is a name conflict between a normal property and a named data
property, then the data property will have 'DATA-' prefixing its property
name.
.PARAMETER Property
This parameter allows you to select the event object's properties
 The properties selected here are the ones returned by Get-WinEvent.

You may select all properites by passing this parameter an *.
.PARAMETER DataProperty
This parameter will select properties that are found in
the event's XML in Data nodes. If there is a naming conflict between
one of these properties and those selected in the parameter -Property, 
then the DataProperty's name will be prefixed with 'DATA-'

You may select all DataProperties by passing this parameter an *.
.PARAMETER IncludeData
This switch will create a property in the resultant object called Data.
It will hold a hash table of any named properties in the event.
.PARAMETER ExpandDataProperty
This parameter allows you to extract the value from a specified data property.
.EXAMPLE
Get-WinEvent -LogName Security -MaxEvents 10 | 
Select-WinEvent -Property Id,TimeCreated,LogName -DataProperty SubjectUserName,TargetUserName
.EXAMPLE
Get-WinEvent -LogName Security -MaxEvents 10 |
Select-WinEvent -DataProperty SubjectUserName
.EXAMPLE
Get-WinEvent -LogName Security -MaxEvents 10 |
Select-WinEvent -Property Id,TimeCreated -IncludeData
.EXAMPLE
Get-WinEvent -LogName Security -MaxEvents 10 |
Select-WinEvent -ExpandDataProperty SubjectUserName
#>
} #Select-WinEvent