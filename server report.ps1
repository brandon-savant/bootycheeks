# get computer name
$info = Get-ComputerInfo | Select-Object CsDNSHostName, OsVersion
$info


