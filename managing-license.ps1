# Assign License to All unlicense users
Get-MsolUser -All -UnlicensedUsersOnly | Set-MsolUserLicense -AddLicenses "<AccountSKUID>"

# Assign License to specify unlicense user
$AllUn = Get-MsolUser -All -UnlicensedUsersOnly; $AllUn | foreach {Set-MsolUserLicense -AddLicenses "<AccountSKUID>"}

# Remove all unlicense users
Get-MsolUser -all | Where-Object {$_.isLicensed -ne "true"} | Remove-MsolUser -Force