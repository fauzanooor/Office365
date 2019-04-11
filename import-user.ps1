# Import User
Import-CSV -Path '.\csv\testing.csv' | ForEach-Object { New-MsolUser -UserPrincipalName $_.UserPrincipalName -FirstName $_.FirstName -LastName $_.LastName  -DisplayName "$($_.FirstName) $($_.LastName)" -Password $_.Password -UsageLocation 'ID' }

# Import user with license
Import-CSV -Path '.\csv\testing.csv' | ForEach-Object { New-MsolUser -UserPrincipalName $_.UserPrincipalName -FirstName $_.FirstName -LastName $_.LastName  -DisplayName "$($_.FirstName) $($_.LastName)" -Password $_.Password -UsageLocation 'ID' -LicenseAssignment $_.License }