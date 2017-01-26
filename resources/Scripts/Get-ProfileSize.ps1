# Get the cumulative size of all user profiles on the system in GB

[math]::Round(
  (
    (
      (
        Get-ChildItem -Path C:\Users |
        ForEach-Object {
          Write-Verbose "Processing $($_.FullName)" ;
          Get-ChildItem -Path $_.FullName -Recurse -File -ErrorAction SilentlyContinue
        } |
        Measure-Object -Property Length -Sum
      ).Sum
    )/1GB
  )
)
