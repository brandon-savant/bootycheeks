# get computer name, os version
$ComputerInfo = Get-ComputerInfo
#$ComputerInfo

# get disk info 
$DicksInfo = Get-Disk
#$DicksInfo.count 

$obj = [PSCustomObject]@{
    ComputerName = $ComputerInfo.CsDNSHostName
    OSVersion = $ComputerInfo.OsVersion
    LogicalDicks = $DicksInfo.count
}
Write-Output $obj

