function Get-DellDriverCabs {

[cmdletbinding()]

Param (

    [string] $OutCabArchive = $($env:TEMP + '\DriverPackCatalog.cab'),

    [string] $OutFile = $($env:TEMP + '\DriverPackCatalog.xml'),

    [string] $DriverPackCatalogUrl = 'https://downloads.dell.com/catalog/DriverPackCatalog.cab'

)

begin {

    # Set DotNet to use TLS 1.2 for the download so it doesn't fail
    [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

} # begin

process {

    if (Test-Path $OutCabArchive) { Remove-Item $OutCabArchive }

    if (Test-Path $OutFile) { Remove-Item $OutFile }

    $ProgressPreferenceBak = $ProgressPreference
    $ProgressPreference = 'SilentlyContinue'

    Invoke-WebRequest -Uri $DriverPackCatalogUrl -OutFile $OutCabArchive

    $ProgressPreference = $ProgressPreferenceBak

    expand $OutCabArchive -F:DriverPackCatalog.xml $OutFile | Out-Null

    $DriverPackCatalogXml = (Get-Content $OutFile -Raw) -as [xml]

    $UrlBase = $('https://' + $DriverPackCatalogXml.DocumentElement.baseLocation + '/')

    $Drivers = $DriverPackCatalogXml.DocumentElement.DriverPackage

    $Drivers |

    Foreach-Object {

        Add-Member -InputObject $_ -MemberType NoteProperty -Name FullPath -Value $($UrlBase + $_.path)

    }

    Remove-Item $OutCabArchive

    Remove-Item $OutFile

    $Drivers

} # process

end {} # end

} # function Get-DellDriverCabs