[cmdletbinding()]
Param (
	[string] $QuestionSource = 'https://raw.githubusercontent.com/NgPecSysAdmin/NgPecSysAdmin/master/resources/Questions/questions.xml',
	[int] $NumberOfQuestions = 10
) # Param
Process {
$ProgressPreferenceBak = $ProgressPreference
$ProgressPreference = [System.Management.Automation.ActionPreference]::SilentlyContinue
$strQuestions = Invoke-WebRequest -Uri $QuestionSource -UseBasicParsing
$ProgressPreference = $ProgressPreferenceBak
$xmlQuestions = ($strQuestions.Content) -as [xml]
$ListPerQuestion = $xmlQuestions.'TaggedPDF-doc'.Sect.L.L.L.LI.LBody
[Collections.Generic.List[Object]] $questions = @()
ForEach ($List in $ListPerQuestion) {
	$q = New-Object -TypeName psobject
	$q | Add-Member -MemberType NoteProperty -Name 'Question' -Value $(($List.'#Text').Substring(3))
	[Collections.Generic.List[Object]] $Answers = @()
	$($List.L.LI.LBody.'#text') | ForEach-Object { $Answers += $_ }
	$q | Add-Member -MemberType NoteProperty -Name 'Answers' -Value $Answers
	$questions += $q
} # ForEach (`$List in `$ListPerQuestion)
$questions | ForEach-Object -Begin {$i=0} -Process {
	$_ | Add-Member -MemberType NoteProperty -Name Id -Value ($i++)
}
$questions = $questions | Sort-Object { Get-Random }
$questions = $questions | Select-Object -First $NumberOfQuestions
Clear-Host
Write-Host ''
Write-Host "  _                _ _" -ForegroundColor Yellow
Write-Host " | |    __ _      | (_) __ _  __ _ _   _" -ForegroundColor Yellow
Write-Host " | |   /  `` |  _  | | |/  `` |/  `` | | | |" -ForegroundColor Yellow
Write-Host " | |__| (_| | | |_| | | (_| | (_| | |_| |" -ForegroundColor Yellow
Write-Host " |_____\__,_|  \___/|_|\__, |\__, |\__, |" -ForegroundColor Yellow
Write-Host "      _                |___/ |___/ |___/" -ForegroundColor Yellow
Write-Host "     | | __ _ _ __      | | __ _ _ __" -ForegroundColor Yellow
Write-Host "  _  | |/  `` | '__|  _  | |/  `` | '__|" -ForegroundColor Yellow
Write-Host " | |_| | (_| | |    | |_| | (_| | |" -ForegroundColor Yellow
Write-Host "  \___/ \__,_|_|     \___/ \__,_|_|" -ForegroundColor Yellow
Write-Host " |  _ \  ___   ___" -ForegroundColor Yellow
Write-Host " | | | |/ _ \ / _ \" -ForegroundColor Yellow
Write-Host " | |_| | (_) | (_) |" -ForegroundColor Yellow
Write-Host " |____/ \___/ \___/" -ForegroundColor Yellow
Write-Host ''
Write-Host ''
Write-Host 'Welcome to the snazzier way to study for your MCSA. :-)' -ForegroundColor Green
Write-Host ''
Write-Host "Real-Time answer feedback isn't implemented yet. Stay tuned for updates." -ForegroundColor Green
Write-Host 'For now, your inputs are appended to the questions and output to the pipeline as objects.' -ForegroundColor Green
Write-Host ''
Write-Host 'Answer validation will work as soon as I get a little smarter with XML parsing.' -ForegroundColor Green
Write-Host ''
Write-Host 'Press <ENTER> to get started.'
$dump = Read-Host
Clear-Host
[Collections.Generic.List[Object]] $inputs = @()
ForEach ($q in $questions) {
	Clear-Host
	Write-Host ''
	Write-Host ''
	Write-Host "$($q.Question)" -ForegroundColor Yellow
	Write-Host ''
	$q.Answers | ForEach-Object {
		Write-Host "$($_)"
		Write-Host ''
	}
	Write-Host ''
	Write-Host 'Make your selection: ' -NoNewline -ForegroundColor Green
	$choice = Read-Host
	Write-Host ''
	$ok = $choice -match '^[abcdef]+$'
	if ( -not $ok) {
		$inputs += "you're a potato"
		Clear-Host
	} elseif ($ok) {
		$inputs += $choice
		Clear-Host
	}
} # ForEach (`$q in `$questions)
$inputs | ForEach-Object -Begin {$i=0} -Process {
	$_ | Add-Member -MemberType NoteProperty -Name Index -Value ($i++)
}
$questions | ForEach-Object -Begin {$i=0} -Process {
	$_ | Add-Member -MemberType NoteProperty -Name Index -Value ($i++)
}
$questions | ForEach-Object {
	$_ | Add-Member -MemberType NoteProperty -Name 'Input' -Value $($inputs[$($_.Index)])
}
Write-Output $questions
<#
	.SYNOPSIS
		Provides MCSA Practice questions in PowerShell.
	.DESCRIPTION
		Provides MCSA Practice questions in PowerShell by reading an XML
		document that was exported from a PDF of some practice questions.
	.EXAMPLE
		.\Get-McsaQuestions.ps1
		Gives the default of 10 random questions.
	.EXAMPLE
		. .\Get-McsaQuestions.ps1 -NumberOfQuestions 50
		Gives you 50 random questions out of a possible 524
	.PARAMETER NumberOfQuestions
		Number of questions you want to be presented with.
		There are currently 524 in total in the `$QuestionSource.
	.PARAMETER QuestionSource
		The web location of the xml document to pull questions from.
	.NOTES
		Still working on multi-answer inputs and scoring.
		I'm totally open to ideas.
		It's still a bit rough.
		I know it's squished together and ugly.
		It was done to make it simple to copy, paste, and run. :-)
#>
} # Process

