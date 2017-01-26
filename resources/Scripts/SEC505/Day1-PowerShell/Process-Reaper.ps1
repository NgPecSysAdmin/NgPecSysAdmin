# In a GPO, make sure to use the PowerShell Scripts tab!
# Don't add this to the default Scripts tab on the left!
#
# This is just an example of what could be done with a 
# startup script or script pushed out as an immediate
# task.  A real script would more carefully define the
# processes to terminate, including information like
# path or hash value, and include logging. 

# To test this code, launch Microsoft Paint first.


$ProcessesToStop = @("mspaint","baddierootkit","hacktool") 

$ProcessesToStop | ForEach { Stop-Process -Name $_ -Force -ErrorAction SilentlyContinue } 



