# Check User list
Get-MsolUser -All

# check user count
Get-MsolUser -All | measure


# Reset password
Set-MsolUserPassword -UserPrincipalName "example@example.com" -NewPassword "letmein"


# Reset password - bulk
Import-Csv d:\pss.csv|%{Set-MsolUserPassword �userPrincipalName $_.upn -NewPassword $_.newpassword -ForceChangePassword $true}

# Check available licenses
Get-MsolAccountSku


# Import User
Import-CSV -Path '.\csv\testing.csv' | ForEach-Object { New-MsolUser -UserPrincipalName $_.UserPrincipalName -FirstName $_.FirstName -LastName $_.LastName  -DisplayName "$($_.FirstName) $($_.LastName)" �Password $_.Password �UsageLocation �ID� }


# Import user with license
Import-CSV -Path '.\csv\testing.csv' | ForEach-Object { New-MsolUser -UserPrincipalName $_.UserPrincipalName -FirstName $_.FirstName -LastName $_.LastName  -DisplayName "$($_.FirstName) $($_.LastName)" �Password $_.Password �UsageLocation �ID� -LicenseAssignment $_.License }


# Assign License to All unlicense users
Get-MsolUser -All -UnlicensedUsersOnly | Set-MsolUserLicense -AddLicenses "<AccountSKUID>"


# Assign License to specify unlicense user
$AllUn = Get-MsolUser -All -UnlicensedUsersOnly; $AllUn | foreach {Set-MsolUserLicense -AddLicenses "<AccountSKUID>"}


# Remove all unlicense users
Get-MsolUser -all | Where-Object {$_.isLicensed -ne "true"} | Remove-MsolUser -Force