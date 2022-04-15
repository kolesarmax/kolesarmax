Remove-Item C:\Enrollment\pwresetenroll.csv
Import-Module ActiveDirectory
$Date = (Get-Date).AddDays(-365)
get-aduser -searchbase “OU=*,OU=*,OU=*,OU=*,DC=domain, DC=net” -filter * | Where-Object {($_.DistinguishedName -like "*OU=OUName*") -OR ($_.DistinguishedName -like "*OU=OUName2*") -OR ($_.DistinguishedName -like "*OU=OUName3*") -OR ($_.DistinguishedName -like "*OU=OUName4*")} | Where { $_.Enabled -eq $True} | select samAccountName | Export-csv -Path C:\Enrollment\pwResetEnroll.csv -NoTypeInformation -Append