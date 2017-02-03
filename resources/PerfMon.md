# PerfMon Stuff
## Discover The Counters
```
Get-Counter -ListSet * |
Select-Object -ExpandProperty CounterSetName
```
## Processor
```
Get-Counter -ListSet * |
Where-Object { $_.CounterSetName -eq 'Processor' } |
Select-Object -ExpandProperty Paths
```
## Process
```
Get-Counter -ListSet * |
Where-Object { $_.CounterSetName -eq 'Process' } |
Select-Object -ExpandProperty Paths
```
## Disk Intensive Processes
```
Get-Counter "\Process(*)\IO Write Bytes/sec" |
Select-Object -ExpandProperty CounterSamples |
Sort-Object -Property CookedValue -Descending
```
