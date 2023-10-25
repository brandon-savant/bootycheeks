# get computer name, os version
$ComputerInfo = Get-ComputerInfo | Select-Object CsDNSHostName, OsVersion
#$ComputerInfo

# get disk info 
$DicksInfo = Get-Disk
#$DicksInfo.count 

$obj = [PSCustomObject]@{
    LogicalDicks = $DicksInfo.count
}
Write-Output $obj
