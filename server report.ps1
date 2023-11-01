# get computer name, os version
$ComputerInfo = Get-ComputerInfo
#$ComputerInfo

# get disk info 
$DicksInfo = Get-Disk
#$DicksInfo.count 

# get free system space
$FreeSpace = Get-PSDrive | Where-Object {$_.Name -eq 'C'}

$obj = [PSCustomObject]@{
    ComputerName = $ComputerInfo.CsDNSHostName
    OSVersion = $ComputerInfo.OsVersion
    LogicalDicks = $DicksInfo.count
    FreeSpace_GB = [System.Math]::Round(($FreeSpace.Free / 1gb),0)

}
Write-Output $obj

