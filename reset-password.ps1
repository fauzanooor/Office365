# Reset password
Set-MsolUserPassword -UserPrincipalName "example@example.com" -NewPassword "letmein"


# Reset password - bulk
Import-Csv `..\csv\pss.csv`|%{Set-MsolUserPassword -userPrincipalName $_.upn -NewPassword $_.newpassword -ForceChangePassword $true}