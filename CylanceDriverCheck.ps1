if ( $x = Get-EventLog -LogName Application -EntryType Error -Source CylanceSvc | Where-Object {$_.EventID -eq 16} ) {
Write-Output $x
exit 1
} else {
Write-Output "No Cylance Driver error found!"
exit 0
}