Function New-AudioNotification {

  [CmdletBinding(SupportsShouldProcess = $True,ConfirmImpact = 'Low')]

  Param(

    [parameter(Mandatory=$False,ValueFromPipeline=$True,ValueFromPipelineByPropertyName=$True)]
    [string]$Message = 'PowerShell all the things!'

  )

  Begin {

  $AudioControl = @'
using System.Runtime.InteropServices;

[Guid("5CDF2C82-841E-4546-9722-0CF74078229A"), InterfaceType(ComInterfaceType.InterfaceIsIUnknown)]

interface IAudioEndpointVolume {

  // f(), g(), ... are unused COM method slots. Define these if you care
  int f(); int g(); int h(); int i();
  int SetMasterVolumeLevelScalar(float fLevel, System.Guid pguidEventContext);
  int j();
  int GetMasterVolumeLevelScalar(out float pfLevel);
  int k(); int l(); int m(); int n();
  int SetMute([MarshalAs(UnmanagedType.Bool)] bool bMute, System.Guid pguidEventContext);
  int GetMute(out bool pbMute);

}

[Guid("D666063F-1587-4E43-81F1-B948E807363F"), InterfaceType(ComInterfaceType.InterfaceIsIUnknown)]

interface IMMDevice {

  int Activate(ref System.Guid id, int clsCtx, int activationParams, out IAudioEndpointVolume aev);

}

[Guid("A95664D2-9614-4F35-A746-DE8DB63617E6"), InterfaceType(ComInterfaceType.InterfaceIsIUnknown)]

interface IMMDeviceEnumerator {

  int f(); // Unused
  int GetDefaultAudioEndpoint(int dataFlow, int role, out IMMDevice endpoint);

}

[ComImport, Guid("BCDE0395-E52F-467C-8E3D-C4579291692E")] class MMDeviceEnumeratorComObject { }

public class Audio {

  static IAudioEndpointVolume Vol() {

    var enumerator = new MMDeviceEnumeratorComObject() as IMMDeviceEnumerator;
    IMMDevice dev = null;
    Marshal.ThrowExceptionForHR(enumerator.GetDefaultAudioEndpoint(/*eRender*/ 0, /*eMultimedia*/ 1, out dev));
    IAudioEndpointVolume epv = null;
    var epvid = typeof(IAudioEndpointVolume).GUID;
    Marshal.ThrowExceptionForHR(dev.Activate(ref epvid, /*CLSCTX_ALL*/ 23, 0, out epv));
    return epv;

  }

  public static float Volume {

    get {float v = -1; Marshal.ThrowExceptionForHR(Vol().GetMasterVolumeLevelScalar(out v)); return v;}
    set {Marshal.ThrowExceptionForHR(Vol().SetMasterVolumeLevelScalar(value, System.Guid.Empty));}

  }

  public static bool Mute {

    get { bool mute; Marshal.ThrowExceptionForHR(Vol().GetMute(out mute)); return mute; }
    set { Marshal.ThrowExceptionForHR(Vol().SetMute(value, System.Guid.Empty)); }

  }

} 
'@

  }

  Process {

  If ($PSCmdlet.ShouldProcess("Message: $Message")) {

    # Load our snippet of COM goodness.
    Add-Type -TypeDefinition $AudioControl

    # Load the DotNet classes we need.
    Add-Type -AssemblyName System.Speech
    [Reflection.Assembly]::LoadWithPartialName('System.Speech') | Out-Null

    # Take note of current volume and mute status.
    $IsMuted = [audio]::Mute
    $CurrentVolume = [audio]::Volume

    # Unmute the sound.
    If($IsMuted) { [audio]::Mute = $False }

    # Set volume to maximum.
    [audio]::Volume = 1

    # Make the magic happen!
    $SpeechSynthesizer = New-Object -TypeName System.Speech.Synthesis.SpeechSynthesizer
    $SpeechSynthesizer.SelectVoiceByHints('Female')
    $SpeechSynthesizer.Rate = 0
    $SpeechSynthesizer.Speak($Message)

    # Return to previous volume.
    [audio]::Volume = $CurrentVolume

    # Return to previous mute state.
    If($IsMuted) { [audio]::Mute = $True }

  } # End of If (ShouldProcess)

  } # End of Process

  End{}
  <#
    .SYNOPSIS
      Generates super awesome text-to-speech notifications in PowerShell.

    .DESCRIPTION
      Accepts a text string input and uses it to make your computer talk.
      It takes note of the current volume, sets the volume to the maximum level,
      disables the ability to mute, plays the message, re-enables the ability to mute,
      and returns the volume to the original level.

    .PARAMETER Message
      The [string] of text that will be spoken by the speech synthesizer.

    .EXAMPLE
      New-AudioNotification -Message 'Come at me bro!'

    .EXAMPLE
      New-AudioNotification -Message 'Why are you watching NetFlix?'
  #>
}

Function Invoke-LocalFunctionRemotely {

  [cmdletbinding()]

  Param(

    [parameter(Mandatory=$False,ValueFromPipeline=$True,ValueFromPipelineByPropertyName=$True)]
    [Alias('CN','Hostname','Target','IP','IpAddress')]
    [string] $ComputerName = $env:COMPUTERNAME

  )

  Begin {}

  Process {

  $ErrorActionPreference = 'Stop'

  try {

    try {

      Write-Verbose -Message "Trying to resolve $ComputerName"
      $ResolvedComputerName = (([System.Net.Dns]::GetHostEntry("$ComputerName").HostName) -ireplace '\..+','')
      Write-Verbose -Message "$ComputerName resolved to $ResolvedComputerName"

    } catch {

      Write-Warning -Message "Failed to resolve `"$ComputerName`" to a ComputerName"

    } # End of try catch (ResolvedComputerName Validation)

    try {

      Write-Verbose -Message "Testing to see if $ResolvedComputerName is reachable"
      $Reachable = Test-Connection -Count 1 -ComputerName $ResolvedComputerName -Quiet
      Write-Verbose -Message "$ResolvedComputerName is reachable"
      Write-Verbose -Message "Attempting remote connection"

    } catch {

      Write-Warning -Message "$ResolvedComputerName is NOT reachable"

    } # End of try catch (Reachability Test)

    If ($Reachable) {

      $WorkingSession = New-PSSession -ComputerName $ResolvedComputerName -Name $ResolvedComputerName
      
      Invoke-Command -Session $WorkingSession -ScriptBlock {  }

    }

  } catch {

    Write-Warning -Message "Invoke-LocalFunctionRemotely failed on $ResolvedComputerName"

  }

  }

  End{}
  <#
    .SYNOPSIS
      Wrapper for Invoke-Command that makes using local functions simpler.

    .DESCRIPTION
      Wrapper for Invoke-Command that makes using local functions simpler.

    .PARAMETER ComputerName
      The computer name to query. Defaults to localhost (actually... $env:COMPUTERNAME)

    .EXAMPLE
      Later

    .EXAMPLE
      Later
  #>
}