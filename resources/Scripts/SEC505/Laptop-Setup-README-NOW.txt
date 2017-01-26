-----------------------------------------------------

         Welcome to the SANS Institute!

-----------------------------------------------------


Please make the following changes on the morning of the first day before we begin:


* Insert the course USB or CD given to you by the instructor.


* In the Windows Server virtual machine (VM) you have created for this course, 
  mount the SEC505.ISO file on the course USB or CD given to you as a drive.  
  It might appear as drive letter D:\ inside the VM (see instructions below).

  
* In your testing VM, not on your host laptop, create this folder:  

    C:\SANS


* Copy everything from the mounted ISO into C:\SANS inside your VM, hence,
  you will probably copy everything from D:\ into C:\SANS in the VM.
  

* In your VM, right-click the blue PowerShell shortcut in the taskbar 
  and Run As Administrator.


* In PowerShell, type the following commands:


    Set-ExecutionPolicy Bypass -Force
    
    cd C:\SANS
    
    .\SEC505-Setup-Script.ps1


    
Note: You will need to run the script *twice*, as instructed by the script.

Note: If you cannot find the script, or if you do not have a folder named
      C:\SANS\Tools, then you've not copied the contents of the CD/ISO to
      the C:\SANS folder.  You may have copied the Windows Server DVD or
      may have copied just the ISO file instead.



-----------------------------------------------------

  How To Mount An ISO File In A Virtual Machine

-----------------------------------------------------
In your virtual machine software, go to the Properties or Settings of
your test VM for this course.  There will be a section labeled "CD/DVD"
or similar.  In that section, choose the option to mount an .ISO file,
then browse to this USB drive and select SEC505.ISO.

Be careful not to copy the Windows Server installation DVD/ISO into
the C:\SANS folder of your VM.  If you see folders named "boot", "efi", 
"sources" or "support", then this is not correct, these folders are from
the Windows Server installation media.  Delete all these and try again.

The correct folders will be named "Day1-PowerShell", "Day2-*", etc. and 
there will be a script named "SEC505-Setup-Script.ps1" in the root
folder too.



-----------------------------------------------------

  How To Mount An ISO File On Your Host Computer

-----------------------------------------------------
The following steps are not necessary for this course, but if you'd 
like to extract the files from the SEC505.ISO and save them to your 
host laptop, here is how to do it:


    ---------------------------------
      On Windows 8/10 and Mac OS X: 
    ---------------------------------
    Just double-click the ISO file to mount it as a drive.


    ---------------------------------
      On Windows 7, Vista or XP: 
    ---------------------------------
    Install the 7-Zip utility from the course USB\CD (in the \7-Zip folder).

    After installation, right-click the SEC505.ISO file, choose 7-Zip, 
    then click Open Archive.  You can extract the contents of the
    ISO to any folder you wish on your computer.  7-Zip is
    also a great tool to leave installed for other purposes.


