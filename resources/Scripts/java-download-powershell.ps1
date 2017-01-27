# Downloads the latest Java
$bak = $ProgressPreference
$ProgressPreference = 'SilentlyContinue'
$downloadPage = 'http://www.oracle.com/'
$downloadUrl32 = 'http://download.oracle.com/otn-pub/java/jdk/8u121-b13/e9e7ea248e2c4826b92b3f075a80e441/jre-8u121-windows-i586.exe'
$downloadUrl64 = 'http://download.oracle.com/otn-pub/java/jdk/8u121-b13/e9e7ea248e2c4826b92b3f075a80e441/jre-8u121-windows-x64.exe'
Invoke-WebRequest $downloadPage -UseBasicParsing -UseDefaultCredentials -SessionVariable JavaDownloadSession | Out-Null
$JavaDownloadCookie = New-Object System.Net.Cookie("oraclelicense", "accept-securebackup-cookie", "/", ".oracle.com")
$JavaDownloadSession.Cookies.Add($downloadPage, $JavaDownloadCookie)
Invoke-WebRequest $downloadUrl32 -UseBasicParsing -UseDefaultCredentials -WebSession $JavaDownloadSession -OutFile .\jre-8u121-windows-i586.exe
Invoke-WebRequest $downloadUrl64 -UseBasicParsing -UseDefaultCredentials -WebSession $JavaDownloadSession -OutFile .\jre-8u121-windows-x64.exe
$ProgressPreference = $bak
Unblock-File .\jre-8u121-windows-i586.exe | Out-Null
Unblock-File .\jre-8u121-windows-x64.exe | Out-Null
