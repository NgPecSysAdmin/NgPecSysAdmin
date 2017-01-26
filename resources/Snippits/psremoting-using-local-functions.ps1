$NewRemoteAudioMessageDefinition = "Function NewRemoteAudioMessage { ${function:New-AudioNotification} }"

Invoke-Command -ComputerName $ComputerName -ScriptBlock { Param ( $NewRemoteAudioMessageDefinition ) . ([scriptblock]::Create($using:NewRemoteAudioMessageDefinition)) ; NewRemoteAudioMessage -Message 'Hi' }