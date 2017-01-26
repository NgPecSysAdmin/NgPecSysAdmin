' Print files in the selected folder tree
'(Configured to created PDF files using the 'ADOBE PDF' print driver)
' This script will ignore compressed folders (*.zip)
'-----------------------------------------------------------------------
'
option explicit
Dim  fso, objNetwork, objshell, objFolder, objFile, oshell
Dim  UserProfilePath, drvLtr, mapdrv, x, sPrompt, origin, ptype, ftype
Dim  logfile, myfolder, item, targetfolder, tempfolder, fldr, newfile
Dim  tag, synopsis, result, count, skip, batchsize, intermission, emsg, n
'
'
'====== USER-DEFINED VARIABLES ======
'
 ptype = 0 '  Set path type -> 0 = drivepath (e.g., C:\), 1 = UNCpath (e.g., \\fileshare )
'
'                                       '(origin is the network folder 'UNC' path, no ending slash)    
 origin = "\\hqdadfs\Data\Agencies\G6\Pnt\Data\CYBER\2014\08. SAIS-CBC"  
 ftype = "xfdl"                         '(without period, e.g.: docx, xlsx)
 tempfolder = "\DESKTOP\CONVERSIONS\"   '(must start and end with a backslash)
 batchsize = 40                         '(Max batch size; avoids memory saturation)
 intermission = 120                     '(# of seconds to pause between batches)
 tag="_"				'(unique characters added to base file name, before'.pdf')
'
'========= OTHER VARIABLES ==========
'
Set objshell = CreateObject("WScript.Shell")
Set fso = CreateObject("Scripting.FileSystemObject")
Set objNetwork = WScript.CreateObject("WScript.Network")
UserProfilePath = objshell.ExpandEnvironmentStrings("%UserProfile%")
'
intermission = intermission * 1000
if ptype= 0 then origin = 17            'Browse computer drives
tempfolder = UserProfilepath & tempfolder
logfile = tempfolder&"Results.log"
'
'===== MESSAGE BOX CONFIGURATION =====
'
synopsis =         "This script will convert all ' "_
 & ftype &         " ' files in a folder to PDF format."_
 &CHR(10)&CHR(10)& "BEFORE RUNNING THE SCRIPT, YOU MUST DO THE FOLLOWING: "_
 &CHR(10)&CHR(10)& "Set 'ADOBE PDF' as your default printer" _
 &CHR(10)&         "Change the printer's printing preferences to be:"_
 &CHR(10)&         " - View Adobe PDF results (UNCHECK BOX)" _
 &CHR(10)&         " - Adobe PDF Output Folder (Set to '" &tempfolder & "' )"_
 &CHR(10)&CHR(10)& "The script will pause after each batch of "_
 & batchsize &     " files to ensure the queue "_
 &CHR(10)&         "doesn't fill system memory. "_
 &CHR(10)&CHR(10)& "Please be patient. This may take a while!"
'
x=msgbox(Synopsis,0,"==> SET ADOBE PDF AS THE DEFAULT PRINTER !!")
'
'===== CHECK SETTINGS BEFORE SELECTING FOLDER =====
'
  CALL CHECKTEMP(tempfolder)
  CALL CHECKPRINTER(tempfolder)
'
'========== BROWSE FOR FOLDER NAME ===========
'
sPrompt = "Select the folder containing " & ftype & " files " & CHR(10)_
  & "to be converted to PDF format."
'
Set oshell = CreateObject("Shell.Application")
Set objFolder = oshell.BrowseForFolder(0, sPrompt, 1, origin)
If objFolder Is Nothing Then Wscript.Quit
'
myfolder= objFolder.self.path
'
'======== MAP THE FOLDER TO A DRIVE LETTER (UNC Path only) ============
'      (Shortens the path length to avoid file system errors)
'
if ptype=1 then
	mapdrv=90  ' ASCII value for Z, used for drive letter search
	drvltr=chr(mapdrv)
'
	do until fso.driveexists(drvLtr) = false
 		drvltr=chr(mapdrv)
		mapDrv=mapDrv-1
	loop
'
	drvltr = drvltr&":"
	objNetwork.MapNetworkDrive drvLtr, myfolder, False
'
	myfolder=right(myfolder, len(myfolder)-len(origin))
	myfolder=drvLtr & "\" & myfolder
end if
'
'========= COMPLETE SETUP =============
'
set fldr = objfolder
count=0
skip=0
'
'Initialize temporary working folder
  fso.DeleteFile(tempfolder&"*.*")
'
' Create log for skipped files
  set objFile=fso.OpenTextFile(logFile,2,True) 
  objFile.Write "CONVERSION RESULTS" &vbCrLf
  objFile.close'
'
'======================================
'============= RUN SCRIPT =============
'
Createobject("wscript.shell").popup "Beginning conversions...",3,"Converting Files.",64
'
CALL MAKEPDF(fldr, ftype, tempfolder, myfolder, count, skip, batchsize)
'
if count + skip = 0 then 
        msgbox ("No "& "[." & ftype &" ] files found") 
else 
	synopsis =         "CONVERSION RESULTS:" _
	&CHR(10)&CHR(10)&  "Folder:  ..."& right(myfolder,len(myfolder)-2) _
	&CHR(10)&CHR(10)&  "Converted files:  " & count _
	&CHR(10)&          "Skipped files:    " & skip _
	&CHR(10)&CHR(10)&  "(Results are listed in " &tempfolder&")" _
	&CHR(10)&CHR(10)&  "DON'T FORGET TO RESTORE YOUR DEFAULT PRINTER!!"
'
	x=msgbox(synopsis,0,"Conversion Completed")
end if
'
' Remove mapped drive letter and close out
'
if ptype =1 then objNetwork.RemoveNetworkDrive drvLtr, true
'
wscript.quit
'END OF SCRIPT
'
'======================================
'======================================
'
SUB MAKEPDF(fldr, ftype, tempfolder, myfolder, count, skip, batchsize)
'
ON ERROR RESUME NEXT
'   Avoid "permission denied" and other file system errors
'   including corrupt (0 byte) files, etc.
'
For each item in oshell.NameSpace(fldr).Items
'
   if item.IsFolder AND lcase(fso.GetExtensionName(item)) <> "zip"  Then
        CALL MAKEPDF(item.path, ftype, tempfolder, myfolder, count, skip, batchsize)
   '
   elseif lcase(fso.GetExtensionName(item)) = lcase(ftype) then
	targetfolder = left(item.path, InStrRev(item.path, "\"))
	newfile=fso.GetBaseName(item) &".pdf"
	result = left(newfile, InStrRev(newfile, ".")-1) & tag & ".pdf"
	'
	if fso.FileExists(targetfolder&result) then
		emsg = "PDF EXISTS:   " 
	else
		'
                item.InvokeVerbEx ( "Print" )         'create PDF file
		'
  	        'Rename new file to reduce chances of naming conflicts
		n = 0   'Counter to avoid infinite loop if errors occur
	 	Do until fso.FileExists(tempfolder&newfile)
			n = n+1	        
	       		WScript.Sleep(100) 'allow for network latency
			if n > 80 then exit do  '(80x100 = 8 seconds)
	        loop
		'
	        if fso.FileExists(tempfolder&newfile) then
		   fso.movefile tempfolder&newfile, tempfolder&result
		   WScript.Sleep(100) 'allow for network latency
		end if
		'
	end if
	'
	' Move new files to original folder (don't overwrite existing files)
	' Files in read-only folders will be skipped
	'
	ON ERROR RESUME NEXT
  	fso.CopyFile tempfolder&result, targetfolder
	if err.number=0 then
		count=count+1
		set objFile=fso.OpenTextFile(logfile,8,True)
		objFile.Write vbCrLf & "Done          " & item.path
		objFile.Close
	else
		skip=skip+1
		if len(emsg) < 2 then emsg= "ERROR: >>>>>  "
		'Add skipped file names to log file
		set objFile=fso.OpenTextFile(logfile,8,True)
		objFile.Write vbCrLf & emsg & item.path
		objFile.Close
		emsg=""
	end if
	ON ERROR goto 0
	'
	if fso.FileExists(tempfolder&result) then _
		fso.DeleteFile(tempfolder&result)
	'
	' Pause after each batch of files (variable 'batchsize') to allow
	' Acrobat Distiller processes to catch up (avoids PC memory saturation)
	'
	if count mod batchsize = 0 AND count > 1 then _       
		WScript.Sleep(intermission)    'batch size reached - pause
   end if
'
   CALL CHECKTEMP(tempfolder)
'
Next
'
END SUB
'
'======================================
'======================================
'
SUB CHECKTEMP(tempfolder)
'
' Confirm that tempfolder exists...
'
' The folder is not automatically created because this subroutine also
' provides an way to abort the script by renaming or deleting the 
' temporary folder. {Ctrl-C} and {Break} don't interrupt VBscript.
'
   if fso.FolderExists(tempfolder) then
	' [Continue executing script]
   else
	synopsis="Folder "&CHR(10) & tempfolder & CHR(10)& _
	 " was not found! Please create it."
'
	x=msgbox(synopsis,0,"Please Create Folder for Working Files")
'
	wscript.quit
   end if
'
END SUB
'======================================
'
SUB CHECKPRINTER(tempfolder)
'
' Confirm that 'ADOBE PDF' is the default printer...
'
  set objFile=fso.OpenTextFile(tempfolder&"TestFile.txt",2,True) 
  objFile.Write "Checking Default printer" &vbCrLf
  objFile.close
  objShell.Run("Notepad.exe /p "&tempfolder&"TestFile.txt") ,0 ,True
  WScript.Sleep(200)
'
  if fso.FileExists(tempfolder&"TestFile.pdf") then
      fso.DeleteFile(tempfolder&"TestFile.*")
  else
      synopsis="Please set the default printer to ADOBE PDF."
      x=msgbox(synopsis,0,"Check Printer Settings")
      fso.DeleteFile(tempfolder&"TestFile.*")
      wscript.quit
'
   end if
'
END SUB
'
'===========================================================================
'
'DEFINTIONS
'
' count: the number of files assessed for conversion
' drvLtr: the drive letter containing the target folder
' emsg: error flag in log file for files that weren't converted
' fldr: a variable representing the folder object (for targetfolder)
' fso: file system object
' ftype: the file type to be converted
' intermission: the length time the script pauses (at batchsize)
' item: the individual folder or file being assessed (dynamic)
' mapdrv: the mapped drive letter representing the UNC path (origin)
' batchsize: the number of files converted before the script pauses
' myfolder: the path of the target folder (objFolder)
' n: counter to escape from do loops that may be "stuck"
' newfile: the name of the PDF file created by the ADOBE PDF printer
' objFile: windows file object
' objFolder: windows folder object (from Browse dialog)
' objNetwork: network object
' objshell: Windows shell
' oshell: windows shell
' origin: the UNC path to be mapped to a drive letter
' ptype: the path type (used to configure script execution)
' result: the final name of the new PDF file to the original folder
' skip: counter for files skipped due to duplicate filenames
' sPrompt: the prompt text for the Browse Folders dialog box
' synopsis: prompt text for message boxes
' tag: characters added to the base file name to make it unique
' targetlist: list of files included in the target folder
' targetfolder: path of the folder containing original unconverted files
' tempfolder: path of the folder used for temporary working files
' UserProfilePath: path to the the user's Windows profile
' x: dummy variable used to display message boxes
'===========================================================================
'
'----------------------------------------
' Rod Wilkinson, CIO/G-6, Dec 2014
' Femme Comp, Inc. (FCI)
'----------------------------------------
